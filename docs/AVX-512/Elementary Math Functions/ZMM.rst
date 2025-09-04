AVX-512-Elementary Math Functions-ZMM
=====================================

_mm512_mask_rcp14_pd
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_rcp14_pd(__m512d src, __mmask8 k,
                                 __m512d a)

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (1.0 / a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rcp14_pd
---------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_rcp14_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (1.0 / a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rcp14_pd
---------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_rcp14_pd(__m512d a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := (1.0 / a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rcp14_ps
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_rcp14_ps(__m512 src, __mmask16 k,
                                __m512 a)

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (1.0 / a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rcp14_ps
---------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_rcp14_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (1.0 / a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rcp14_ps
---------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_rcp14_ps(__m512 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := (1.0 / a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rsqrt14_pd
----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_rsqrt14_pd(__m512d src, __mmask8 k,
                                   __m512d a)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (1.0 / SQRT(a[i+63:i]))
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rsqrt14_pd
-----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_rsqrt14_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (1.0 / SQRT(a[i+63:i]))
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rsqrt14_pd
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_rsqrt14_pd(__m512d a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := (1.0 / SQRT(a[i+63:i]))
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rsqrt14_ps
----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_rsqrt14_ps(__m512 src, __mmask16 k,
                                  __m512 a)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (1.0 / SQRT(a[i+31:i]))
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rsqrt14_ps
-----------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_rsqrt14_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (1.0 / SQRT(a[i+31:i]))
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rsqrt14_ps
-----------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_rsqrt14_ps(__m512 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 2^-14.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := (1.0 / SQRT(a[i+31:i]))
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sqrt_pd
-------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_sqrt_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SQRT(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sqrt_round_pd
-------------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_sqrt_round_pd(__m512d src, __mmask8 k,
                                      __m512d a, int rounding)

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SQRT(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sqrt_pd
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_sqrt_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SQRT(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sqrt_round_pd
--------------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_sqrt_round_pd(__mmask8 k, __m512d a,
                                       int rounding)

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note].

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SQRT(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sqrt_pd
--------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_sqrt_pd(__m512d a);

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SQRT(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sqrt_round_pd
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_sqrt_round_pd(__m512d a, int rounding);

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".
    	[round_note].

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SQRT(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sqrt_ps
-------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_sqrt_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SQRT(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sqrt_round_ps
-------------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_sqrt_round_ps(__m512 src, __mmask16 k,
                                     __m512 a, int rounding)

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SQRT(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sqrt_ps
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_sqrt_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SQRT(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sqrt_round_ps
--------------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_sqrt_round_ps(__mmask16 k, __m512 a,
                                      int rounding)

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SQRT(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sqrt_ps
--------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_sqrt_ps(__m512 a);

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SQRT(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sqrt_round_ps
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_sqrt_round_ps(__m512 a, int rounding);

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".
    	[round_note].

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SQRT(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rsqrt_ph
---------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_rsqrt_ph(__m512h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	dst.fp16[i] := (1.0 / SQRT(a.fp16[i]))
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rsqrt_ph
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_rsqrt_ph(__m512h src, __mmask32 k,
                                 __m512h a)

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := (1.0 / SQRT(a.fp16[i]))
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rsqrt_ph
---------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_maskz_rsqrt_ph(__mmask32 k, __m512h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := (1.0 / SQRT(a.fp16[i]))
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sqrt_ph
--------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_sqrt_ph(__m512h a);

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	dst.fp16[i] := SQRT(a.fp16[i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sqrt_round_ph
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    const int rounding
:Param ETypes:
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_sqrt_round_ph(__m512h a, const int rounding);

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	dst.fp16[i] := SQRT(a.fp16[i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sqrt_ph
-------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_sqrt_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := SQRT(a.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sqrt_round_ph
-------------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_sqrt_round_ph(__m512h src, __mmask32 k,
                                      __m512h a,
                                      const int rounding)

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := SQRT(a.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sqrt_ph
--------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_maskz_sqrt_ph(__mmask32 k, __m512h a);

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := SQRT(a.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_sqrt_round_ph
--------------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_sqrt_round_ph(__mmask32 k, __m512h a,
                                       const int rounding)

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := SQRT(a.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rcp_ph
-------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_rcp_ph(__m512h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	dst.fp16[i] := (1.0 / a.fp16[i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rcp_ph
------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_rcp_ph(__m512h src, __mmask32 k,
                               __m512h a)

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := (1.0 / a.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rcp_ph
-------------------
:Tech: AVX-512
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Elementary Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_maskz_rcp_ph(__mmask32 k, __m512h a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := (1.0 / a.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

