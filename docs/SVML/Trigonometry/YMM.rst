SVML-Trigonometry-YMM
=====================

_mm256_acos_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_acos_pd(__m256d a);

.. admonition:: Intel Description

    Compute the inverse cosine of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ACOS(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_acos_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_acos_ps(__m256 a);

.. admonition:: Intel Description

    Compute the inverse cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ACOS(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_acosh_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_acosh_pd(__m256d a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ACOSH(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_acosh_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_acosh_ps(__m256 a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ACOSH(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_asin_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_asin_pd(__m256d a);

.. admonition:: Intel Description

    Compute the inverse sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ASIN(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_asin_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_asin_ps(__m256 a);

.. admonition:: Intel Description

    Compute the inverse sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ASIN(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_asinh_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_asinh_pd(__m256d a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ASINH(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_asinh_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_asinh_ps(__m256 a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ASINH(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_atan_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_atan_pd(__m256d a);

.. admonition:: Intel Description

    Compute the inverse tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ATAN(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_atan_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_atan_ps(__m256 a);

.. admonition:: Intel Description

    Compute the inverse tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ATAN(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_atan2_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_atan2_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the inverse tangent of packed double-precision (64-bit) floating-point elements in "a" divided by packed elements in "b", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ATAN2(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_atan2_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_atan2_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the inverse tangent of packed single-precision (32-bit) floating-point elements in "a" divided by packed elements in "b", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ATAN2(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_atanh_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_atanh_pd(__m256d a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ATANH(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_atanh_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_atanh_ps(__m256 a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ATANH(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cos_pd
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_cos_pd(__m256d a);

.. admonition:: Intel Description

    Compute the cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := COS(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cos_ps
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_cos_ps(__m256 a);

.. admonition:: Intel Description

    Compute the cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := COS(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cosd_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_cosd_pd(__m256d a);

.. admonition:: Intel Description

    Compute the cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := COSD(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cosd_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_cosd_ps(__m256 a);

.. admonition:: Intel Description

    Compute the cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := COSD(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cosh_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_cosh_pd(__m256d a);

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := COSH(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cosh_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_cosh_ps(__m256 a);

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := COSH(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_hypot_pd
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_hypot_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the length of the hypotenous of a right triangle, with the lengths of the other two sides of the triangle stored as packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := SQRT(POW(a[i+63:i], 2.0) + POW(b[i+63:i], 2.0))
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_hypot_ps
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_hypot_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the length of the hypotenous of a right triangle, with the lengths of the other two sides of the triangle stored as packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := SQRT(POW(a[i+31:i], 2.0) + POW(b[i+31:i], 2.0))
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sin_pd
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_sin_pd(__m256d a);

.. admonition:: Intel Description

    Compute the sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := SIN(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sin_ps
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_sin_ps(__m256 a);

.. admonition:: Intel Description

    Compute the sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := SIN(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sincos_pd
----------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d * mem_addr, 
    __m256d a
:Param ETypes:
    FP64 mem_addr, 
    FP64 a

.. code-block:: C

    __m256d _mm256_sincos_pd(__m256d * mem_addr, __m256d a);

.. admonition:: Intel Description

    Compute the sine and cosine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", and store the cosine into memory at "mem_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := SIN(a[i+63:i])
        	MEM[mem_addr+i+63:mem_addr+i] := COS(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sincos_ps
----------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 * mem_addr, 
    __m256 a
:Param ETypes:
    FP32 mem_addr, 
    FP32 a

.. code-block:: C

    __m256 _mm256_sincos_ps(__m256 * mem_addr, __m256 a);

.. admonition:: Intel Description

    Compute the sine and cosine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", and store the cosine into memory at "mem_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := SIN(a[i+31:i])
        	MEM[mem_addr+i+31:mem_addr+i] := COS(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sind_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_sind_pd(__m256d a);

.. admonition:: Intel Description

    Compute the sine of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := SIND(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sind_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_sind_ps(__m256 a);

.. admonition:: Intel Description

    Compute the sine of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := SIND(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sinh_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_sinh_pd(__m256d a);

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := SINH(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sinh_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_sinh_ps(__m256 a);

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := SINH(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_tan_pd
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_tan_pd(__m256d a);

.. admonition:: Intel Description

    Compute the tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := TAN(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_tan_ps
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_tan_ps(__m256 a);

.. admonition:: Intel Description

    Compute the tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := TAN(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_tand_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_tand_pd(__m256d a);

.. admonition:: Intel Description

    Compute the tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := TAND(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_tand_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_tand_ps(__m256 a);

.. admonition:: Intel Description

    Compute the tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := TAND(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_tanh_pd
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_tanh_pd(__m256d a);

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed double-precision (64-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := TANH(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_tanh_ps
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_tanh_ps(__m256 a);

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed single-precision (32-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := TANH(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_acos_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_acos_ph(__m256h a);

.. admonition:: Intel Description

    Compute the inverse cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ACOS(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_acosh_ph
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_acosh_ph(__m256h a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ACOSH(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_asin_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_asin_ph(__m256h a);

.. admonition:: Intel Description

    Compute the inverse sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ASIN(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_asinh_ph
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_asinh_ph(__m256h a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ASINH(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_atan2_ph
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a, 
    __m256h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_atan2_ph(__m256h a, __m256h b);

.. admonition:: Intel Description

    Compute the inverse tangent of packed half-precision (16-bit) floating-point elements in "a" divided by packed elements in "b", and store the results in "dst" expressed in radians.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ATAN2(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_atan_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_atan_ph(__m256h a);

.. admonition:: Intel Description

    Compute the inverse tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ATAN(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_atanh_ph
---------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_atanh_ph(__m256h a);

.. admonition:: Intel Description

    Compute the inverse hyperbolic tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ATANH(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_cos_ph
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_cos_ph(__m256h a);

.. admonition:: Intel Description

    Compute the cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := COS(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_cosd_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_cosd_ph(__m256h a);

.. admonition:: Intel Description

    Compute the cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := COSD(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_cosh_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_cosh_ph(__m256h a);

.. admonition:: Intel Description

    Compute the hyperbolic cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := COSH(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_sin_ph
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_sin_ph(__m256h a);

.. admonition:: Intel Description

    Compute the sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := SIN(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_sincos_ph
----------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h* mem_addr, 
    __m256h a
:Param ETypes:
    FP16 mem_addr, 
    FP16 a

.. code-block:: C

    __m256h _mm256_sincos_ph(__m256h* mem_addr, __m256h a);

.. admonition:: Intel Description

    Compute the sine and cosine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, store the sine in "dst", and store the cosine into memory at "mem_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := SIN(a[i+15:i])
        	MEM[mem_addr+i+15:mem_addr+i] := COS(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        cos_res[MAX:256] := 0
        

_mm256_sind_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_sind_ph(__m256h a);

.. admonition:: Intel Description

    Compute the sine of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := SIND(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_sinh_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_sinh_ph(__m256h a);

.. admonition:: Intel Description

    Compute the hyperbolic sine of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := SINH(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_tan_ph
-------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_tan_ph(__m256h a);

.. admonition:: Intel Description

    Compute the tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := TAN(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_tand_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_tand_ph(__m256h a);

.. admonition:: Intel Description

    Compute the tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in degrees, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := TAND(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_tanh_ph
--------------
:Tech: SVML
:Category: Trigonometry
:Header: immintrin.h
:Searchable: SVML-Trigonometry-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_tanh_ph(__m256h a);

.. admonition:: Intel Description

    Compute the hyperbolic tangent of packed half-precision (16-bit) floating-point elements in "a" expressed in radians, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := TANH(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        

