SSE_ALL-String Compare-XMM
==========================

_mm_cmpistrm
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    M128 a, 
    M128 b, 
    IMM imm8

.. code-block:: C

    __m128i _mm_cmpistrm(__m128i a, __m128i b, const int imm8);

.. admonition:: Intel Description

    Compare packed strings with implicit lengths in "a" and "b" using the control in "imm8", and store the generated mask in "dst".
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF a[m+size-1:m] == 0
        			aInvalid := 1
        		FI
        		IF b[n+size-1:n] == 0
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        bInvalid := 0
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF b[n+size-1:n] == 0
        				bInvalid := 1
        			FI
        			IF bInvalid // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        IF imm8[6] // byte / word mask
        	FOR i := 0 to UpperBound
        		j := i*size
        		IF IntRes2[i]
        			dst[j+size-1:j] := (imm8[0] ? 0xFF : 0xFFFF)
        		ELSE
        			dst[j+size-1:j] := 0
        		FI
        	ENDFOR
        ELSE // bit mask
        	dst[UpperBound:0] := IntRes2[UpperBound:0]
        	dst[127:UpperBound+1] := 0
        FI
        	

_mm_cmpistri
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    M128 a, 
    M128 b, 
    IMM imm8

.. code-block:: C

    int _mm_cmpistri(__m128i a, __m128i b, const int imm8);

.. admonition:: Intel Description

    Compare packed strings with implicit lengths in "a" and "b" using the control in "imm8", and store the generated index in "dst".
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF a[m+size-1:m] == 0
        			aInvalid := 1
        		FI
        		IF b[n+size-1:n] == 0
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        bInvalid := 0
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF b[n+size-1:n] == 0
        				bInvalid := 1
        			FI
        			IF bInvalid // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        IF imm8[6] // most significant bit
        	tmp := UpperBound
        	dst := tmp
        	DO WHILE ((tmp >= 0) AND a[tmp] == 0)
        		tmp := tmp - 1
        		dst := tmp
        	OD
        ELSE // least significant bit
        	tmp := 0
        	dst := tmp
        	DO WHILE ((tmp <= UpperBound) AND a[tmp] == 0)
        		tmp := tmp + 1
        		dst := tmp
        	OD
        FI
        	

_mm_cmpistrz
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    M128 a, 
    M128 b, 
    IMM imm8

.. code-block:: C

    int _mm_cmpistrz(__m128i a, __m128i b, const int imm8);

.. admonition:: Intel Description

    Compare packed strings with implicit lengths in "a" and "b" using the control in "imm8", and returns 1 if any character in "b" was null, and 0 otherwise.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        bInvalid := 0
        FOR j := 0 to UpperBound
        	n := j*size
        	IF b[n+size-1:n] == 0
        		bInvalid := 1
        	FI
        ENDFOR
        dst := bInvalid
        	

_mm_cmpistrc
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    M128 a, 
    M128 b, 
    IMM imm8

.. code-block:: C

    int _mm_cmpistrc(__m128i a, __m128i b, const int imm8);

.. admonition:: Intel Description

    Compare packed strings with implicit lengths in "a" and "b" using the control in "imm8", and returns 1 if the resulting mask was non-zero, and 0 otherwise.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF a[m+size-1:m] == 0
        			aInvalid := 1
        		FI
        		IF b[n+size-1:n] == 0
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        bInvalid := 0
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF b[n+size-1:n] == 0
        				bInvalid := 1
        			FI
        			IF bInvalid // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        dst := (IntRes2 != 0)
        	

_mm_cmpistrs
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    M128 a, 
    M128 b, 
    IMM imm8

.. code-block:: C

    int _mm_cmpistrs(__m128i a, __m128i b, const int imm8);

.. admonition:: Intel Description

    Compare packed strings with implicit lengths in "a" and "b" using the control in "imm8", and returns 1 if any character in "a" was null, and 0 otherwise.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        aInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	IF a[m+size-1:m] == 0
        		aInvalid := 1
        	FI
        ENDFOR
        dst := aInvalid
        	

_mm_cmpistro
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    M128 a, 
    M128 b, 
    IMM imm8

.. code-block:: C

    int _mm_cmpistro(__m128i a, __m128i b, const int imm8);

.. admonition:: Intel Description

    Compare packed strings with implicit lengths in "a" and "b" using the control in "imm8", and returns bit 0 of the resulting bit mask.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF a[m+size-1:m] == 0
        			aInvalid := 1
        		FI
        		IF b[n+size-1:n] == 0
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        bInvalid := 0
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF b[n+size-1:n] == 0
        				bInvalid := 1
        			FI
        			IF bInvalid // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        dst := IntRes2[0]
        	

_mm_cmpistra
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    M128 a, 
    M128 b, 
    IMM imm8

.. code-block:: C

    int _mm_cmpistra(__m128i a, __m128i b, const int imm8);

.. admonition:: Intel Description

    Compare packed strings with implicit lengths in "a" and "b" using the control in "imm8", and returns 1 if "b" did not contain a null character and the resulting mask was zero, and 0 otherwise.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF a[m+size-1:m] == 0
        			aInvalid := 1
        		FI
        		IF b[n+size-1:n] == 0
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        bInvalid := 0
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF b[n+size-1:n] == 0
        				bInvalid := 1
        			FI
        			IF bInvalid // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        dst := (IntRes2 == 0) AND bInvalid
        	

_mm_cmpestrm
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    int la, 
    __m128i b, 
    int lb, 
    const int imm8
:Param ETypes:
    M128 a, 
    UI32 la, 
    M128 b, 
    UI32 lb, 
    IMM imm8

.. code-block:: C

    __m128i _mm_cmpestrm(__m128i a, int la, __m128i b, int lb,
                         const int imm8)

.. admonition:: Intel Description

    Compare packed strings in "a" and "b" with lengths "la" and "lb" using the control in "imm8", and store the generated mask in "dst".
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF i == la
        			aInvalid := 1
        		FI
        		IF j == lb
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF i >= lb // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        IF imm8[6] // byte / word mask
        	FOR i := 0 to UpperBound
        		j := i*size
        		IF IntRes2[i]
        			dst[j+size-1:j] := (imm8[0] ? 0xFF : 0xFFFF)
        		ELSE
        			dst[j+size-1:j] := 0
        		FI
        	ENDFOR
        ELSE // bit mask
        	dst[UpperBound:0] := IntRes2[UpperBound:0]
        	dst[127:UpperBound+1] := 0
        FI
        	

_mm_cmpestri
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    int la, 
    __m128i b, 
    int lb, 
    const int imm8
:Param ETypes:
    M128 a, 
    UI32 la, 
    M128 b, 
    UI32 lb, 
    IMM imm8

.. code-block:: C

    int _mm_cmpestri(__m128i a, int la, __m128i b, int lb,
                     const int imm8)

.. admonition:: Intel Description

    Compare packed strings in "a" and "b" with lengths "la" and "lb" using the control in "imm8", and store the generated index in "dst".
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF i == la
        			aInvalid := 1
        		FI
        		IF j == lb
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF i >= lb // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        IF imm8[6] // most significant bit
        	tmp := UpperBound
        	dst := tmp
        	DO WHILE ((tmp >= 0) AND a[tmp] == 0)
        		tmp := tmp - 1
        		dst := tmp
        	OD
        ELSE // least significant bit
        	tmp := 0
        	dst := tmp
        	DO WHILE ((tmp <= UpperBound) AND a[tmp] == 0)
        		tmp := tmp + 1
        		dst := tmp
        	OD
        FI
        	

_mm_cmpestrz
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    int la, 
    __m128i b, 
    int lb, 
    const int imm8
:Param ETypes:
    M128 a, 
    UI32 la, 
    M128 b, 
    UI32 lb, 
    IMM imm8

.. code-block:: C

    int _mm_cmpestrz(__m128i a, int la, __m128i b, int lb,
                     const int imm8)

.. admonition:: Intel Description

    Compare packed strings in "a" and "b" with lengths "la" and "lb" using the control in "imm8", and returns 1 if any character in "b" was null, and 0 otherwise.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        dst := (lb <= UpperBound)
        	

_mm_cmpestrc
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    int la, 
    __m128i b, 
    int lb, 
    const int imm8
:Param ETypes:
    M128 a, 
    UI32 la, 
    M128 b, 
    UI32 lb, 
    IMM imm8

.. code-block:: C

    int _mm_cmpestrc(__m128i a, int la, __m128i b, int lb,
                     const int imm8)

.. admonition:: Intel Description

    Compare packed strings in "a" and "b" with lengths "la" and "lb" using the control in "imm8", and returns 1 if the resulting mask was non-zero, and 0 otherwise.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF i == la
        			aInvalid := 1
        		FI
        		IF j == lb
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF i >= lb // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        dst := (IntRes2 != 0)
        	

_mm_cmpestrs
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    int la, 
    __m128i b, 
    int lb, 
    const int imm8
:Param ETypes:
    M128 a, 
    UI32 la, 
    M128 b, 
    UI32 lb, 
    IMM imm8

.. code-block:: C

    int _mm_cmpestrs(__m128i a, int la, __m128i b, int lb,
                     const int imm8)

.. admonition:: Intel Description

    Compare packed strings in "a" and "b" with lengths "la" and "lb" using the control in "imm8", and returns 1 if any character in "a" was null, and 0 otherwise.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        dst := (la <= UpperBound)
        	

_mm_cmpestro
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    int la, 
    __m128i b, 
    int lb, 
    const int imm8
:Param ETypes:
    M128 a, 
    UI32 la, 
    M128 b, 
    UI32 lb, 
    IMM imm8

.. code-block:: C

    int _mm_cmpestro(__m128i a, int la, __m128i b, int lb,
                     const int imm8)

.. admonition:: Intel Description

    Compare packed strings in "a" and "b" with lengths "la" and "lb" using the control in "imm8", and returns bit 0 of the resulting bit mask.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF i == la
        			aInvalid := 1
        		FI
        		IF j == lb
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF i >= lb // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        dst := IntRes2[0]
        	

_mm_cmpestra
------------
:Tech: SSE_ALL
:Category: String Compare
:Header: nmmintrin.h
:Searchable: SSE_ALL-String Compare-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    int la, 
    __m128i b, 
    int lb, 
    const int imm8
:Param ETypes:
    M128 a, 
    UI32 la, 
    M128 b, 
    UI32 lb, 
    IMM imm8

.. code-block:: C

    int _mm_cmpestra(__m128i a, int la, __m128i b, int lb,
                     const int imm8)

.. admonition:: Intel Description

    Compare packed strings in "a" and "b" with lengths "la" and "lb" using the control in "imm8", and returns 1 if "b" did not contain a null character and the resulting mask was zero, and 0 otherwise.
    	[strcmp_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := (imm8[0] ? 16 : 8) // 8 or 16-bit characters
        UpperBound := (128 / size) - 1
        BoolRes := 0
        // compare all characters
        aInvalid := 0
        bInvalid := 0
        FOR i := 0 to UpperBound
        	m := i*size
        	FOR j := 0 to UpperBound
        		n := j*size
        		BoolRes.word[i].bit[j] := (a[m+size-1:m] == b[n+size-1:n]) ? 1 : 0
        		
        		// invalidate characters after EOS
        		IF i == la
        			aInvalid := 1
        		FI
        		IF j == lb
        			bInvalid := 1
        		FI
        		
        		// override comparisons for invalid characters
        		CASE (imm8[3:2]) OF
        		0:  // equal any
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		1:  // ranges
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			FI
        		2:  // equal each
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		3:  // equal ordered
        			IF (!aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 0
        			ELSE IF (aInvalid && !bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			ELSE IF (aInvalid && bInvalid)
        				BoolRes.word[i].bit[j] := 1
        			FI
        		ESAC
        	ENDFOR
        ENDFOR
        // aggregate results
        CASE (imm8[3:2]) OF
        0:  // equal any
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR BoolRes.word[i].bit[j]
        		ENDFOR
        	ENDFOR
        1:  // ranges
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		FOR j := 0 to UpperBound
        			IntRes1[i] := IntRes1[i] OR (BoolRes.word[i].bit[j] AND BoolRes.word[i].bit[j+1])
        			j += 2
        		ENDFOR
        	ENDFOR
        2:  // equal each
        	IntRes1 := 0
        	FOR i := 0 to UpperBound
        		IntRes1[i] := BoolRes.word[i].bit[i]
        	ENDFOR
        3:  // equal ordered
        	IntRes1 := (imm8[0] ? 0xFF : 0xFFFF)
        	FOR i := 0 to UpperBound
        		k := i
        		FOR j := 0 to UpperBound-i
        			IntRes1[i] := IntRes1[i] AND BoolRes.word[k].bit[j]
        			k := k+1
        		ENDFOR
        	ENDFOR
        ESAC
        // optionally negate results
        FOR i := 0 to UpperBound
        	IF imm8[4]
        		IF imm8[5] // only negate valid
        			IF i >= lb // invalid, don't negate
        				IntRes2[i] := IntRes1[i]
        			ELSE // valid, negate
        				IntRes2[i] := -1 XOR IntRes1[i]
        			FI
        		ELSE // negate all
        			IntRes2[i] := -1 XOR IntRes1[i]
        		FI
        	ELSE // don't negate
        		IntRes2[i] := IntRes1[i]
        	FI
        ENDFOR
        // output
        dst := (IntRes2 == 0) AND (lb > UpperBound)
        	

