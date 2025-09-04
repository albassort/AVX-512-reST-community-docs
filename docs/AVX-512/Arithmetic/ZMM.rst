AVX-512-Arithmetic-ZMM
======================

_mm512_abs_epi8
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m512i _mm512_abs_epi8(__m512i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 8-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := ABS(a[i+7:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_abs_epi8
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    SI8 a

.. code-block:: C

    __m512i _mm512_mask_abs_epi8(__m512i src, __mmask64 k,
                                 __m512i a)

.. admonition:: Intel Description

    Compute the absolute value of packed signed 8-bit integers in "a", and store the unsigned results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := ABS(a[i+7:i])
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_abs_epi8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI8 a

.. code-block:: C

    __m512i _mm512_maskz_abs_epi8(__mmask64 k, __m512i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 8-bit integers in "a", and store the unsigned results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := ABS(a[i+7:i])
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_abs_epi16
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m512i _mm512_abs_epi16(__m512i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 16-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ABS(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_abs_epi16
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a

.. code-block:: C

    __m512i _mm512_mask_abs_epi16(__m512i src, __mmask32 k,
                                  __m512i a)

.. admonition:: Intel Description

    Compute the absolute value of packed signed 16-bit integers in "a", and store the unsigned results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ABS(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_abs_epi16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI16 a

.. code-block:: C

    __m512i _mm512_maskz_abs_epi16(__mmask32 k, __m512i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 16-bit integers in "a", and store the unsigned results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ABS(a[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_epi8
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_add_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Add packed 8-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := a[i+7:i] + b[i+7:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_epi8
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_mask_add_epi8(__m512i src, __mmask64 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Add packed 8-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[i+7:i] + b[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_epi8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_maskz_add_epi8(__mmask64 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Add packed 8-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[i+7:i] + b[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_adds_epi8
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_adds_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Add packed signed 8-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := Saturate8( a[i+7:i] + b[i+7:i] )
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_adds_epi8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_mask_adds_epi8(__m512i src, __mmask64 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Add packed signed 8-bit integers in "a" and "b" using saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := Saturate8( a[i+7:i] + b[i+7:i] )
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_adds_epi8
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_maskz_adds_epi8(__mmask64 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Add packed signed 8-bit integers in "a" and "b" using saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := Saturate8( a[i+7:i] + b[i+7:i] )
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_adds_epi16
-----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_adds_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Add packed signed 16-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := Saturate16( a[i+15:i] + b[i+15:i] )
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_adds_epi16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_adds_epi16(__m512i src, __mmask32 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Add packed signed 16-bit integers in "a" and "b" using saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := Saturate16( a[i+15:i] + b[i+15:i] )
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_adds_epi16
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_adds_epi16(__mmask32 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Add packed signed 16-bit integers in "a" and "b" using saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := Saturate16( a[i+15:i] + b[i+15:i] )
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_adds_epu8
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_adds_epu8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Add packed unsigned 8-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := SaturateU8( a[i+7:i] + b[i+7:i] )
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_adds_epu8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_mask_adds_epu8(__m512i src, __mmask64 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Add packed unsigned 8-bit integers in "a" and "b" using saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := SaturateU8( a[i+7:i] + b[i+7:i] )
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_adds_epu8
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_maskz_adds_epu8(__mmask64 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Add packed unsigned 8-bit integers in "a" and "b" using saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := SaturateU8( a[i+7:i] + b[i+7:i] )
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_adds_epu16
-----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_adds_epu16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Add packed unsigned 16-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := SaturateU16( a[i+15:i] + b[i+15:i] )
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_adds_epu16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_adds_epu16(__m512i src, __mmask32 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Add packed unsigned 16-bit integers in "a" and "b" using saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := SaturateU16( a[i+15:i] + b[i+15:i] )
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_adds_epu16
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_adds_epu16(__mmask32 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Add packed unsigned 16-bit integers in "a" and "b" using saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := SaturateU16( a[i+15:i] + b[i+15:i] )
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_epi16
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_add_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Add packed 16-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := a[i+15:i] + b[i+15:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_epi16
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_add_epi16(__m512i src, __mmask32 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Add packed 16-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[i+15:i] + b[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_epi16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_add_epi16(__mmask32 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Add packed 16-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[i+15:i] + b[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_avg_epu8
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_avg_epu8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Average packed unsigned 8-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := (a[i+7:i] + b[i+7:i] + 1) >> 1
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_avg_epu8
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_mask_avg_epu8(__m512i src, __mmask64 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Average packed unsigned 8-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := (a[i+7:i] + b[i+7:i] + 1) >> 1
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_avg_epu8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_maskz_avg_epu8(__mmask64 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Average packed unsigned 8-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := (a[i+7:i] + b[i+7:i] + 1) >> 1
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_avg_epu16
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_avg_epu16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Average packed unsigned 16-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := (a[i+15:i] + b[i+15:i] + 1) >> 1
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_avg_epu16
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_avg_epu16(__m512i src, __mmask32 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Average packed unsigned 16-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := (a[i+15:i] + b[i+15:i] + 1) >> 1
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_avg_epu16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_avg_epu16(__mmask32 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Average packed unsigned 16-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := (a[i+15:i] + b[i+15:i] + 1) >> 1
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maddubs_epi16
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_maddubs_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Vertically multiply each unsigned 8-bit integer from "a" with the corresponding signed 8-bit integer from "b", producing intermediate signed 16-bit integers. Horizontally add adjacent pairs of intermediate signed 16-bit integers, and pack the saturated results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := Saturate16( a[i+15:i+8]*b[i+15:i+8] + a[i+7:i]*b[i+7:i] )
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_maddubs_epi16
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 src, 
    MASK k, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_mask_maddubs_epi16(__m512i src, __mmask32 k,
                                      __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply packed unsigned 8-bit integers in "a" by packed signed 8-bit integers in "b", producing intermediate signed 16-bit integers. Horizontally add adjacent pairs of intermediate signed 16-bit integers, and pack the saturated results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := Saturate16( a[i+15:i+8]*b[i+15:i+8] + a[i+7:i]*b[i+7:i] )
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_maddubs_epi16
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_maskz_maddubs_epi16(__mmask32 k, __m512i a,
                                       __m512i b)

.. admonition:: Intel Description

    Multiply packed unsigned 8-bit integers in "a" by packed signed 8-bit integers in "b", producing intermediate signed 16-bit integers. Horizontally add adjacent pairs of intermediate signed 16-bit integers, and pack the saturated results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := Saturate16( a[i+15:i+8]*b[i+15:i+8] + a[i+7:i]*b[i+7:i] )
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_madd_epi16
-----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_madd_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Horizontally add adjacent pairs of intermediate 32-bit integers, and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SignExtend32(a[i+31:i+16]*b[i+31:i+16]) + SignExtend32(a[i+15:i]*b[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_madd_epi16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_madd_epi16(__m512i src, __mmask16 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Horizontally add adjacent pairs of intermediate 32-bit integers, and pack the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[i+31:i+16]*b[i+31:i+16]) + SignExtend32(a[i+15:i]*b[i+15:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_madd_epi16
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_madd_epi16(__mmask16 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Horizontally add adjacent pairs of intermediate 32-bit integers, and pack the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SignExtend32(a[i+31:i+16]*b[i+31:i+16]) + SignExtend32(a[i+15:i]*b[i+15:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_epi8
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_mask_max_epi8(__m512i src, __mmask64 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_epi8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_maskz_max_epi8(__mmask64 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_epi8
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_max_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_epi16
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_max_epi16(__m512i src, __mmask32 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_epi16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_max_epi16(__mmask32 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_epi16
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_max_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_epu8
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_mask_max_epu8(__m512i src, __mmask64 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_epu8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_maskz_max_epu8(__mmask64 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_epu8
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_max_epu8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_epu16
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_max_epu16(__m512i src, __mmask32 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_epu16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_max_epu16(__mmask32 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_epu16
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_max_epu16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_epi8
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_mask_min_epi8(__m512i src, __mmask64 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_epi8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_maskz_min_epi8(__mmask64 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_epi8
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_min_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_epi16
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_min_epi16(__m512i src, __mmask32 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_epi16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_min_epi16(__mmask32 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_epi16
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_min_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_epu8
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_mask_min_epu8(__m512i src, __mmask64 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_epu8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_maskz_min_epu8(__mmask64 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_epu8
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_min_epu8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_epu16
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_min_epu16(__m512i src, __mmask32 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_epu16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_min_epu16(__mmask32 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_epu16
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_min_epu16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mulhrs_epi16
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_mulhrs_epi16(__m512i src, __mmask32 k,
                                     __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Truncate each intermediate integer to the 18 most significant bits, round by adding 1, and store bits [16:1] to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := ((SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])) >> 14) + 1
        		dst[i+15:i] := tmp[16:1]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mulhrs_epi16
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_mulhrs_epi16(__mmask32 k, __m512i a,
                                      __m512i b)

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Truncate each intermediate integer to the 18 most significant bits, round by adding 1, and store bits [16:1] to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := ((SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])) >> 14) + 1
        		dst[i+15:i] := tmp[16:1]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mulhrs_epi16
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mulhrs_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Truncate each intermediate integer to the 18 most significant bits, round by adding 1, and store bits [16:1] to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	tmp[31:0] := ((SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])) >> 14) + 1
        	dst[i+15:i] := tmp[16:1]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mulhi_epu16
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_mulhi_epu16(__m512i src, __mmask32 k,
                                    __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply the packed unsigned 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := a[i+15:i] * b[i+15:i]
        		dst[i+15:i] := tmp[31:16]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mulhi_epu16
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_mulhi_epu16(__mmask32 k, __m512i a,
                                     __m512i b)

.. admonition:: Intel Description

    Multiply the packed unsigned 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := a[i+15:i] * b[i+15:i]
        		dst[i+15:i] := tmp[31:16]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mulhi_epu16
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mulhi_epu16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply the packed unsigned 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	tmp[31:0] := a[i+15:i] * b[i+15:i]
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mulhi_epi16
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_mulhi_epi16(__m512i src, __mmask32 k,
                                    __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply the packed signed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        		dst[i+15:i] := tmp[31:16]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mulhi_epi16
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_mulhi_epi16(__mmask32 k, __m512i a,
                                     __m512i b)

.. admonition:: Intel Description

    Multiply the packed signed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        		dst[i+15:i] := tmp[31:16]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mulhi_epi16
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mulhi_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply the packed signed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mullo_epi16
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_mullo_epi16(__m512i src, __mmask32 k,
                                    __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply the packed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the low 16 bits of the intermediate integers in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        		dst[i+15:i] := tmp[15:0]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mullo_epi16
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_mullo_epi16(__mmask32 k, __m512i a,
                                     __m512i b)

.. admonition:: Intel Description

    Multiply the packed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the low 16 bits of the intermediate integers in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        		dst[i+15:i] := tmp[15:0]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mullo_epi16
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mullo_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply the packed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the low 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        	dst[i+15:i] := tmp[15:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_epi8
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_mask_sub_epi8(__m512i src, __mmask64 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Subtract packed 8-bit integers in "b" from packed 8-bit integers in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[i+7:i] - b[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_epi8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_maskz_sub_epi8(__mmask64 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Subtract packed 8-bit integers in "b" from packed 8-bit integers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[i+7:i] - b[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_epi8
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_sub_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Subtract packed 8-bit integers in "b" from packed 8-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := a[i+7:i] - b[i+7:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_subs_epi8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_mask_subs_epi8(__m512i src, __mmask64 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Subtract packed signed 8-bit integers in "b" from packed 8-bit integers in "a" using saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := Saturate8(a[i+7:i] - b[i+7:i])
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_subs_epi8
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_maskz_subs_epi8(__mmask64 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Subtract packed signed 8-bit integers in "b" from packed 8-bit integers in "a" using saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := Saturate8(a[i+7:i] - b[i+7:i])
        	ELSE
        		dst[i+7:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_subs_epi8
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_subs_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Subtract packed signed 8-bit integers in "b" from packed 8-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := Saturate8(a[i+7:i] - b[i+7:i])	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_subs_epi16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_subs_epi16(__m512i src, __mmask32 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Subtract packed signed 16-bit integers in "b" from packed 16-bit integers in "a" using saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := Saturate16(a[i+15:i] - b[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_subs_epi16
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_subs_epi16(__mmask32 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Subtract packed signed 16-bit integers in "b" from packed 16-bit integers in "a" using saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := Saturate16(a[i+15:i] - b[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_subs_epi16
-----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_subs_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Subtract packed signed 16-bit integers in "b" from packed 16-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := Saturate16(a[i+15:i] - b[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_subs_epu8
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_mask_subs_epu8(__m512i src, __mmask64 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Subtract packed unsigned 8-bit integers in "b" from packed unsigned 8-bit integers in "a" using saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := SaturateU8(a[i+7:i] - b[i+7:i])
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_subs_epu8
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
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

    __m512i _mm512_maskz_subs_epu8(__mmask64 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Subtract packed unsigned 8-bit integers in "b" from packed unsigned 8-bit integers in "a" using saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := SaturateU8(a[i+7:i] - b[i+7:i])
        	ELSE
        		dst[i+7:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_subs_epu8
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_subs_epu8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Subtract packed unsigned 8-bit integers in "b" from packed unsigned 8-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := SaturateU8(a[i+7:i] - b[i+7:i])	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_subs_epu16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_subs_epu16(__m512i src, __mmask32 k,
                                   __m512i a, __m512i b)

.. admonition:: Intel Description

    Subtract packed unsigned 16-bit integers in "b" from packed unsigned 16-bit integers in "a" using saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := SaturateU16(a[i+15:i] - b[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_subs_epu16
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_subs_epu16(__mmask32 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Subtract packed unsigned 16-bit integers in "b" from packed unsigned 16-bit integers in "a" using saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := SaturateU16(a[i+15:i] - b[i+15:i])
        	ELSE
        		dst[i+15:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_subs_epu16
-----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_subs_epu16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Subtract packed unsigned 16-bit integers in "b" from packed unsigned 16-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := SaturateU16(a[i+15:i] - b[i+15:i])	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_epi16
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_sub_epi16(__m512i src, __mmask32 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Subtract packed 16-bit integers in "b" from packed 16-bit integers in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[i+15:i] - b[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_epi16
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_sub_epi16(__mmask32 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Subtract packed 16-bit integers in "b" from packed 16-bit integers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[i+15:i] - b[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_epi16
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_sub_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Subtract packed 16-bit integers in "b" from packed 16-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := a[i+15:i] - b[i+15:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mullo_epi64
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_mullo_epi64(__m512i src, __mmask8 k,
                                    __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply the packed 64-bit integers in "a" and "b", producing intermediate 128-bit integers, and store the low 64 bits of the intermediate integers in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := a[i+63:i] * b[i+63:i]
        		dst[i+63:i] := tmp[63:0]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mullo_epi64
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_maskz_mullo_epi64(__mmask8 k, __m512i a,
                                     __m512i b)

.. admonition:: Intel Description

    Multiply the packed 64-bit integers in "a" and "b", producing intermediate 128-bit integers, and store the low 64 bits of the intermediate integers in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := a[i+63:i] * b[i+63:i]
        		dst[i+63:i] := tmp[63:0]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mullo_epi64
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mullo_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply the packed 64-bit integers in "a" and "b", producing intermediate 128-bit integers, and store the low 64 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	tmp[127:0] := a[i+63:i] * b[i+63:i]
        	dst[i+63:i] := tmp[63:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mullo_epi32
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_maskz_mullo_epi32(__mmask16 k, __m512i a,
                                     __m512i b)

.. admonition:: Intel Description

    Multiply the packed 32-bit integers in "a" and "b", producing intermediate 64-bit integers, and store the low 32 bits of the intermediate integers in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp[63:0] := a[i+31:i] * b[i+31:i]
        		dst[i+31:i] := tmp[31:0]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_pd
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_maskz_add_pd(__mmask8 k, __m512d a,
                                __m512d b)

.. admonition:: Intel Description

    Add packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] + b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_round_pd
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_add_round_pd(__mmask8 k, __m512d a,
                                      __m512d b, int rounding)

.. admonition:: Intel Description

    Add packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] + b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_ps
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_maskz_add_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Add packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] + b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_round_ps
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_add_round_ps(__mmask16 k, __m512 a,
                                     __m512 b, int rounding)

.. admonition:: Intel Description

    Add packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] + b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_div_pd
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_div_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Divide packed double-precision (64-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	dst[i+63:i] := a[i+63:i] / b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_div_round_pd
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_div_round_pd(__m512d a, __m512d b,
                                int rounding)

.. admonition:: Intel Description

    Divide packed double-precision (64-bit) floating-point elements in "a" by packed elements in "b", =and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	dst[i+63:i] := a[i+63:i] / b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_div_pd
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_mask_div_pd(__m512d src, __mmask8 k,
                               __m512d a, __m512d b)

.. admonition:: Intel Description

    Divide packed double-precision (64-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] / b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_div_round_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_div_round_pd(__m512d src, __mmask8 k,
                                     __m512d a, __m512d b,
                                     int rounding)

.. admonition:: Intel Description

    Divide packed double-precision (64-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] / b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_div_pd
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_maskz_div_pd(__mmask8 k, __m512d a,
                                __m512d b)

.. admonition:: Intel Description

    Divide packed double-precision (64-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] / b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_div_round_pd
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_div_round_pd(__mmask8 k, __m512d a,
                                      __m512d b, int rounding)

.. admonition:: Intel Description

    Divide packed double-precision (64-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 64*j
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] / b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_div_ps
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_div_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Divide packed single-precision (32-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := a[i+31:i] / b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_div_round_ps
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_div_round_ps(__m512 a, __m512 b,
                               int rounding)

.. admonition:: Intel Description

    Divide packed single-precision (32-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	dst[i+31:i] := a[i+31:i] / b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_div_ps
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_mask_div_ps(__m512 src, __mmask16 k, __m512 a,
                              __m512 b)

.. admonition:: Intel Description

    Divide packed single-precision (32-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] / b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_div_round_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_div_round_ps(__m512 src, __mmask16 k,
                                    __m512 a, __m512 b,
                                    int rounding)

.. admonition:: Intel Description

    Divide packed single-precision (32-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] / b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_div_ps
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_maskz_div_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Divide packed single-precision (32-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] / b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_div_round_ps
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_div_round_ps(__mmask16 k, __m512 a,
                                     __m512 b, int rounding)

.. admonition:: Intel Description

    Divide packed single-precision (32-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := 32*j
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] / b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmadd_pd
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_maskz_fmadd_pd(__mmask8 k, __m512d a,
                                  __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmadd_round_pd
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_fmadd_round_pd(__mmask8 k, __m512d a,
                                        __m512d b, __m512d c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmadd_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_maskz_fmadd_ps(__mmask16 k, __m512 a,
                                 __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmadd_round_ps
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_fmadd_round_ps(__mmask16 k, __m512 a,
                                       __m512 b, __m512 c,
                                       const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "a" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmaddsub_pd
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_fmaddsub_pd(__m512d a, __m512d b, __m512d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF ((j & 1) == 0)
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmaddsub_round_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_fmaddsub_round_pd(__m512d a, __m512d b,
                                     __m512d c,
                                     const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF ((j & 1) == 0)
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmaddsub_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k

.. code-block:: C

    __m512d _mm512_mask3_fmaddsub_pd(__m512d a, __m512d b,
                                     __m512d c, __mmask8 k)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmaddsub_round_pd
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k, 
    const int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask3_fmaddsub_round_pd(__m512d a, __m512d b,
                                           __m512d c,
                                           __mmask8 k,
                                           const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		FI
        	ELSE 
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmaddsub_pd
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_mask_fmaddsub_pd(__m512d a, __mmask8 k,
                                    __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmaddsub_round_pd
-----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_fmaddsub_round_pd(__m512d a, __mmask8 k,
                                          __m512d b, __m512d c,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmaddsub_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_maskz_fmaddsub_pd(__mmask8 k, __m512d a,
                                     __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmaddsub_round_pd
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_fmaddsub_round_pd(__mmask8 k,
                                           __m512d a, __m512d b,
                                           __m512d c,
                                           const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmaddsub_ps
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_fmaddsub_ps(__m512 a, __m512 b, __m512 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF ((j & 1) == 0)
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmaddsub_round_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_fmaddsub_round_ps(__m512 a, __m512 b,
                                    __m512 c,
                                    const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF ((j & 1) == 0)
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmaddsub_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k

.. code-block:: C

    __m512 _mm512_mask3_fmaddsub_ps(__m512 a, __m512 b,
                                    __m512 c, __mmask16 k)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmaddsub_round_ps
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k, 
    const int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask3_fmaddsub_round_ps(__m512 a, __m512 b,
                                          __m512 c, __mmask16 k,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmaddsub_ps
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_mask_fmaddsub_ps(__m512 a, __mmask16 k,
                                   __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmaddsub_round_ps
-----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_fmaddsub_round_ps(__m512 a, __mmask16 k,
                                         __m512 b, __m512 c,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmaddsub_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_maskz_fmaddsub_ps(__mmask16 k, __m512 a,
                                    __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmaddsub_round_ps
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_fmaddsub_round_ps(__mmask16 k, __m512 a,
                                          __m512 b, __m512 c,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsub_pd
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_maskz_fmsub_pd(__mmask8 k, __m512d a,
                                  __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsub_round_pd
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_fmsub_round_pd(__mmask8 k, __m512d a,
                                        __m512d b, __m512d c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsub_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_maskz_fmsub_ps(__mmask16 k, __m512 a,
                                 __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsub_round_ps
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_fmsub_round_ps(__mmask16 k, __m512 a,
                                       __m512 b, __m512 c,
                                       const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsubadd_pd
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_fmsubadd_pd(__m512d a, __m512d b, __m512d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF ((j & 1) == 0)
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsubadd_round_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_fmsubadd_round_pd(__m512d a, __m512d b,
                                     __m512d c,
                                     const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF ((j & 1) == 0)
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsubadd_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k

.. code-block:: C

    __m512d _mm512_mask3_fmsubadd_pd(__m512d a, __m512d b,
                                     __m512d c, __mmask8 k)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsubadd_round_pd
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k, 
    const int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask3_fmsubadd_round_pd(__m512d a, __m512d b,
                                           __m512d c,
                                           __mmask8 k,
                                           const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsubadd_pd
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_mask_fmsubadd_pd(__m512d a, __mmask8 k,
                                    __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsubadd_round_pd
-----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_fmsubadd_round_pd(__m512d a, __mmask8 k,
                                          __m512d b, __m512d c,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsubadd_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_maskz_fmsubadd_pd(__mmask8 k, __m512d a,
                                     __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsubadd_round_pd
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_fmsubadd_round_pd(__mmask8 k,
                                           __m512d a, __m512d b,
                                           __m512d c,
                                           const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        		ELSE
        			dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        		FI
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsubadd_ps
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_fmsubadd_ps(__m512 a, __m512 b, __m512 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF ((j & 1) == 0)
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsubadd_round_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_fmsubadd_round_ps(__m512 a, __m512 b,
                                    __m512 c,
                                    const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF ((j & 1) == 0)
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsubadd_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k

.. code-block:: C

    __m512 _mm512_mask3_fmsubadd_ps(__m512 a, __m512 b,
                                    __m512 c, __mmask16 k)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsubadd_round_ps
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k, 
    const int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask3_fmsubadd_round_ps(__m512 a, __m512 b,
                                          __m512 c, __mmask16 k,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsubadd_ps
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_mask_fmsubadd_ps(__m512 a, __mmask16 k,
                                   __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsubadd_round_ps
-----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_fmsubadd_round_ps(__m512 a, __mmask16 k,
                                         __m512 b, __m512 c,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsubadd_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_maskz_fmsubadd_ps(__mmask16 k, __m512 a,
                                    __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsubadd_round_ps
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_fmsubadd_round_ps(__mmask16 k, __m512 a,
                                          __m512 b, __m512 c,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        		ELSE
        			dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        		FI
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmadd_pd
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_maskz_fnmadd_pd(__mmask8 k, __m512d a,
                                   __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmadd_round_pd
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_fnmadd_round_pd(__mmask8 k, __m512d a,
                                         __m512d b, __m512d c,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmadd_ps
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_maskz_fnmadd_ps(__mmask16 k, __m512 a,
                                  __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmadd_round_ps
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_fnmadd_round_ps(__mmask16 k, __m512 a,
                                        __m512 b, __m512 c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmsub_pd
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_maskz_fnmsub_pd(__mmask8 k, __m512d a,
                                   __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmsub_round_pd
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512d c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_fnmsub_round_pd(__mmask8 k, __m512d a,
                                         __m512d b, __m512d c,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmsub_ps
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_maskz_fnmsub_ps(__mmask16 k, __m512 a,
                                  __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmsub_round_ps
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512 c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_fnmsub_round_ps(__mmask16 k, __m512 a,
                                        __m512 b, __m512 c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_pd
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_maskz_mul_pd(__mmask8 k, __m512d a,
                                __m512d b)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] * b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_round_pd
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_mul_round_pd(__mmask8 k, __m512d a,
                                      __m512d b, int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] * b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_ps
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_maskz_mul_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] * b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_round_ps
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_mul_round_ps(__mmask16 k, __m512 a,
                                     __m512 b, int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] * b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_epi32
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_maskz_add_epi32(__mmask16 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Add packed 32-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] + b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_epi64
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_add_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Add packed 64-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] + b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_epi64
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_add_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Add packed 64-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] + b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_epi64
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_maskz_add_epi64(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Add packed 64-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] + b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_epi32
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI64 src, 
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_mask_mul_epi32(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply the low signed 32-bit integers from each packed 64-bit element in "a" and "b", and store the signed 64-bit results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[i+31:i]) * SignExtend64(b[i+31:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_epi32
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_maskz_mul_epi32(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Multiply the low signed 32-bit integers from each packed 64-bit element in "a" and "b", and store the signed 64-bit results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SignExtend64(a[i+31:i]) * SignExtend64(b[i+31:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_epi32
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_mul_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply the low signed 32-bit integers from each packed 64-bit element in "a" and "b", and store the signed 64-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SignExtend64(a[i+31:i]) * SignExtend64(b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_epu32
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_mul_epu32(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply the low unsigned 32-bit integers from each packed 64-bit element in "a" and "b", and store the unsigned 64-bit results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+31:i] * b[i+31:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_epu32
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_maskz_mul_epu32(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Multiply the low unsigned 32-bit integers from each packed 64-bit element in "a" and "b", and store the unsigned 64-bit results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+31:i] * b[i+31:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_epu32
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mul_epu32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply the low unsigned 32-bit integers from each packed 64-bit element in "a" and "b", and store the unsigned 64-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+31:i] * b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_epi32
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_maskz_sub_epi32(__mmask16 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Subtract packed 32-bit integers in "b" from packed 32-bit integers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] - b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_epi64
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_sub_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Subtract packed 64-bit integers in "b" from packed 64-bit integers in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] - b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_epi64
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_maskz_sub_epi64(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Subtract packed 64-bit integers in "b" from packed 64-bit integers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] - b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_epi64
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_sub_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Subtract packed 64-bit integers in "b" from packed 64-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] - b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_pd
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_maskz_sub_pd(__mmask8 k, __m512d a,
                                __m512d b)

.. admonition:: Intel Description

    Subtract packed double-precision (64-bit) floating-point elements in "b" from packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] - b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_round_pd
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_sub_round_pd(__mmask8 k, __m512d a,
                                      __m512d b, int rounding)

.. admonition:: Intel Description

    Subtract packed double-precision (64-bit) floating-point elements in "b" from packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] - b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_ps
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_maskz_sub_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Subtract packed single-precision (32-bit) floating-point elements in "b" from packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] - b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_round_ps
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_sub_round_ps(__mmask16 k, __m512 a,
                                     __m512 b, int rounding)

.. admonition:: Intel Description

    Subtract packed single-precision (32-bit) floating-point elements in "b" from packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] - b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_pd
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_add_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Add packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] + b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_round_pd
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_add_round_pd(__m512d a, __m512d b,
                                int rounding)

.. admonition:: Intel Description

    Add packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] + b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_pd
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_mask_add_pd(__m512d src, __mmask8 k,
                               __m512d a, __m512d b)

.. admonition:: Intel Description

    Add packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] + b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_round_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_add_round_pd(__m512d src, __mmask8 k,
                                     __m512d a, __m512d b,
                                     int rounding)

.. admonition:: Intel Description

    Add packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] + b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_ps
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_add_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Add packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] + b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_round_ps
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_add_round_ps(__m512 a, __m512 b,
                               int rounding)

.. admonition:: Intel Description

    Add packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] + b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_ps
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_mask_add_ps(__m512 src, __mmask16 k, __m512 a,
                              __m512 b)

.. admonition:: Intel Description

    Add packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] + b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_round_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_add_round_ps(__m512 src, __mmask16 k,
                                    __m512 a, __m512 b,
                                    int rounding)

.. admonition:: Intel Description

    Add packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] + b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmadd_pd
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_fmadd_pd(__m512d a, __m512d b, __m512d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmadd_round_pd
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_fmadd_round_pd(__m512d a, __m512d b,
                                  __m512d c, int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmadd_pd
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k

.. code-block:: C

    __m512d _mm512_mask3_fmadd_pd(__m512d a, __m512d b,
                                  __m512d c, __mmask8 k)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmadd_round_pd
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask3_fmadd_round_pd(__m512d a, __m512d b,
                                        __m512d c, __mmask8 k,
                                        int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE 
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmadd_pd
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_mask_fmadd_pd(__m512d a, __mmask8 k,
                                 __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmadd_round_pd
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c, 
    int rounding
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_fmadd_round_pd(__m512d a, __mmask8 k,
                                       __m512d b, __m512d c,
                                       int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmadd_ps
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_fmadd_ps(__m512 a, __m512 b, __m512 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmadd_round_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_fmadd_round_ps(__m512 a, __m512 b, __m512 c,
                                 int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmadd_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k

.. code-block:: C

    __m512 _mm512_mask3_fmadd_ps(__m512 a, __m512 b, __m512 c,
                                 __mmask16 k)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmadd_round_ps
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask3_fmadd_round_ps(__m512 a, __m512 b,
                                       __m512 c, __mmask16 k,
                                       int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmadd_ps
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_mask_fmadd_ps(__m512 a, __mmask16 k, __m512 b,
                                __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmadd_round_ps
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c, 
    int rounding
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_fmadd_round_ps(__m512 a, __mmask16 k,
                                      __m512 b, __m512 c,
                                      int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsub_pd
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_fmsub_pd(__m512d a, __m512d b, __m512d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsub_round_pd
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_fmsub_round_pd(__m512d a, __m512d b,
                                  __m512d c, int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsub_pd
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k

.. code-block:: C

    __m512d _mm512_mask3_fmsub_pd(__m512d a, __m512d b,
                                  __m512d c, __mmask8 k)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsub_round_pd
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask3_fmsub_round_pd(__m512d a, __m512d b,
                                        __m512d c, __mmask8 k,
                                        int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsub_pd
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_mask_fmsub_pd(__m512d a, __mmask8 k,
                                 __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsub_round_pd
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c, 
    int rounding
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_fmsub_round_pd(__m512d a, __mmask8 k,
                                       __m512d b, __m512d c,
                                       int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsub_ps
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_fmsub_ps(__m512 a, __m512 b, __m512 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsub_round_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_fmsub_round_ps(__m512 a, __m512 b, __m512 c,
                                 int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsub_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k

.. code-block:: C

    __m512 _mm512_mask3_fmsub_ps(__m512 a, __m512 b, __m512 c,
                                 __mmask16 k)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsub_round_ps
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask3_fmsub_round_ps(__m512 a, __m512 b,
                                       __m512 c, __mmask16 k,
                                       int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsub_ps
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_mask_fmsub_ps(__m512 a, __mmask16 k, __m512 b,
                                __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsub_round_ps
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c, 
    int rounding
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_fmsub_round_ps(__m512 a, __mmask16 k,
                                      __m512 b, __m512 c,
                                      int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fnmadd_pd
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_fnmadd_pd(__m512d a, __m512d b, __m512d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_fnmadd_round_pd
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_fnmadd_round_pd(__m512d a, __m512d b,
                                   __m512d c, int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst".
    	 [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmadd_pd
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k

.. code-block:: C

    __m512d _mm512_mask3_fnmadd_pd(__m512d a, __m512d b,
                                   __m512d c, __mmask8 k)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmadd_round_pd
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask3_fnmadd_round_pd(__m512d a, __m512d b,
                                         __m512d c, __mmask8 k,
                                         int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_fnmadd_pd
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_mask_fnmadd_pd(__m512d a, __mmask8 k,
                                  __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_fnmadd_round_pd
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c, 
    int rounding
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_fnmadd_round_pd(__m512d a, __mmask8 k,
                                        __m512d b, __m512d c,
                                        int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_fnmadd_ps
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_fnmadd_ps(__m512 a, __m512 b, __m512 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_fnmadd_round_ps
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_fnmadd_round_ps(__m512 a, __m512 b, __m512 c,
                                  int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst".  
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmadd_ps
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k

.. code-block:: C

    __m512 _mm512_mask3_fnmadd_ps(__m512 a, __m512 b, __m512 c,
                                  __mmask16 k)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmadd_round_ps
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask3_fnmadd_round_ps(__m512 a, __m512 b,
                                        __m512 c, __mmask16 k,
                                        int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_fnmadd_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_mask_fnmadd_ps(__m512 a, __mmask16 k,
                                 __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_fnmadd_round_ps
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c, 
    int rounding
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_fnmadd_round_ps(__m512 a, __mmask16 k,
                                       __m512 b, __m512 c,
                                       int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_fnmsub_pd
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_fnmsub_pd(__m512d a, __m512d b, __m512d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_fnmsub_round_pd
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_fnmsub_round_pd(__m512d a, __m512d b,
                                   __m512d c, int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst".  
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmsub_pd
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k

.. code-block:: C

    __m512d _mm512_mask3_fnmsub_pd(__m512d a, __m512d b,
                                   __m512d c, __mmask8 k)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmsub_round_pd
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512d c, 
    __mmask8 k, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask3_fnmsub_round_pd(__m512d a, __m512d b,
                                         __m512d c, __mmask8 k,
                                         int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set). [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := c[i+63:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_fnmsub_pd
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m512d _mm512_mask_fnmsub_pd(__m512d a, __mmask8 k,
                                  __m512d b, __m512d c)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_fnmsub_round_pd
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512d c, 
    int rounding
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    FP64 c, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_fnmsub_round_pd(__m512d a, __mmask8 k,
                                        __m512d b, __m512d c,
                                        int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_fnmsub_ps
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_fnmsub_ps(__m512 a, __m512 b, __m512 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_fnmsub_round_ps
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_fnmsub_round_ps(__m512 a, __m512 b, __m512 c,
                                  int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmsub_ps
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k

.. code-block:: C

    __m512 _mm512_mask3_fnmsub_ps(__m512 a, __m512 b, __m512 c,
                                  __mmask16 k)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmsub_round_ps
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512 c, 
    __mmask16 k, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask3_fnmsub_round_ps(__m512 a, __m512 b,
                                        __m512 c, __mmask16 k,
                                        int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).  [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := c[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_fnmsub_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m512 _mm512_mask_fnmsub_ps(__m512 a, __mmask16 k,
                                 __m512 b, __m512 c)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_fnmsub_round_ps
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512 c, 
    int rounding
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    FP32 c, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_fnmsub_round_ps(__m512 a, __mmask16 k,
                                       __m512 b, __m512 c,
                                       int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:512] := 0
        	

_mm512_mask_mul_pd
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_mask_mul_pd(__m512d src, __mmask8 k,
                               __m512d a, __m512d b)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).  RM.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] * b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_round_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_mul_round_pd(__m512d src, __mmask8 k,
                                     __m512d a, __m512d b,
                                     int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).  
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] * b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_pd
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_mul_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] * b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_round_pd
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mul_round_pd(__m512d a, __m512d b,
                                int rounding)

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] * b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_ps
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_mask_mul_ps(__m512 src, __mmask16 k, __m512 a,
                              __m512 b)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).  RM.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] * b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_round_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_mul_round_ps(__m512 src, __mmask16 k,
                                    __m512 a, __m512 b,
                                    int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	 [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] * b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_ps
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_mul_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] * b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_round_ps
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mul_round_ps(__m512 a, __m512 b,
                               int rounding)

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst". 
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] * b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_epi32
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_add_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Add packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] + b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_epi32
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_add_epi32(__m512i src, __mmask16 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Add packed 32-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] + b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mullo_epi32
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_mullo_epi32(__m512i src, __mmask16 k,
                                    __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply the packed 32-bit integers in "a" and "b", producing intermediate 64-bit integers, and store the low 32 bits of the intermediate integers in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp[63:0] := a[i+31:i] * b[i+31:i]
        		dst[i+31:i] := tmp[31:0]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mullo_epi32
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mullo_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Multiply the packed 32-bit integers in "a" and "b", producing intermediate 64-bit integers, and store the low 32 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	tmp[63:0] := a[i+31:i] * b[i+31:i]
        	dst[i+31:i] := tmp[31:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_epi32
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_sub_epi32(__m512i src, __mmask16 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Subtract packed 32-bit integers in "b" from packed 32-bit integers in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] - b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_epi32
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_sub_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Subtract packed 32-bit integers in "b" from packed 32-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] - b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_pd
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_mask_sub_pd(__m512d src, __mmask8 k,
                               __m512d a, __m512d b)

.. admonition:: Intel Description

    Subtract packed double-precision (64-bit) floating-point elements in "b" from packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] - b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_round_pd
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_sub_round_pd(__m512d src, __mmask8 k,
                                     __m512d a, __m512d b,
                                     int rounding)

.. admonition:: Intel Description

    Subtract packed double-precision (64-bit) floating-point elements in "b" from packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] - b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_pd
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_sub_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Subtract packed double-precision (64-bit) floating-point elements in "b" from packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] - b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_round_pd
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_sub_round_pd(__m512d a, __m512d b,
                                int rounding)

.. admonition:: Intel Description

    Subtract packed double-precision (64-bit) floating-point elements in "b" from packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] - b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_ps
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_mask_sub_ps(__m512 src, __mmask16 k, __m512 a,
                              __m512 b)

.. admonition:: Intel Description

    Subtract packed single-precision (32-bit) floating-point elements in "b" from packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] - b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_round_ps
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_sub_round_ps(__m512 src, __mmask16 k,
                                    __m512 a, __m512 b,
                                    int rounding)

.. admonition:: Intel Description

    Subtract packed single-precision (32-bit) floating-point elements in "b" from packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] - b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI	
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_ps
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_sub_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Subtract packed single-precision (32-bit) floating-point elements in "b" from packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] - b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_round_ps
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_sub_round_ps(__m512 a, __m512 b,
                               int rounding)

.. admonition:: Intel Description

    Subtract packed single-precision (32-bit) floating-point elements in "b" from packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] - b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_add_epi32
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    int _mm512_mask_reduce_add_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed 32-bit integers in "a" by addition using mask "k". Returns the sum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_ADD(src, len) {
        	IF len == 2
        		RETURN src[31:0] + src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] + src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_ADD(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := 0
        	FI
        ENDFOR
        dst[31:0] := REDUCE_ADD(tmp, 16)
        	

_mm512_mask_reduce_add_epi64
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __int64 _mm512_mask_reduce_add_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed 64-bit integers in "a" by addition using mask "k". Returns the sum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_ADD(src, len) {
        	IF len == 2
        		RETURN src[63:0] + src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] + src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_ADD(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := 0
        	FI
        ENDFOR
        dst[63:0] := REDUCE_ADD(tmp, 8)
        	

_mm512_mask_reduce_add_pd
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    double _mm512_mask_reduce_add_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Reduce the packed double-precision (64-bit) floating-point elements in "a" by addition using mask "k". Returns the sum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_ADD(src, len) {
        	IF len == 2
        		RETURN src[63:0] + src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] + src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_ADD(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := 0
        	FI
        ENDFOR
        dst[63:0] := REDUCE_ADD(tmp, 8)
        	

_mm512_mask_reduce_add_ps
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    float _mm512_mask_reduce_add_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Reduce the packed single-precision (32-bit) floating-point elements in "a" by addition using mask "k". Returns the sum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_ADD(src, len) {
        	IF len == 2
        		RETURN src[31:0] + src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] + src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_ADD(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := 0
        	FI
        ENDFOR
        dst[31:0] := REDUCE_ADD(tmp, 16)
        	

_mm512_mask_reduce_mul_epi32
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    int _mm512_mask_reduce_mul_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed 32-bit integers in "a" by multiplication using mask "k". Returns the product of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MUL(src, len) {
        	IF len == 2
        		RETURN src[31:0] * src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] * src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_MUL(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := 1
        	FI
        ENDFOR
        dst[31:0] := REDUCE_MUL(tmp, 16)
        	

_mm512_mask_reduce_mul_epi64
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __int64 _mm512_mask_reduce_mul_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed 64-bit integers in "a" by multiplication using mask "k". Returns the product of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MUL(src, len) {
        	IF len == 2
        		RETURN src[63:0] * src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] * src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_MUL(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := 1
        	FI
        ENDFOR
        dst[63:0] := REDUCE_MUL(tmp, 8)
        	

_mm512_mask_reduce_mul_pd
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    double _mm512_mask_reduce_mul_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Reduce the packed double-precision (64-bit) floating-point elements in "a" by multiplication using mask "k". Returns the product of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MUL(src, len) {
        	IF len == 2
        		RETURN src[63:0] * src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] * src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_MUL(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := 1.0
        	FI
        ENDFOR
        dst[63:0] := REDUCE_MUL(tmp, 8)
        	

_mm512_mask_reduce_mul_ps
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    float _mm512_mask_reduce_mul_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Reduce the packed single-precision (32-bit) floating-point elements in "a" by multiplication using mask "k". Returns the product of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MUL(src, len) {
        	IF len == 2
        		RETURN src[31:0] * src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] * src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_MUL(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := FP32(1.0)
        	FI
        ENDFOR
        dst[31:0] := REDUCE_MUL(tmp, 16)
        	

_mm512_reduce_add_epi32
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm512_reduce_add_epi32(__m512i a);

.. admonition:: Intel Description

    Reduce the packed 32-bit integers in "a" by addition. Returns the sum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_ADD(src, len) {
        	IF len == 2
        		RETURN src[31:0] + src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] + src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_ADD(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_ADD(a, 16)
        	

_mm512_reduce_add_epi64
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __int64 _mm512_reduce_add_epi64(__m512i a);

.. admonition:: Intel Description

    Reduce the packed 64-bit integers in "a" by addition. Returns the sum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_ADD(src, len) {
        	IF len == 2
        		RETURN src[63:0] + src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] + src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_ADD(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_ADD(a, 8)
        	

_mm512_reduce_add_pd
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    double _mm512_reduce_add_pd(__m512d a);

.. admonition:: Intel Description

    Reduce the packed double-precision (64-bit) floating-point elements in "a" by addition. Returns the sum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_ADD(src, len) {
        	IF len == 2
        		RETURN src[63:0] + src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] + src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_ADD(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_ADD(a, 8)
        	

_mm512_reduce_add_ps
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    float _mm512_reduce_add_ps(__m512 a);

.. admonition:: Intel Description

    Reduce the packed single-precision (32-bit) floating-point elements in "a" by addition. Returns the sum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_ADD(src, len) {
        	IF len == 2
        		RETURN src[31:0] + src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] + src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_ADD(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_ADD(a, 16)
        	

_mm512_reduce_mul_epi32
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm512_reduce_mul_epi32(__m512i a);

.. admonition:: Intel Description

    Reduce the packed 32-bit integers in "a" by multiplication. Returns the product of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MUL(src, len) {
        	IF len == 2
        		RETURN src[31:0] * src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] * src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_MUL(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_MUL(a, 16)
        	

_mm512_reduce_mul_epi64
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __int64 _mm512_reduce_mul_epi64(__m512i a);

.. admonition:: Intel Description

    Reduce the packed 64-bit integers in "a" by multiplication. Returns the product of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MUL(src, len) {
        	IF len == 2
        		RETURN src[63:0] * src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] * src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_MUL(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_MUL(a, 8)
        	

_mm512_reduce_mul_pd
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    double _mm512_reduce_mul_pd(__m512d a);

.. admonition:: Intel Description

    Reduce the packed double-precision (64-bit) floating-point elements in "a" by multiplication. Returns the product of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MUL(src, len) {
        	IF len == 2
        		RETURN src[63:0] * src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] * src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_MUL(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_MUL(a, 8)
        	

_mm512_reduce_mul_ps
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    float _mm512_reduce_mul_ps(__m512 a);

.. admonition:: Intel Description

    Reduce the packed single-precision (32-bit) floating-point elements in "a" by multiplication. Returns the product of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MUL(src, len) {
        	IF len == 2
        		RETURN src[31:0] * src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] * src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_MUL(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_MUL(a, 16)
        	

_mm512_abs_ps
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 v2
:Param ETypes:
    FP32 v2

.. code-block:: C

    __m512 _mm512_abs_ps(__m512 v2);

.. admonition:: Intel Description

    Finds the absolute value of each packed single-precision (32-bit) floating-point element in "v2", storing the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ABS(v2[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_abs_ps
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 v2
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 v2

.. code-block:: C

    __m512 _mm512_mask_abs_ps(__m512 src, __mmask16 k,
                              __m512 v2)

.. admonition:: Intel Description

    Finds the absolute value of each packed single-precision (32-bit) floating-point element in "v2", storing the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ABS(v2[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_abs_pd
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d v2
:Param ETypes:
    FP64 v2

.. code-block:: C

    __m512d _mm512_abs_pd(__m512d v2);

.. admonition:: Intel Description

    Finds the absolute value of each packed double-precision (64-bit) floating-point element in "v2", storing the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ABS(v2[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_abs_pd
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d v2
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 v2

.. code-block:: C

    __m512d _mm512_mask_abs_pd(__m512d src, __mmask8 k,
                               __m512d v2)

.. admonition:: Intel Description

    Finds the absolute value of each packed double-precision (64-bit) floating-point element in "v2", storing the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ABS(v2[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_madd52lo_epu64
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 a, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_madd52lo_epu64(__m512i a, __m512i b,
                                  __m512i c)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "b" and "c" to form a 104-bit intermediate result. Add the low 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	tmp[127:0] := ZeroExtend64(b[i+51:i]) * ZeroExtend64(c[i+51:i])
        	dst[i+63:i] := a[i+63:i] + ZeroExtend64(tmp[51:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_madd52lo_epu64
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask8 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 a, 
    MASK k, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_mask_madd52lo_epu64(__m512i a, __mmask8 k,
                                       __m512i b, __m512i c)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "b" and "c" to form a 104-bit intermediate result. Add the low 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "a", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := ZeroExtend64(b[i+51:i]) * ZeroExtend64(c[i+51:i])
        		dst[i+63:i] := a[i+63:i] + ZeroExtend64(tmp[51:0])
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_madd52lo_epu64
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_maskz_madd52lo_epu64(__mmask8 k, __m512i a,
                                        __m512i b, __m512i c)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "b" and "c" to form a 104-bit intermediate result. Add the low 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := ZeroExtend64(b[i+51:i]) * ZeroExtend64(c[i+51:i])
        		dst[i+63:i] := a[i+63:i] + ZeroExtend64(tmp[51:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_madd52hi_epu64
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 a, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_madd52hi_epu64(__m512i a, __m512i b,
                                  __m512i c)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "b" and "c" to form a 104-bit intermediate result. Add the high 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	tmp[127:0] := ZeroExtend64(b[i+51:i]) * ZeroExtend64(c[i+51:i])
        	dst[i+63:i] := a[i+63:i] + ZeroExtend64(tmp[103:52])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_madd52hi_epu64
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask8 k, 
    __m512i b, 
    __m512i c
:Param ETypes:
    UI64 a, 
    MASK k, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_mask_madd52hi_epu64(__m512i a, __mmask8 k,
                                       __m512i b, __m512i c)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "b" and "c" to form a 104-bit intermediate result. Add the high 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "a", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := ZeroExtend64(b[i+51:i]) * ZeroExtend64(c[i+51:i])
        		dst[i+63:i] := a[i+63:i] + ZeroExtend64(tmp[103:52])
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_madd52hi_epu64
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    __m512i c
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    UI64 c

.. code-block:: C

    __m512i _mm512_maskz_madd52hi_epu64(__mmask8 k, __m512i a,
                                        __m512i b, __m512i c)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "b" and "c" to form a 104-bit intermediate result. Add the high 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		tmp[127:0] := ZeroExtend64(b[i+51:i]) * ZeroExtend64(c[i+51:i])
        		dst[i+63:i] := a[i+63:i] + ZeroExtend64(tmp[103:52])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_dpbf16_ps
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __m512bh a, 
    __m512bh b
:Param ETypes:
    FP32 src, 
    BF16 a, 
    BF16 b

.. code-block:: C

    __m512 _mm512_dpbf16_ps(__m512 src, __m512bh a, __m512bh b);

.. admonition:: Intel Description

    Compute dot-product of BF16 (16-bit) floating-point pairs in "a" and "b", accumulating the intermediate single-precision (32-bit) floating-point elements with elements in "src", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE make_fp32(x[15:0]) {
        	y.fp32  := 0.0
        	y[31:16] := x[15:0]
        	RETURN y
        }
        dst := src
        FOR j := 0 to 15
        	dst.fp32[j] += make_fp32(a.bf16[2*j+1]) * make_fp32(b.bf16[2*j+1])
        	dst.fp32[j] += make_fp32(a.bf16[2*j+0]) * make_fp32(b.bf16[2*j+0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_dpbf16_ps
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512bh a, 
    __m512bh b
:Param ETypes:
    FP32 src, 
    MASK k, 
    BF16 a, 
    BF16 b

.. code-block:: C

    __m512 _mm512_mask_dpbf16_ps(__m512 src, __mmask16 k,
                                 __m512bh a, __m512bh b)

.. admonition:: Intel Description

    Compute dot-product of BF16 (16-bit) floating-point pairs in "a" and "b", accumulating the intermediate single-precision (32-bit) floating-point elements with elements in "src", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE make_fp32(x[15:0]) {
        	y.fp32  := 0.0
        	y[31:16] := x[15:0]
        	RETURN y
        }
        dst := src
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp32[j] += make_fp32(a.bf16[2*j+1]) * make_fp32(b.bf16[2*j+1])
        		dst.fp32[j] += make_fp32(a.bf16[2*j+0]) * make_fp32(b.bf16[2*j+0])
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_dpbf16_ps
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 src, 
    __m512bh a, 
    __m512bh b
:Param ETypes:
    MASK k, 
    FP32 src, 
    BF16 a, 
    BF16 b

.. code-block:: C

    __m512 _mm512_maskz_dpbf16_ps(__mmask16 k, __m512 src,
                                  __m512bh a, __m512bh b)

.. admonition:: Intel Description

    Compute dot-product of BF16 (16-bit) floating-point pairs in "a" and "b", accumulating the intermediate single-precision (32-bit) floating-point elements with elements in "src", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE make_fp32(x[15:0]) {
        	y.fp32  := 0.0
        	y[31:16] := x[15:0]
        	RETURN y
        }
        dst := src
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp32[j] += make_fp32(a.bf16[2*j+1]) * make_fp32(b.bf16[2*j+1])
        		dst.fp32[j] += make_fp32(a.bf16[2*j+0]) * make_fp32(b.bf16[2*j+0])
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_ph
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_add_ph(__m512h a, __m512h b);

.. admonition:: Intel Description

    Add packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.fp16[j] := a.fp16[j] + b.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_ph
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_add_ph(__m512h src, __mmask32 k,
                               __m512h a, __m512h b)

.. admonition:: Intel Description

    Add packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] + b.fp16[j]
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_ph
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_add_ph(__mmask32 k, __m512h a,
                                __m512h b)

.. admonition:: Intel Description

    Add packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] + b.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_add_round_ph
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_add_round_ph(__m512h a, __m512h b,
                                int rounding)

.. admonition:: Intel Description

    Add packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.fp16[j] := a.fp16[j] + b.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_add_round_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_add_round_ph(__m512h src, __mmask32 k,
                                     __m512h a, __m512h b,
                                     int rounding)

.. admonition:: Intel Description

    Add packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] + b.fp16[j]
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_add_round_ph
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_add_round_ph(__mmask32 k, __m512h a,
                                      __m512h b, int rounding)

.. admonition:: Intel Description

    Add packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] + b.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_div_ph
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_div_ph(__m512h a, __m512h b);

.. admonition:: Intel Description

    Divide packed half-precision (16-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := a.fp16[j] / b.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_div_ph
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_div_ph(__m512h src, __mmask32 k,
                               __m512h a, __m512h b)

.. admonition:: Intel Description

    Divide packed half-precision (16-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] / b.fp16[j]
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_div_ph
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_div_ph(__mmask32 k, __m512h a,
                                __m512h b)

.. admonition:: Intel Description

    Divide packed half-precision (16-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] / b.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_div_round_ph
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_div_round_ph(__m512h a, __m512h b,
                                int rounding)

.. admonition:: Intel Description

    Divide packed half-precision (16-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := a.fp16[j] / b.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_div_round_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_div_round_ph(__m512h src, __mmask32 k,
                                     __m512h a, __m512h b,
                                     int rounding)

.. admonition:: Intel Description

    Divide packed half-precision (16-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] / b.fp16[j]
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_div_round_ph
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_div_round_ph(__mmask32 k, __m512h a,
                                      __m512h b, int rounding)

.. admonition:: Intel Description

    Divide packed half-precision (16-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] / b.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmadd_ph
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_fmadd_ph(__m512h a, __m512h b, __m512h c);

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmadd_ph
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_mask_fmadd_ph(__m512h a, __mmask32 k,
                                 __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmadd_ph
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k

.. code-block:: C

    __m512h _mm512_mask3_fmadd_ph(__m512h a, __m512h b,
                                  __m512h c, __mmask32 k)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmadd_ph
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_maskz_fmadd_ph(__mmask32 k, __m512h a,
                                  __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmadd_round_ph
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fmadd_round_ph(__m512h a, __m512h b,
                                  __m512h c,
                                  const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmadd_round_ph
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fmadd_round_ph(__m512h a, __mmask32 k,
                                       __m512h b, __m512h c,
                                       const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmadd_round_ph
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask3_fmadd_round_ph(__m512h a, __m512h b,
                                        __m512h c, __mmask32 k,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmadd_round_ph
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fmadd_round_ph(__mmask32 k, __m512h a,
                                        __m512h b, __m512h c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fnmadd_ph
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_fnmadd_ph(__m512h a, __m512h b, __m512h c);

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) + c.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fnmadd_ph
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_mask_fnmadd_ph(__m512h a, __mmask32 k,
                                  __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmadd_ph
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k

.. code-block:: C

    __m512h _mm512_mask3_fnmadd_ph(__m512h a, __m512h b,
                                   __m512h c, __mmask32 k)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmadd_ph
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_maskz_fnmadd_ph(__mmask32 k, __m512h a,
                                   __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fnmadd_round_ph
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fnmadd_round_ph(__m512h a, __m512h b,
                                   __m512h c,
                                   const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) + c.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fnmadd_round_ph
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fnmadd_round_ph(__m512h a, __mmask32 k,
                                        __m512h b, __m512h c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmadd_round_ph
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask3_fnmadd_round_ph(__m512h a, __m512h b,
                                         __m512h c, __mmask32 k,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmadd_round_ph
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fnmadd_round_ph(__mmask32 k, __m512h a,
                                         __m512h b, __m512h c,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsub_ph
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_fmsub_ph(__m512h a, __m512h b, __m512h c);

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsub_ph
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_mask_fmsub_ph(__m512h a, __mmask32 k,
                                 __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsub_ph
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k

.. code-block:: C

    __m512h _mm512_mask3_fmsub_ph(__m512h a, __m512h b,
                                  __m512h c, __mmask32 k)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsub_ph
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_maskz_fmsub_ph(__mmask32 k, __m512h a,
                                  __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsub_round_ph
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fmsub_round_ph(__m512h a, __m512h b,
                                  __m512h c,
                                  const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsub_round_ph
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fmsub_round_ph(__m512h a, __mmask32 k,
                                       __m512h b, __m512h c,
                                       const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsub_round_ph
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask3_fmsub_round_ph(__m512h a, __m512h b,
                                        __m512h c, __mmask32 k,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsub_round_ph
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fmsub_round_ph(__mmask32 k, __m512h a,
                                        __m512h b, __m512h c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fnmsub_ph
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_fnmsub_ph(__m512h a, __m512h b, __m512h c);

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) - c.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fnmsub_ph
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_mask_fnmsub_ph(__m512h a, __mmask32 k,
                                  __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmsub_ph
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k

.. code-block:: C

    __m512h _mm512_mask3_fnmsub_ph(__m512h a, __m512h b,
                                   __m512h c, __mmask32 k)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmsub_ph
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_maskz_fnmsub_ph(__mmask32 k, __m512h a,
                                   __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fnmsub_round_ph
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fnmsub_round_ph(__m512h a, __m512h b,
                                   __m512h c,
                                   const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) - c.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fnmsub_round_ph
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fnmsub_round_ph(__m512h a, __mmask32 k,
                                        __m512h b, __m512h c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fnmsub_round_ph
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask3_fnmsub_round_ph(__m512h a, __m512h b,
                                         __m512h c, __mmask32 k,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fnmsub_round_ph
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fnmsub_round_ph(__mmask32 k, __m512h a,
                                         __m512h b, __m512h c,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := -(a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmaddsub_ph
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_fmaddsub_ph(__m512h a, __m512h b, __m512h c);

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF ((j & 1) == 0)
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmaddsub_ph
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_mask_fmaddsub_ph(__m512h a, __mmask32 k,
                                    __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmaddsub_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k

.. code-block:: C

    __m512h _mm512_mask3_fmaddsub_ph(__m512h a, __m512h b,
                                     __m512h c, __mmask32 k)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmaddsub_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_maskz_fmaddsub_ph(__mmask32 k, __m512h a,
                                     __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmaddsub_round_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fmaddsub_round_ph(__m512h a, __m512h b,
                                     __m512h c,
                                     const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF ((j & 1) == 0)
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	ELSE
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmaddsub_round_ph
-----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fmaddsub_round_ph(__m512h a,
                                          __mmask32 k,
                                          __m512h b, __m512h c,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmaddsub_round_ph
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask3_fmaddsub_round_ph(__m512h a, __m512h b,
                                           __m512h c,
                                           __mmask32 k,
                                           const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmaddsub_round_ph
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fmaddsub_round_ph(__mmask32 k,
                                           __m512h a, __m512h b,
                                           __m512h c,
                                           const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsubadd_ph
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_fmsubadd_ph(__m512h a, __m512h b, __m512h c);

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" to/from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF ((j & 1) == 0)
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsubadd_ph
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_mask_fmsubadd_ph(__m512h a, __mmask32 k,
                                    __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsubadd_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k

.. code-block:: C

    __m512h _mm512_mask3_fmsubadd_ph(__m512h a, __m512h b,
                                     __m512h c, __mmask32 k)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsubadd_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_maskz_fmsubadd_ph(__mmask32 k, __m512h a,
                                     __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" to/from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmsubadd_round_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fmsubadd_round_ph(__m512h a, __m512h b,
                                     __m512h c,
                                     const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" to/from the intermediate result, and store the results in "dst".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF ((j & 1) == 0)
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        	ELSE
        		dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmsubadd_round_ph
-----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask32 k, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fmsubadd_round_ph(__m512h a,
                                          __mmask32 k,
                                          __m512h b, __m512h c,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmsubadd_round_ph
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask32 k, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask3_fmsubadd_round_ph(__m512h a, __m512h b,
                                           __m512h c,
                                           __mmask32 k,
                                           const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" to/from the intermediate result, and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set).
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := c.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmsubadd_round_ph
------------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fmsubadd_round_ph(__mmask32 k,
                                           __m512h a, __m512h b,
                                           __m512h c,
                                           const int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" to/from the intermediate result, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		IF ((j & 1) == 0)
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) + c.fp16[j]
        		ELSE
        			dst.fp16[j] := (a.fp16[j] * b.fp16[j]) - c.fp16[j]
        		FI
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_ph
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_sub_ph(__m512h a, __m512h b);

.. admonition:: Intel Description

    Subtract packed half-precision (16-bit) floating-point elements in "b" from packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.fp16[j] := a.fp16[j] - b.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sub_round_ph
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_sub_round_ph(__m512h a, __m512h b,
                                int rounding)

.. admonition:: Intel Description

    Subtract packed half-precision (16-bit) floating-point elements in "b" from packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	dst.fp16[j] := a.fp16[j] - b.fp16[j]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_ph
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_sub_ph(__m512h src, __mmask32 k,
                               __m512h a, __m512h b)

.. admonition:: Intel Description

    Subtract packed half-precision (16-bit) floating-point elements in "b" from packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] - b.fp16[j]
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sub_round_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_sub_round_ph(__m512h src, __mmask32 k,
                                     __m512h a, __m512h b,
                                     int rounding)

.. admonition:: Intel Description

    Subtract packed half-precision (16-bit) floating-point elements in "b" from packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] - b.fp16[j]
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_ph
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_sub_ph(__mmask32 k, __m512h a,
                                __m512h b)

.. admonition:: Intel Description

    Subtract packed half-precision (16-bit) floating-point elements in "b" from packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] - b.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sub_round_ph
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_sub_round_ph(__mmask32 k, __m512h a,
                                      __m512h b, int rounding)

.. admonition:: Intel Description

    Subtract packed half-precision (16-bit) floating-point elements in "b" from packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 TO 31
        	IF k[j]
        		dst.fp16[j] := a.fp16[j] - b.fp16[j]
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_ph
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mul_ph(__m512h a, __m512h b);

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 TO 31
        	dst.fp16[i] := a.fp16[i] * b.fp16[i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_round_ph
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mul_round_ph(__m512h a, __m512h b,
                                int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst".
    	 [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 TO 31
        	dst.fp16[i] := a.fp16[i] * b.fp16[i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_ph
------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_mul_ph(__m512h src, __mmask32 k,
                               __m512h a, __m512h b)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 TO 31
        	IF k[i]
        		dst.fp16[i] := a.fp16[i] * b.fp16[i]
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_round_ph
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_mul_round_ph(__m512h src, __mmask32 k,
                                     __m512h a, __m512h b,
                                     int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	 [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 TO 31
        	IF k[i]
        		dst.fp16[i] := a.fp16[i] * b.fp16[i]
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_ph
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_mul_ph(__mmask32 k, __m512h a,
                                __m512h b)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 TO 31
        	IF k[i]
        		dst.fp16[i] := a.fp16[i] * b.fp16[i]
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_round_ph
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_mul_round_ph(__mmask32 k, __m512h a,
                                      __m512h b, int rounding)

.. admonition:: Intel Description

    Multiply packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	 [round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 TO 31
        	IF k[i]
        		dst.fp16[i] := a.fp16[i] * b.fp16[i]
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmul_pch
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_fmul_pch(__m512h a, __m512h b);

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_pch
--------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mul_pch(__m512h a, __m512h b);

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmul_pch
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_fmul_pch(__m512h src, __mmask16 k,
                                 __m512h a, __m512h b)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := src.fp16[2*i+0]
        		dst.fp16[2*i+1] := src.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_pch
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_mul_pch(__m512h src, __mmask16 k,
                                __m512h a, __m512h b)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := src.fp16[2*i+0]
        		dst.fp16[2*i+1] := src.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmul_pch
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_fmul_pch(__mmask16 k, __m512h a,
                                  __m512h b)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_pch
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_mul_pch(__mmask16 k, __m512h a,
                                 __m512h b)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmul_round_pch
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fmul_round_pch(__m512h a, __m512h b,
                                  const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    			[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mul_round_pch
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mul_round_pch(__m512h a, __m512h b,
                                 const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    			[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmul_round_pch
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fmul_round_pch(__m512h src, __mmask16 k,
                                       __m512h a, __m512h b,
                                       const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := src.fp16[2*i+0]
        		dst.fp16[2*i+1] := src.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_mul_round_pch
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_mul_round_pch(__m512h src, __mmask16 k,
                                      __m512h a, __m512h b,
                                      const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := src.fp16[2*i+0]
        		dst.fp16[2*i+1] := src.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmul_round_pch
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fmul_round_pch(__mmask16 k, __m512h a,
                                        __m512h b,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    			[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_mul_round_pch
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_mul_round_pch(__mmask16 k, __m512h a,
                                       __m512h b,
                                       const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    			[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fcmul_pch
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_fcmul_pch(__m512h a, __m512h b);

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cmul_pch
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_cmul_pch(__m512h a, __m512h b);

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fcmul_pch
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_fcmul_pch(__m512h src, __mmask16 k,
                                  __m512h a, __m512h b)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := src.fp16[2*i+0]
        		dst.fp16[2*i+1] := src.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cmul_pch
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_cmul_pch(__m512h src, __mmask16 k,
                                 __m512h a, __m512h b)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := src.fp16[2*i+0]
        		dst.fp16[2*i+1] := src.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fcmul_pch
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_fcmul_pch(__mmask16 k, __m512h a,
                                   __m512h b)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cmul_pch
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_cmul_pch(__mmask16 k, __m512h a,
                                  __m512h b)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fcmul_round_pch
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fcmul_round_pch(__m512h a, __m512h b,
                                   const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cmul_round_pch
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_cmul_round_pch(__m512h a, __m512h b,
                                  const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fcmul_round_pch
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fcmul_round_pch(__m512h src,
                                        __mmask16 k, __m512h a,
                                        __m512h b,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := src.fp16[2*i+0]
        		dst.fp16[2*i+1] := src.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cmul_round_pch
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_cmul_round_pch(__m512h src, __mmask16 k,
                                       __m512h a, __m512h b,
                                       const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := src.fp16[2*i+0]
        		dst.fp16[2*i+1] := src.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fcmul_round_pch
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fcmul_round_pch(__mmask16 k, __m512h a,
                                         __m512h b,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_cmul_round_pch
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_cmul_round_pch(__mmask16 k, __m512h a,
                                        __m512h b,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1])
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1])
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmadd_pch
----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_fmadd_pch(__m512h a, __m512h b, __m512h c);

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmadd_pch
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask16 k, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_mask_fmadd_pch(__m512h a, __mmask16 k,
                                  __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", accumulate to the corresponding complex numbers in "src", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := a.fp16[2*i+0]
        		dst.fp16[2*i+1] := a.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmadd_pch
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask16 k
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k

.. code-block:: C

    __m512h _mm512_mask3_fmadd_pch(__m512h a, __m512h b,
                                   __m512h c, __mmask16 k)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", accumulate to the corresponding complex numbers in "src", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := c.fp16[2*i+0]
        		dst.fp16[2*i+1] := c.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmadd_pch
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_maskz_fmadd_pch(__mmask16 k, __m512h a,
                                   __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fmadd_round_pch
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fmadd_round_pch(__m512h a, __m512h b,
                                   __m512h c,
                                   const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fmadd_round_pch
---------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask16 k, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fmadd_round_pch(__m512h a, __mmask16 k,
                                        __m512h b, __m512h c,
                                        const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := a.fp16[2*i+0]
        		dst.fp16[2*i+1] := a.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fmadd_round_pch
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask16 k, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask3_fmadd_round_pch(__m512h a, __m512h b,
                                         __m512h c, __mmask16 k,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := c.fp16[2*i+0]
        		dst.fp16[2*i+1] := c.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fmadd_round_pch
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fmadd_round_pch(__mmask16 k, __m512h a,
                                         __m512h b, __m512h c,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" and "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) - (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) + (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fcmadd_pch
-----------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_fcmadd_pch(__m512h a, __m512h b, __m512h c);

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fcmadd_pch
----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask16 k, 
    __m512h b, 
    __m512h c
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_mask_fcmadd_pch(__m512h a, __mmask16 k,
                                   __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := a.fp16[2*i+0]
        		dst.fp16[2*i+1] := a.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fcmadd_pch
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask16 k
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k

.. code-block:: C

    __m512h _mm512_mask3_fcmadd_pch(__m512h a, __m512h b,
                                    __m512h c, __mmask16 k)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := c.fp16[2*i+0]
        		dst.fp16[2*i+1] := c.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fcmadd_pch
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    __m512h c
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c

.. code-block:: C

    __m512h _mm512_maskz_fcmadd_pch(__mmask16 k, __m512h a,
                                    __m512h b, __m512h c)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fcmadd_round_pch
-----------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_fcmadd_round_pch(__m512h a, __m512h b,
                                    __m512h c,
                                    const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        	dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fcmadd_round_pch
----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __mmask16 k, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    FP16 a, 
    MASK k, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_fcmadd_round_pch(__m512h a, __mmask16 k,
                                         __m512h b, __m512h c,
                                         const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := a.fp16[2*i+0]
        		dst.fp16[2*i+1] := a.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask3_fcmadd_round_pch
-----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    __m512h c, 
    __mmask16 k, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    FP16 c, 
    MASK k, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask3_fcmadd_round_pch(__m512h a, __m512h b,
                                          __m512h c,
                                          __mmask16 k,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using writemask "k" (elements are copied from "c" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := c.fp16[2*i+0]
        		dst.fp16[2*i+1] := c.fp16[2*i+1]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fcmadd_round_pch
-----------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a, 
    __m512h b, 
    __m512h c, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    FP16 c, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_fcmadd_round_pch(__mmask16 k,
                                          __m512h a, __m512h b,
                                          __m512h c,
                                          const int rounding)

.. admonition:: Intel Description

    Multiply packed complex numbers in "a" by the complex conjugates of packed complex numbers in "b", accumulate to the corresponding complex numbers in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[2*i+0] := (a.fp16[2*i+0] * b.fp16[2*i+0]) + (a.fp16[2*i+1] * b.fp16[2*i+1]) + c.fp16[2*i+0]
        		dst.fp16[2*i+1] := (a.fp16[2*i+1] * b.fp16[2*i+0]) - (a.fp16[2*i+0] * b.fp16[2*i+1]) + c.fp16[2*i+1]
        	ELSE
        		dst.fp16[2*i+0] := 0
        		dst.fp16[2*i+1] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_reduce_add_ph
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: _Float16
:Param Types:
    __m512h a
:Param ETypes:
    FP32 a

.. code-block:: C

    _Float16 _mm512_reduce_add_ph(__m512h a);

.. admonition:: Intel Description

    Reduce the packed half-precision (16-bit) floating-point elements in "a" by addition. Returns the sum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := a
        FOR i := 0 to 15
        	tmp.fp16[i] := tmp.fp16[i] + a.fp16[i+16]
        ENDFOR
        FOR i := 0 to 7
        	tmp.fp16[i] := tmp.fp16[i] + tmp.fp16[i+8]
        ENDFOR
        FOR i := 0 to 3
        	tmp.fp16[i] := tmp.fp16[i] + tmp.fp16[i+4]
        ENDFOR
        FOR i := 0 to 1
        	tmp.fp16[i] := tmp.fp16[i] + tmp.fp16[i+2]
        ENDFOR
        dst.fp16[0] := tmp.fp16[0] + tmp.fp16[1]
        	

_mm512_reduce_mul_ph
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: _Float16
:Param Types:
    __m512h a
:Param ETypes:
    FP32 a

.. code-block:: C

    _Float16 _mm512_reduce_mul_ph(__m512h a);

.. admonition:: Intel Description

    Reduce the packed half-precision (16-bit) floating-point elements in "a" by multiplication. Returns the product of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := a
        FOR i := 0 to 15
        	tmp.fp16[i] := tmp.fp16[i] * a.fp16[i+16]
        ENDFOR
        FOR i := 0 to 7
        	tmp.fp16[i] := tmp.fp16[i] * tmp.fp16[i+8]
        ENDFOR
        FOR i := 0 to 3
        	tmp.fp16[i] := tmp.fp16[i] * tmp.fp16[i+4]
        ENDFOR
        FOR i := 0 to 1
        	tmp.fp16[i] := tmp.fp16[i] * tmp.fp16[i+2]
        ENDFOR
        dst.fp16[0] := tmp.fp16[0] * tmp.fp16[1]
        	

_mm512_reduce_max_ph
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: _Float16
:Param Types:
    __m512h a
:Param ETypes:
    FP32 a

.. code-block:: C

    _Float16 _mm512_reduce_max_ph(__m512h a);

.. admonition:: Intel Description

    Reduce the packed half-precision (16-bit) floating-point elements in "a" by maximum. Returns the maximum of all elements in "a". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := a
        FOR i := 0 to 15
        	tmp.fp16[i] := (a.fp16[i] > a.fp16[i+16] ? a.fp16[i] : a.fp16[i+16])
        ENDFOR
        FOR i := 0 to 7
        	tmp.fp16[i] := (tmp.fp16[i] > tmp.fp16[i+8] ? tmp.fp16[i] : tmp.fp16[i+8])
        ENDFOR
        FOR i := 0 to 3
        	tmp.fp16[i] := (tmp.fp16[i] > tmp.fp16[i+4] ? tmp.fp16[i] : tmp.fp16[i+4])
        ENDFOR
        FOR i := 0 to 1
        	tmp.fp16[i] := (tmp.fp16[i] > tmp.fp16[i+2] ? tmp.fp16[i] : tmp.fp16[i+2])
        ENDFOR
        dst.fp16[0] := (tmp.fp16[0] > tmp.fp16[1] ? tmp.fp16[0] : tmp.fp16[1])
        	

_mm512_reduce_min_ph
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: _Float16
:Param Types:
    __m512h a
:Param ETypes:
    FP32 a

.. code-block:: C

    _Float16 _mm512_reduce_min_ph(__m512h a);

.. admonition:: Intel Description

    Reduce the packed half-precision (16-bit) floating-point elements in "a" by minimum. Returns the minimum of all elements in "a". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := a
        FOR i := 0 to 15
        	tmp.fp16[i] := (a.fp16[i] < a.fp16[i+16] ? tmp.fp16[i] : a.fp16[i+16])
        ENDFOR
        FOR i := 0 to 7
        	tmp.fp16[i] := (tmp.fp16[i] < tmp.fp16[i+8] ? tmp.fp16[i] : tmp.fp16[i+8])
        ENDFOR
        FOR i := 0 to 3
        	tmp.fp16[i] := (tmp.fp16[i] < tmp.fp16[i+4] ? tmp.fp16[i] : tmp.fp16[i+4])
        ENDFOR
        FOR i := 0 to 1
        	tmp.fp16[i] := (tmp.fp16[i] < tmp.fp16[i+2] ? tmp.fp16[i] : tmp.fp16[i+2])
        ENDFOR
        dst.fp16[0] := (tmp.fp16[0] < tmp.fp16[1] ? tmp.fp16[0] : tmp.fp16[1])
        	

_mm512_abs_ph
-------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h v2
:Param ETypes:
    FP16 v2

.. code-block:: C

    __m512h _mm512_abs_ph(__m512h v2);

.. admonition:: Intel Description

    Finds the absolute value of each packed half-precision (16-bit) floating-point element in "v2", storing the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := ABS(v2.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_conj_pch
---------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512h _mm512_conj_pch(__m512h a);

.. admonition:: Intel Description

    Compute the complex conjugates of complex numbers in "a", and store the results in "dst". Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] XOR FP32(-0.0)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_conj_pch
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask16 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_conj_pch(__m512h src, __mmask16 k,
                                 __m512h a)

.. admonition:: Intel Description

    Compute the complex conjugates of complex numbers in "a", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR FP32(-0.0)
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_conj_pch
---------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask16 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_maskz_conj_pch(__mmask16 k, __m512h a);

.. admonition:: Intel Description

    Compute the complex conjugates of complex numbers in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each complex number is composed of two adjacent half-precision (16-bit) floating-point elements, which defines the complex number "complex = vec.fp16[0] + i * vec.fp16[1]", or the complex conjugate "conjugate = vec.fp16[0] - i * vec.fp16[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR FP32(-0.0)
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_dpwssds_epi32
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i src, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 src, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_dpwssds_epi32(__mmask16 k, __m512i src,
                                       __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        		tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        		dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2)
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_dpwssds_epi32
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_dpwssds_epi32(__m512i src, __mmask16 k,
                                      __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        		tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        		dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2)
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_dpwssds_epi32
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_dpwssds_epi32(__m512i src, __m512i a,
                                 __m512i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        	tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        	dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_dpwssd_epi32
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i src, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 src, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_dpwssd_epi32(__mmask16 k, __m512i src,
                                      __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        		tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        		dst.dword[j] := src.dword[j] + tmp1 + tmp2
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_dpwssd_epi32
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_dpwssd_epi32(__m512i src, __mmask16 k,
                                     __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        		tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        		dst.dword[j] := src.dword[j] + tmp1 + tmp2
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_dpwssd_epi32
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_dpwssd_epi32(__m512i src, __m512i a,
                                __m512i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        	tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        	dst.dword[j] := src.dword[j] + tmp1 + tmp2
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_dpbusds_epi32
--------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i src, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 src, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_maskz_dpbusds_epi32(__mmask16 k, __m512i src,
                                       __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        		tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        		tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        		tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        		dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4)
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_dpbusds_epi32
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    MASK k, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_mask_dpbusds_epi32(__m512i src, __mmask16 k,
                                      __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        		tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        		tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        		tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        		dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4)
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_dpbusds_epi32
--------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_dpbusds_epi32(__m512i src, __m512i a,
                                 __m512i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        	tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        	tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        	tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        	dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_dpbusd_epi32
-------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i src, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 src, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_maskz_dpbusd_epi32(__mmask16 k, __m512i src,
                                      __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        		tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        		tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        		tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        		dst.dword[j] := src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4
        	ELSE
        		dst.dword[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_dpbusd_epi32
------------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    MASK k, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_mask_dpbusd_epi32(__m512i src, __mmask16 k,
                                     __m512i a, __m512i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        		tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        		tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        		tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        		dst.dword[j] := src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4
        	ELSE
        		dst.dword[j] := src.dword[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_dpbusd_epi32
-------------------
:Tech: AVX-512
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX-512-Arithmetic-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 src, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m512i _mm512_dpbusd_epi32(__m512i src, __m512i a,
                                __m512i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        	tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        	tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        	tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        	dst.dword[j] := src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4
        ENDFOR
        dst[MAX:512] := 0
        	

