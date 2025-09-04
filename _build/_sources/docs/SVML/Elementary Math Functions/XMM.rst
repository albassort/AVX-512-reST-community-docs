SVML-Elementary Math Functions-XMM
==================================

_mm_cbrt_ph
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_cbrt_ph(__m128h a);

.. admonition:: Intel Description

    Compute the cube root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := CubeRoot(a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_exp10_ph
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_exp10_ph(__m128h a);

.. admonition:: Intel Description

    Compute the exponential value of 10 raised to the power of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := POW(FP16(10.0), a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_exp2_ph
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_exp2_ph(__m128h a);

.. admonition:: Intel Description

    Compute the exponential value of 2 raised to the power of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := POW(FP16(2.0), a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_exp_ph
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_exp_ph(__m128h a);

.. admonition:: Intel Description

    Compute the exponential value of "e" raised to the power of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := POW(FP16(e), a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_expm1_ph
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_expm1_ph(__m128h a);

.. admonition:: Intel Description

    Compute the exponential value of "e" raised to the power of packed half-precision (16-bit) floating-point elements in "a", subtract one from each element, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := POW(FP16(e), a[i+15:i]) - 1.0
        ENDFOR
        dst[MAX:128] := 0
        

_mm_hypot_ph
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_hypot_ph(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compute the length of the hypotenous of a right triangle, with the lengths of the other two sides of the triangle stored as packed half-precision (16-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := SQRT(POW(a[i+15:i], 2.0) + POW(b[i+15:i], 2.0))
        ENDFOR
        dst[MAX:128] := 0
        

_mm_invcbrt_ph
--------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_invcbrt_ph(__m128h a);

.. admonition:: Intel Description

    Compute the inverse cube root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := InvCubeRoot(a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_invsqrt_ph
--------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_invsqrt_ph(__m128h a);

.. admonition:: Intel Description

    Compute the inverse square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := InvSQRT(a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_log10_ph
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_log10_ph(__m128h a);

.. admonition:: Intel Description

    Compute the base-10 logarithm of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := LOG(a[i+15:i]) / LOG(10.0)
        ENDFOR
        dst[MAX:128] := 0
        

_mm_log1p_ph
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_log1p_ph(__m128h a);

.. admonition:: Intel Description

    Compute the natural logarithm of one plus packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := LOG(1.0 + a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_log2_ph
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_log2_ph(__m128h a);

.. admonition:: Intel Description

    Compute the base-2 logarithm of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := LOG(a[i+15:i]) / LOG(2.0)
        ENDFOR
        dst[MAX:128] := 0
        

_mm_log_ph
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_log_ph(__m128h a);

.. admonition:: Intel Description

    Compute the natural logarithm of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := LOG(a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_logb_ph
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_logb_ph(__m128h a);

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := ConvertExpFP16(a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_pow_ph
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_pow_ph(__m128h a, __m128h b);

.. admonition:: Intel Description

    Compute the exponential value of packed half-precision (16-bit) floating-point elements in "a" raised by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := POW(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_svml_sqrt_ph
----------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128h _mm_svml_sqrt_ph(__m128h a);

.. admonition:: Intel Description

    Compute the square root of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst". Note that this intrinsic is less efficient than "_mm_sqrt_ps".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := SQRT(a[i+15:i])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_cbrt_pd
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_cbrt_pd(__m128d a);

.. admonition:: Intel Description

    Compute the cube root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := CubeRoot(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cbrt_ps
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_cbrt_ps(__m128 a);

.. admonition:: Intel Description

    Compute the cube root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := CubeRoot(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cexp_ps
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_cexp_ps(__m128 a);

.. admonition:: Intel Description

    Compute the exponential value of "e" raised to the power of packed complex numbers in "a", and store the complex results in "dst". Each complex number is composed of two adjacent single-precision (32-bit) floating-point elements, which defines the complex number "complex = vec.fp32[0] + i * vec.fp32[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE CEXP(a[31:0], b[31:0]) {
        	result[31:0]  := POW(FP32(e), a[31:0]) * COS(b[31:0])
        	result[63:32] := POW(FP32(e), a[31:0]) * SIN(b[31:0])
        	RETURN result
        }
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := CEXP(a[i+31:i], a[i+63:i+32])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_clog_ps
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_clog_ps(__m128 a);

.. admonition:: Intel Description

    Compute the natural logarithm of packed complex numbers in "a", and store the complex results in "dst". Each complex number is composed of two adjacent single-precision (32-bit) floating-point elements, which defines the complex number "complex = vec.fp32[0] + i * vec.fp32[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE CLOG(a[31:0], b[31:0]) {
        	result[31:0]  := LOG(SQRT(POW(a, 2.0) + POW(b, 2.0)))
        	result[63:32] := ATAN2(b, a)
        	RETURN result
        }
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := CLOG(a[i+31:i], a[i+63:i+32])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_csqrt_ps
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_csqrt_ps(__m128 a);

.. admonition:: Intel Description

    Compute the square root of packed complex snumbers in "a", and store the complex results in "dst". Each complex number is composed of two adjacent single-precision (32-bit) floating-point elements, which defines the complex number "complex = vec.fp32[0] + i * vec.fp32[1]".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE CSQRT(a[31:0], b[31:0]) {
        	sign[31:0] := (b < 0.0) ? -FP32(1.0) : FP32(1.0)
        	result[31:0]  := SQRT((a + SQRT(POW(a, 2.0) + POW(b, 2.0))) / 2.0)
        	result[63:32] := sign * SQRT((-a + SQRT(POW(a, 2.0) + POW(b, 2.0))) / 2.0)
        	RETURN result
        }
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := CSQRT(a[i+31:i], a[i+63:i+32])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_exp_pd
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_exp_pd(__m128d a);

.. admonition:: Intel Description

    Compute the exponential value of "e" raised to the power of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := POW(e, a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_exp_ps
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_exp_ps(__m128 a);

.. admonition:: Intel Description

    Compute the exponential value of "e" raised to the power of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := POW(FP32(e), a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_exp10_pd
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_exp10_pd(__m128d a);

.. admonition:: Intel Description

    Compute the exponential value of 10 raised to the power of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := POW(10.0, a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_exp10_ps
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_exp10_ps(__m128 a);

.. admonition:: Intel Description

    Compute the exponential value of 10 raised to the power of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := POW(FP32(10.0), a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_exp2_pd
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_exp2_pd(__m128d a);

.. admonition:: Intel Description

    Compute the exponential value of 2 raised to the power of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := POW(2.0, a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_exp2_ps
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_exp2_ps(__m128 a);

.. admonition:: Intel Description

    Compute the exponential value of 2 raised to the power of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := POW(FP32(2.0), a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_expm1_pd
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_expm1_pd(__m128d a);

.. admonition:: Intel Description

    Compute the exponential value of "e" raised to the power of packed double-precision (64-bit) floating-point elements in "a", subtract one from each element, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := POW(e, a[i+63:i]) - 1.0
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_expm1_ps
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_expm1_ps(__m128 a);

.. admonition:: Intel Description

    Compute the exponential value of "e" raised to the power of packed single-precision (32-bit) floating-point elements in "a", subtract one from each element, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := POW(FP32(e), a[i+31:i]) - 1.0
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_invcbrt_pd
--------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_invcbrt_pd(__m128d a);

.. admonition:: Intel Description

    Compute the inverse cube root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := InvCubeRoot(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_invcbrt_ps
--------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_invcbrt_ps(__m128 a);

.. admonition:: Intel Description

    Compute the inverse cube root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := InvCubeRoot(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_invsqrt_pd
--------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_invsqrt_pd(__m128d a);

.. admonition:: Intel Description

    Compute the inverse square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := InvSQRT(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_invsqrt_ps
--------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_invsqrt_ps(__m128 a);

.. admonition:: Intel Description

    Compute the inverse square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := InvSQRT(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_log_pd
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_log_pd(__m128d a);

.. admonition:: Intel Description

    Compute the natural logarithm of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := LOG(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_log_ps
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_log_ps(__m128 a);

.. admonition:: Intel Description

    Compute the natural logarithm of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := LOG(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_log10_pd
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_log10_pd(__m128d a);

.. admonition:: Intel Description

    Compute the base-10 logarithm of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := LOG(a[i+63:i]) / LOG(10.0)
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_log10_ps
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_log10_ps(__m128 a);

.. admonition:: Intel Description

    Compute the base-10 logarithm of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := LOG(a[i+31:i]) / LOG(10.0)
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_log1p_pd
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_log1p_pd(__m128d a);

.. admonition:: Intel Description

    Compute the natural logarithm of one plus packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := LOG(1.0 + a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_log1p_ps
------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_log1p_ps(__m128 a);

.. admonition:: Intel Description

    Compute the natural logarithm of one plus packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := LOG(1.0 + a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_log2_pd
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_log2_pd(__m128d a);

.. admonition:: Intel Description

    Compute the base-2 logarithm of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := LOG(a[i+63:i]) / LOG(2.0)
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_log2_ps
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_log2_ps(__m128 a);

.. admonition:: Intel Description

    Compute the base-2 logarithm of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := LOG(a[i+31:i]) / LOG(2.0)
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_logb_pd
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_logb_pd(__m128d a);

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_logb_ps
-----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_logb_ps(__m128 a);

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_pow_pd
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_pow_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the exponential value of packed double-precision (64-bit) floating-point elements in "a" raised by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := POW(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_pow_ps
----------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_pow_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the exponential value of packed single-precision (32-bit) floating-point elements in "a" raised by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := POW(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_svml_sqrt_pd
----------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_svml_sqrt_pd(__m128d a);

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst". Note that this intrinsic is less efficient than "_mm_sqrt_pd".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := SQRT(a[i+63:i])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_svml_sqrt_ps
----------------
:Tech: SVML
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: SVML-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_svml_sqrt_ps(__m128 a);

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". Note that this intrinsic is less efficient than "_mm_sqrt_ps".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := SQRT(a[i+31:i])
        ENDFOR
        dst[MAX:128] := 0
        	

