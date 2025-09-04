SVML-Trigonometry-ZMM
=====================

_mm512_acos_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_acos_pd(__m512d a);

.. admonition:: Intel Description

    Compute the inverse cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ACOS(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_acos_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_acos_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the inverse cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ACOS(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_acos_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_acos_ps(__m512 a);

.. admonition:: Intel Description

    Compute the inverse cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ACOS(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_acos_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_acos_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the inverse cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ACOS(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_acosh_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_acosh_pd(__m512d a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ACOSH(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_acosh_pd
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_acosh_pd(__m512d src, __mmask8 k,
                                 __m512d a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ACOSH(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_acosh_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_acosh_ps(__m512 a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ACOSH(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_acosh_ps
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_acosh_ps(__m512 src, __mmask16 k,
                                __m512 a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ACOSH(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_asin_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_asin_pd(__m512d a);

.. admonition:: Intel Description

    Compute the inverse sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ASIN(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_asin_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_asin_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the inverse sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ASIN(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_asin_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_asin_ps(__m512 a);

.. admonition:: Intel Description

    Compute the inverse sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ASIN(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_asin_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_asin_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the inverse sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ASIN(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_asinh_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_asinh_pd(__m512d a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ASINH(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_asinh_pd
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_asinh_pd(__m512d src, __mmask8 k,
                                 __m512d a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ASINH(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_asinh_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_asinh_ps(__m512 a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ASINH(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_asinh_ps
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_asinh_ps(__m512 src, __mmask16 k,
                                __m512 a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ASINH(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_atan2_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_atan2_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Compute the inverse tangent of packed double-precision (64-bit) floating-point elements in "a" divided by packed elements in "b", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ATAN2(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_atan2_pd
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_atan2_pd(__m512d src, __mmask8 k,
                                 __m512d a, __m512d b)

.. admonition:: Intel Description

    Compute the inverse tangent of packed double-precision (64-bit) floating-point elements in "a" divided by packed elements in "b", and store the results in "dst" expressed in radians using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ATAN2(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_atan2_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_atan2_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Compute the inverse tangent of packed single-precision (32-bit) floating-point elements in "a" divided by packed elements in "b", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ATAN2(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_atan2_ps
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_atan2_ps(__m512 src, __mmask16 k,
                                __m512 a, __m512 b)

.. admonition:: Intel Description

    Compute the inverse tangent of packed single-precision (32-bit) floating-point elements in "a" divided by packed elements in "b", and store the results in "dst" expressed in radians using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ATAN2(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_atan_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_atan_pd(__m512d a);

.. admonition:: Intel Description

    Compute the inverse tangent of packed double-precision (64-bit) floating-point elements in "a" and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ATAN(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_atan_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_atan_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the inverse tangent of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" expressed in radians using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ATAN(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_atan_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_atan_ps(__m512 a);

.. admonition:: Intel Description

    Compute the inverse tangent of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ATAN(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_atan_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_atan_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the inverse tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ATAN(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_atanh_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_atanh_pd(__m512d a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic tangent of packed double-precision (64-bit) floating-point elements in "a" and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ATANH(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_atanh_pd
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_atanh_pd(__m512d src, __mmask8 k,
                                 __m512d a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic tangent of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" expressed in radians using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ATANH(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_atanh_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_atanh_ps(__m512 a);

.. admonition:: Intel Description

    Compute the inverse hyperblic tangent of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ATANH(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_atanh_ps
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_atanh_ps(__m512 src, __mmask16 k,
                                __m512 a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ATANH(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cos_pd
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_cos_pd(__m512d a);

.. admonition:: Intel Description

    Compute the cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := COS(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cos_pd
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_cos_pd(__m512d src, __mmask8 k,
                               __m512d a)

.. admonition:: Intel Description

    Compute the cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := COS(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cos_ps
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_cos_ps(__m512 a);

.. admonition:: Intel Description

    Compute the cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := COS(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cos_ps
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_cos_ps(__m512 src, __mmask16 k,
                              __m512 a)

.. admonition:: Intel Description

    Compute the cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := COS(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cosd_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_cosd_pd(__m512d a);

.. admonition:: Intel Description

    Compute the cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := COSD(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cosd_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_cosd_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := COSD(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cosd_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_cosd_ps(__m512 a);

.. admonition:: Intel Description

    Compute the cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := COSD(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cosd_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_cosd_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := COSD(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cosh_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_cosh_pd(__m512d a);

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := COSH(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cosh_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_cosh_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := COSH(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_cosh_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_cosh_ps(__m512 a);

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := COSH(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_cosh_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_cosh_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := COSH(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sin_pd
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_sin_pd(__m512d a);

.. admonition:: Intel Description

    Compute the sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SIN(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sin_pd
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_sin_pd(__m512d src, __mmask8 k,
                               __m512d a)

.. admonition:: Intel Description

    Compute the sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SIN(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sin_ps
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_sin_ps(__m512 a);

.. admonition:: Intel Description

    Compute the sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SIN(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sin_ps
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_sin_ps(__m512 src, __mmask16 k,
                              __m512 a)

.. admonition:: Intel Description

    Compute the sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SIN(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sinh_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_sinh_pd(__m512d a);

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SINH(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sinh_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_sinh_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SINH(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sinh_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_sinh_ps(__m512 a);

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SINH(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sinh_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_sinh_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SINH(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sind_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_sind_pd(__m512d a);

.. admonition:: Intel Description

    Compute the sine of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SIND(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sind_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_sind_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the sine of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SIND(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sind_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_sind_ps(__m512 a);

.. admonition:: Intel Description

    Compute the sine of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SIND(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_sind_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_sind_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the sine of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SIND(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_tan_pd
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_tan_pd(__m512d a);

.. admonition:: Intel Description

    Compute the tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := TAN(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_tan_pd
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_tan_pd(__m512d src, __mmask8 k,
                               __m512d a)

.. admonition:: Intel Description

    Compute the tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := TAN(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_tan_ps
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_tan_ps(__m512 a);

.. admonition:: Intel Description

    Compute the tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := TAN(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_tan_ps
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_tan_ps(__m512 src, __mmask16 k,
                              __m512 a)

.. admonition:: Intel Description

    Compute the tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := TAN(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_tand_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_tand_pd(__m512d a);

.. admonition:: Intel Description

    Compute the tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := TAND(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_tand_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_tand_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := TAND(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_tand_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_tand_ps(__m512 a);

.. admonition:: Intel Description

    Compute the tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := TAND(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_tand_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_tand_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := TAND(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_tanh_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_tanh_pd(__m512d a);

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := TANH(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_tanh_pd
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512d _mm512_mask_tanh_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := TANH(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_tanh_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_tanh_ps(__m512 a);

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := TANH(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_tanh_ps
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512 _mm512_mask_tanh_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := TANH(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_sincos_pd
----------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d * mem_addr, 
    __m512d a
:Param ETypes:
    FP64 mem_addr, 
    FP64 a

.. code-block:: C

    __m512d _mm512_sincos_pd(__m512d * mem_addr, __m512d a);

.. admonition:: Intel Description

    Compute the sine and cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", and store the cosine into memory at "mem_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SIN(a[i+63:i])
        	MEM[mem_addr+i+63:mem_addr+i] := COS(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        cos_res[MAX:512] := 0
        	

_mm512_mask_sincos_pd
---------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d * mem_addr, 
    __m512d sin_src, 
    __m512d cos_src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 mem_addr, 
    FP64 sin_src, 
    FP64 cos_src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_sincos_pd(__m512d* mem_addr,
                                  __m512d sin_src,
                                  __m512d cos_src, __mmask8 k,
                                  __m512d a)

.. admonition:: Intel Description

    Compute the sine and cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", store the cosine into memory at "mem_addr". Elements are written to their respective locations using writemask "k" (elements are copied from "sin_src" or "cos_src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SIN(a[i+63:i])
        		MEM[mem_addr+i+63:mem_addr+i] := COS(a[i+63:i])
        	ELSE
        		dst[i+63:i] := sin_src[i+63:i]
        		MEM[mem_addr+i+63:mem_addr+i] := cos_src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        cos_res[MAX:512] := 0
        	

_mm512_sincos_ps
----------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 * mem_addr, 
    __m512 a
:Param ETypes:
    FP32 mem_addr, 
    FP32 a

.. code-block:: C

    __m512 _mm512_sincos_ps(__m512 * mem_addr, __m512 a);

.. admonition:: Intel Description

    Compute the sine and cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", and store the cosine into memory at "mem_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SIN(a[i+31:i])
        	MEM[mem_addr+i+31:mem_addr+i] := COS(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        cos_res[MAX:512] := 0
        	

_mm512_mask_sincos_ps
---------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 * mem_addr, 
    __m512 sin_src, 
    __m512 cos_src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 mem_addr, 
    FP32 sin_src, 
    FP32 cos_src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_sincos_ps(__m512* mem_addr,
                                 __m512 sin_src, __m512 cos_src,
                                 __mmask16 k, __m512 a)

.. admonition:: Intel Description

    Compute the sine and cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", store the cosine into memory at "mem_addr". Elements are written to their respective locations using writemask "k" (elements are copied from "sin_src" or "cos_src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SIN(a[i+31:i])
        		MEM[mem_addr+i+31:mem_addr+i] := COS(a[i+31:i])
        	ELSE
        		dst[i+31:i] := sin_src[i+31:i]
        		MEM[mem_addr+i+31:mem_addr+i] := cos_src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        cos_res[MAX:512] := 0
        	

_mm512_acos_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_acos_ph(__m512h a);

.. admonition:: Intel Description

    Compute the inverse cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ACOS(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_acosh_ph
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_acosh_ph(__m512h a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ACOSH(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_asin_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_asin_ph(__m512h a);

.. admonition:: Intel Description

    Compute the inverse sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ASIN(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_asinh_ph
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_asinh_ph(__m512h a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ASINH(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_atan2_ph
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_atan2_ph(__m512h a, __m512h b);

.. admonition:: Intel Description

    Compute the inverse tangent of packed half-precision (16-bit) floating-point elements in "a" divided by packed elements in "b", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ATAN2(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_atan_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_atan_ph(__m512h a);

.. admonition:: Intel Description

    Compute the inverse tangent of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ATAN(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_atanh_ph
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_atanh_ph(__m512h a);

.. admonition:: Intel Description

    Compute the inverse hyperblic tangent of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ATANH(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_cos_ph
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_cos_ph(__m512h a);

.. admonition:: Intel Description

    Compute the cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := COS(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_cosd_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_cosd_ph(__m512h a);

.. admonition:: Intel Description

    Compute the cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := COSD(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_cosh_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_cosh_ph(__m512h a);

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := COSH(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_acos_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_acos_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the inverse cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ACOS(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_acosh_ph
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_acosh_ph(__m512h src, __mmask32 k,
                                 __m512h a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ACOSH(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_asin_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_asin_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the inverse sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ASIN(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_asinh_ph
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_asinh_ph(__m512h src, __mmask32 k,
                                 __m512h a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ASINH(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_atan_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_atan_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the inverse tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ATAN(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_atanh_ph
--------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_atanh_ph(__m512h src, __mmask32 k,
                                 __m512h a)

.. admonition:: Intel Description

    Compute the inverse hyperbolic tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ATANH(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_cos_ph
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_cos_ph(__m512h src, __mmask32 k,
                               __m512h a)

.. admonition:: Intel Description

    Compute the cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := COS(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_cosd_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_cosd_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := COSD(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_cosh_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_cosh_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := COSH(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_sin_ph
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_sin_ph(__m512h src, __mmask32 k,
                               __m512h a)

.. admonition:: Intel Description

    Compute the sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := SIN(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_sincos_ph
---------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h* mem_addr, 
    __m512h sin_src, 
    __m512h cos_src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 mem_addr, 
    FP16 sin_src, 
    FP16 cos_src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_sincos_ph(__m512h* mem_addr,
                                  __m512h sin_src,
                                  __m512h cos_src, __mmask32 k,
                                  __m512h a)

.. admonition:: Intel Description

    Compute the sine and cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", store the cosine into memory at "mem_addr". Elements are written to their respective locations using writemask "k" (elements are copied from "sin_src" or "cos_src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := SIN(a[i+15:i])
        		MEM[mem_addr+i+15:mem_addr+i] := COS(a[i+15:i])
        	ELSE
        		dst[i+15:i] := sin_src[i+15:i]
        		MEM[mem_addr+i+15:mem_addr+i] := cos_src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        cos_res[MAX:512] := 0
        

_mm512_mask_sind_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_sind_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the sine of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := SIND(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_sinh_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_sinh_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := SINH(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_tan_ph
------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_tan_ph(__m512h src, __mmask32 k,
                               __m512h a)

.. admonition:: Intel Description

    Compute the tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := TAN(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_tand_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_tand_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := TAND(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_tanh_ph
-------------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
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

    __m512h _mm512_mask_tanh_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := TANH(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_sin_ph
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_sin_ph(__m512h a);

.. admonition:: Intel Description

    Compute the sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := SIN(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_sincos_ph
----------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h* mem_addr, 
    __m512h a
:Param ETypes:
    FP16 mem_addr, 
    FP16 a

.. code-block:: C

    __m512h _mm512_sincos_ph(__m512h* mem_addr, __m512h a);

.. admonition:: Intel Description

    Compute the sine and cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", and store the cosine into memory at "mem_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := SIN(a[i+15:i])
        	MEM[mem_addr+i+15:mem_addr+i] := COS(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        cos_res[MAX:512] := 0
        

_mm512_sind_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_sind_ph(__m512h a);

.. admonition:: Intel Description

    Compute the sine of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := SIND(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_sinh_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_sinh_ph(__m512h a);

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := SINH(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_tan_ph
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_tan_ph(__m512h a);

.. admonition:: Intel Description

    Compute the tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := TAN(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_tand_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_tand_ph(__m512h a);

.. admonition:: Intel Description

    Compute the tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := TAND(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_tanh_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_tanh_ph(__m512h a);

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := TANH(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

