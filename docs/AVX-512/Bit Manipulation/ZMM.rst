AVX-512-Bit Manipulation-ZMM
============================

_mm512_lzcnt_epi32
------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512i _mm512_lzcnt_epi32(__m512i a);

.. admonition:: Intel Description

    Counts the number of leading zero bits in each packed 32-bit integer in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	tmp := 31
        	dst[i+31:i] := 0
        	DO WHILE (tmp >= 0 AND a[i+tmp] == 0)
        		tmp := tmp - 1
        		dst[i+31:i] := dst[i+31:i] + 1
        	OD
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_lzcnt_epi32
-----------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_lzcnt_epi32(__m512i src, __mmask16 k,
                                    __m512i a)

.. admonition:: Intel Description

    Counts the number of leading zero bits in each packed 32-bit integer in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp := 31
        		dst[i+31:i] := 0
        		DO WHILE (tmp >= 0 AND a[i+tmp] == 0)
        			tmp := tmp - 1
        			dst[i+31:i] := dst[i+31:i] + 1
        		OD
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_lzcnt_epi32
------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_lzcnt_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Counts the number of leading zero bits in each packed 32-bit integer in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp := 31
        		dst[i+31:i] := 0
        		DO WHILE (tmp >= 0 AND a[i+tmp] == 0)
        			tmp := tmp - 1
        			dst[i+31:i] := dst[i+31:i] + 1
        		OD
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_lzcnt_epi64
------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m512i _mm512_lzcnt_epi64(__m512i a);

.. admonition:: Intel Description

    Counts the number of leading zero bits in each packed 64-bit integer in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	tmp := 63
        	dst[i+63:i] := 0
        	DO WHILE (tmp >= 0 AND a[i+tmp] == 0)
        		tmp := tmp - 1
        		dst[i+63:i] := dst[i+63:i] + 1
        	OD
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_lzcnt_epi64
-----------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_mask_lzcnt_epi64(__m512i src, __mmask8 k,
                                    __m512i a)

.. admonition:: Intel Description

    Counts the number of leading zero bits in each packed 64-bit integer in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp := 63
        		dst[i+63:i] := 0
        		DO WHILE (tmp >= 0 AND a[i+tmp] == 0)
        			tmp := tmp - 1
        			dst[i+63:i] := dst[i+63:i] + 1
        		OD
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_lzcnt_epi64
------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_maskz_lzcnt_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Counts the number of leading zero bits in each packed 64-bit integer in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp := 63
        		dst[i+63:i] := 0
        		DO WHILE (tmp >= 0 AND a[i+tmp] == 0)
        			tmp := tmp - 1
        			dst[i+63:i] := dst[i+63:i] + 1
        		OD
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_popcnt_epi32
-------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512i _mm512_popcnt_epi32(__m512i a);

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 32-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := POPCNT(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_popcnt_epi32
------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_popcnt_epi32(__m512i src, __mmask16 k,
                                     __m512i a)

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 32-bit integers in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := POPCNT(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_popcnt_epi32
-------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_popcnt_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 32-bit integers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := POPCNT(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_popcnt_epi64
-------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m512i _mm512_popcnt_epi64(__m512i a);

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 64-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := POPCNT(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_popcnt_epi64
------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_mask_popcnt_epi64(__m512i src, __mmask8 k,
                                     __m512i a)

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 64-bit integers in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := POPCNT(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_popcnt_epi64
-------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_maskz_popcnt_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 64-bit integers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := POPCNT(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_bitshuffle_epi64_mask
---------------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask64
:Param Types:
    __mmask64 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __mmask64 _mm512_mask_bitshuffle_epi64_mask(__mmask64 k,
                                                __m512i b,
                                                __m512i c)

.. admonition:: Intel Description

    Gather 64 bits from "b" using selection bits in "c". For each 64-bit element in "b", gather 8 bits from the 64-bit element in "b" at 8 bit position controlled by the 8 corresponding 8-bit elements of "c", and store the result in the corresponding 8-bit element of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7 //Qword
        	FOR j := 0 to 7 // Byte
        		IF k[i*8+j]
        			m := c.qword[i].byte[j] & 0x3F
        			dst[i*8+j] := b.qword[i].bit[m]
        		ELSE
        			dst[i*8+j] := 0
        		FI
        	ENDFOR
        ENDFOR
        dst[MAX:64] := 0
        	

_mm512_bitshuffle_epi64_mask
----------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask64
:Param Types:
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 b, 
    UI64 c

.. code-block:: C

    __mmask64 _mm512_bitshuffle_epi64_mask(__m512i b,
                                           __m512i c)

.. admonition:: Intel Description

    Gather 64 bits from "b" using selection bits in "c". For each 64-bit element in "b", gather 8 bits from the 64-bit element in "b" at 8 bit position controlled by the 8 corresponding 8-bit elements of "c", and store the result in the corresponding 8-bit element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7 //Qword
        	FOR j := 0 to 7 // Byte
        		m := c.qword[i].byte[j] & 0x3F
        		dst[i*8+j] := b.qword[i].bit[m]
        	ENDFOR
        ENDFOR
        dst[MAX:64] := 0
        	

_mm512_popcnt_epi16
-------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m512i _mm512_popcnt_epi16(__m512i a);

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 16-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := POPCNT(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_popcnt_epi16
------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_mask_popcnt_epi16(__m512i src, __mmask32 k,
                                     __m512i a)

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 16-bit integers in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := POPCNT(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_popcnt_epi16
-------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_maskz_popcnt_epi16(__mmask32 k, __m512i a);

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 16-bit integers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := POPCNT(a[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_popcnt_epi8
------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m512i _mm512_popcnt_epi8(__m512i a);

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 8-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := POPCNT(a[i+7:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_popcnt_epi8
-----------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_mask_popcnt_epi8(__m512i src, __mmask64 k,
                                    __m512i a)

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 8-bit integers in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := POPCNT(a[i+7:i])
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_popcnt_epi8
------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_maskz_popcnt_epi8(__mmask64 k, __m512i a);

.. admonition:: Intel Description

    Count the number of logical 1 bits in packed 8-bit integers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE POPCNT(a) {
        	count := 0
        	DO WHILE a > 0
        		count += a[0]
        		a >>= 1
        	OD
        	RETURN count
        }
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := POPCNT(a[i+7:i])
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_multishift_epi64_epi8
----------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_multishift_epi64_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    For each 64-bit element in "b", select 8 unaligned bytes using a byte-granular shift control within the corresponding 64-bit element of "a", and store the 8 assembled bytes to the corresponding 64-bit element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	q := i * 64
        	FOR j := 0 to 7
        		tmp8 := 0
        		ctrl := a[q+j*8+7:q+j*8] & 63
        		FOR l := 0 to 7
        			tmp8[l] := b[q+((ctrl+l) & 63)]
        		ENDFOR
        		dst[q+j*8+7:q+j*8] := tmp8[7:0]
        	ENDFOR
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_multishift_epi64_epi8
---------------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_mask_multishift_epi64_epi8(__m512i src,
                                              __mmask64 k,
                                              __m512i a,
                                              __m512i b)

.. admonition:: Intel Description

    For each 64-bit element in "b", select 8 unaligned bytes using a byte-granular shift control within the corresponding 64-bit element of "a", and store the 8 assembled bytes to the corresponding 64-bit element of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	q := i * 64
        	FOR j := 0 to 7
        		tmp8 := 0
        		ctrl := a[q+j*8+7:q+j*8] & 63
        		FOR l := 0 to 7
        			tmp8[l] := b[q+((ctrl+l) & 63)]
        		ENDFOR
        		IF k[i*8+j]
        			dst[q+j*8+7:q+j*8] := tmp8[7:0]
        		ELSE
        			dst[q+j*8+7:q+j*8] := src[q+j*8+7:q+j*8]
        		FI
        	ENDFOR
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_multishift_epi64_epi8
----------------------------------
:Tech: AVX-512
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: AVX-512-Bit Manipulation-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_maskz_multishift_epi64_epi8(__mmask64 k,
                                               __m512i a,
                                               __m512i b)

.. admonition:: Intel Description

    For each 64-bit element in "b", select 8 unaligned bytes using a byte-granular shift control within the corresponding 64-bit element of "a", and store the 8 assembled bytes to the corresponding 64-bit element of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	q := i * 64
        	FOR j := 0 to 7
        		tmp8 := 0
        		ctrl := a[q+j*8+7:q+j*8] & 63
        		FOR l := 0 to 7
        			tmp8[l] := b[q+((ctrl+l) & 63)]
        		ENDFOR
        		IF k[i*8+j]
        			dst[q+j*8+7:q+j*8] := tmp8[7:0]
        		ELSE
        			dst[q+j*8+7:q+j*8] := 0
        		FI
        	ENDFOR
        ENDFOR
        dst[MAX:512] := 0
        	

