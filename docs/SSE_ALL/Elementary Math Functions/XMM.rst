SSE_ALL-Elementary Math Functions-XMM
=====================================

_mm_sqrt_ss
-----------
:Tech: SSE_ALL
:Category: Elementary Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_sqrt_ss(__m128 a);

.. admonition:: Intel Description

    Compute the square root of the lower single-precision (32-bit) floating-point element in "a", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := SQRT(a[31:0])
        dst[127:32] := a[127:32]
        	

_mm_sqrt_ps
-----------
:Tech: SSE_ALL
:Category: Elementary Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_sqrt_ps(__m128 a);

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := SQRT(a[i+31:i])
        ENDFOR
        	

_mm_rcp_ss
----------
:Tech: SSE_ALL
:Category: Elementary Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_rcp_ss(__m128 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of the lower single-precision (32-bit) floating-point element in "a", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := (1.0 / a[31:0])
        dst[127:32] := a[127:32]
        	

_mm_rcp_ps
----------
:Tech: SSE_ALL
:Category: Elementary Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_rcp_ps(__m128 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := (1.0 / a[i+31:i])
        ENDFOR
        	

_mm_rsqrt_ss
------------
:Tech: SSE_ALL
:Category: Elementary Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_rsqrt_ss(__m128 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of the lower single-precision (32-bit) floating-point element in "a", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := (1.0 / SQRT(a[31:0]))
        dst[127:32] := a[127:32]
        	

_mm_rsqrt_ps
------------
:Tech: SSE_ALL
:Category: Elementary Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_rsqrt_ps(__m128 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := (1.0 / SQRT(a[i+31:i]))
        ENDFOR
        	

_mm_sqrt_sd
-----------
:Tech: SSE_ALL
:Category: Elementary Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_sqrt_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the square root of the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := SQRT(b[63:0])
        dst[127:64] := a[127:64]
        	

_mm_sqrt_pd
-----------
:Tech: SSE_ALL
:Category: Elementary Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Elementary Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_sqrt_pd(__m128d a);

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := SQRT(a[i+63:i])
        ENDFOR
        	

