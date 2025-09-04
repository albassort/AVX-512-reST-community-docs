AVX-512-Elementary Math Functions-XMM
=====================================

_mm_mask_sqrt_pd
----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128d _mm_mask_sqrt_pd(__m128d src, __mmask8 k,
                             __m128d a)

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SQRT(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_pd
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128d _mm_maskz_sqrt_pd(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SQRT(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_sqrt_ps
----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128 _mm_mask_sqrt_ps(__m128 src, __mmask8 k, __m128 a);

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SQRT(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_ps
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128 _mm_maskz_sqrt_ps(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SQRT(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_rcp14_sd
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_mask_rcp14_sd(__m128d src, __mmask8 k,
                              __m128d a, __m128d b)

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := (1.0 / b[63:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_rcp14_sd
------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_maskz_rcp14_sd(__mmask8 k, __m128d a,
                               __m128d b)

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := (1.0 / b[63:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_rcp14_sd
------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_rcp14_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := (1.0 / b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_rcp14_ss
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_mask_rcp14_ss(__m128 src, __mmask8 k, __m128 a,
                             __m128 b)

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := (1.0 / b[31:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_rcp14_ss
------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_maskz_rcp14_ss(__mmask8 k, __m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := (1.0 / b[31:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_rcp14_ss
------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_rcp14_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := (1.0 / b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_rsqrt14_sd
-------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_mask_rsqrt14_sd(__m128d src, __mmask8 k,
                                __m128d a, __m128d b)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := (1.0 / SQRT(b[63:0]))
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_rsqrt14_sd
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_maskz_rsqrt14_sd(__mmask8 k, __m128d a,
                                 __m128d b)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := (1.0 / SQRT(b[63:0]))
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_rsqrt14_sd
--------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_rsqrt14_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := (1.0 / SQRT(b[63:0]))
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_rsqrt14_ss
-------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_mask_rsqrt14_ss(__m128 src, __mmask8 k, __m128 a,
                               __m128 b)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := (1.0 / SQRT(b[31:0]))
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_rsqrt14_ss
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_maskz_rsqrt14_ss(__mmask8 k, __m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := (1.0 / SQRT(b[31:0]))
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_rsqrt14_ss
--------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_rsqrt14_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := (1.0 / SQRT(b[31:0]))
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_sqrt_round_sd
----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128d _mm_mask_sqrt_round_sd(__m128d src, __mmask8 k,
                                   __m128d a, __m128d b,
                                   int rounding)

.. admonition:: Intel Description

    Compute the square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := SQRT(b[63:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_sqrt_sd
----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_mask_sqrt_sd(__m128d src, __mmask8 k, __m128d a,
                             __m128d b)

.. admonition:: Intel Description

    Compute the square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := SQRT(b[63:0])
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_round_sd
-----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128d _mm_maskz_sqrt_round_sd(__mmask8 k, __m128d a,
                                    __m128d b, int rounding)

.. admonition:: Intel Description

    Compute the square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := SQRT(b[63:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_sd
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_maskz_sqrt_sd(__mmask8 k, __m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := SQRT(b[63:0])
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_sqrt_round_sd
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m128d _mm_sqrt_round_sd(__m128d a, __m128d b,
                              int rounding)

.. admonition:: Intel Description

    Compute the square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := SQRT(b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_sqrt_round_ss
----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_mask_sqrt_round_ss(__m128 src, __mmask8 k,
                                  __m128 a, __m128 b,
                                  int rounding)

.. admonition:: Intel Description

    Compute the square root of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := SQRT(b[31:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_mask_sqrt_ss
----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_mask_sqrt_ss(__m128 src, __mmask8 k, __m128 a,
                            __m128 b)

.. admonition:: Intel Description

    Compute the square root of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := SQRT(b[31:0])
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_round_ss
-----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_maskz_sqrt_round_ss(__mmask8 k, __m128 a,
                                   __m128 b, int rounding)

.. admonition:: Intel Description

    Compute the square root of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := SQRT(b[31:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_ss
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_maskz_sqrt_ss(__mmask8 k, __m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the square root of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := SQRT(b[31:0])
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_sqrt_round_ss
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m128 _mm_sqrt_round_ss(__m128 a, __m128 b, int rounding);

.. admonition:: Intel Description

    Compute the square root of the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := SQRT(b[31:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_rsqrt_ph
------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_rsqrt_ph(__m128h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	dst.fp16[i] := (1.0 / SQRT(a.fp16[i]))
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_rsqrt_ph
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128h _mm_mask_rsqrt_ph(__m128h src, __mmask8 k,
                              __m128h a)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	IF k[i]
        		dst.fp16[i] := (1.0 / SQRT(a.fp16[i]))
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_rsqrt_ph
------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128h _mm_maskz_rsqrt_ph(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	IF k[i]
        		dst.fp16[i] := (1.0 / SQRT(a.fp16[i]))
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_sqrt_ph
-----------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_sqrt_ph(__m128h a);

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	dst.fp16[i] := SQRT(a.fp16[i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_sqrt_ph
----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128h _mm_mask_sqrt_ph(__m128h src, __mmask8 k,
                             __m128h a)

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	IF k[i]
        		dst.fp16[i] := SQRT(a.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_ph
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128h _mm_maskz_sqrt_ph(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	IF k[i]
        		dst.fp16[i] := SQRT(a.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_rcp_ph
----------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_rcp_ph(__m128h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	dst.fp16[i] := (1.0 / a.fp16[i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_rcp_ph
---------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m128h _mm_mask_rcp_ph(__m128h src, __mmask8 k, __m128h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	IF k[i]
        		dst.fp16[i] := (1.0 / a.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_rcp_ph
----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m128h _mm_maskz_rcp_ph(__mmask8 k, __m128h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	IF k[i]
        		dst.fp16[i] := (1.0 / a.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_rsqrt_sh
------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_rsqrt_sh(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := (1.0 / SQRT(b.fp16[0]))
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_rsqrt_sh
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_mask_rsqrt_sh(__m128h src, __mmask8 k,
                              __m128h a, __m128h b)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (1.0 / SQRT(b.fp16[0]))
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_rsqrt_sh
------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_maskz_rsqrt_sh(__mmask8 k, __m128h a,
                               __m128h b)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (1.0 / SQRT(b.fp16[0]))
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_sqrt_sh
-----------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_sqrt_sh(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compute the square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := SQRT(b.fp16[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_sqrt_round_sh
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_sqrt_round_sh(__m128h a, __m128h b,
                              const int rounding)

.. admonition:: Intel Description

    Compute the square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := SQRT(b.fp16[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_sqrt_sh
----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_mask_sqrt_sh(__m128h src, __mmask8 k, __m128h a,
                             __m128h b)

.. admonition:: Intel Description

    Compute the square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := SQRT(b.fp16[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_sqrt_round_sh
----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_mask_sqrt_round_sh(__m128h src, __mmask8 k,
                                   __m128h a, __m128h b,
                                   const int rounding)

.. admonition:: Intel Description

    Compute the square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := SQRT(b.fp16[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_sh
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_maskz_sqrt_sh(__mmask8 k, __m128h a, __m128h b);

.. admonition:: Intel Description

    Compute the square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := SQRT(b.fp16[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_sqrt_round_sh
-----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m128h _mm_maskz_sqrt_round_sh(__mmask8 k, __m128h a,
                                    __m128h b,
                                    const int rounding)

.. admonition:: Intel Description

    Compute the square root of the lower half-precision (16-bit) floating-point element in "b", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".
    		[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := SQRT(b.fp16[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_rcp_sh
----------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_rcp_sh(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower half-precision (16-bit) floating-point element in "a", store the result in the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := (1.0 / b.fp16[0])
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_rcp_sh
---------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_mask_rcp_sh(__m128h src, __mmask8 k, __m128h a,
                            __m128h b)

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower half-precision (16-bit) floating-point element in "a", store the result in the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (1.0 / b.fp16[0])
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_rcp_sh
----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_maskz_rcp_sh(__mmask8 k, __m128h a, __m128h b);

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower half-precision (16-bit) floating-point element in "a", store the result in the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := (1.0 / b.fp16[0])
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

