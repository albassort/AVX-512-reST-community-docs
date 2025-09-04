AVX_ALL-Elementary Math Functions-YMM
=====================================

_mm256_rcp_ps
-------------
:Tech: AVX_ALL
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Elementary Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_rcp_ps(__m256 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := 1.0 / a[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_rsqrt_ps
---------------
:Tech: AVX_ALL
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Elementary Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_rsqrt_ps(__m256 a);

.. admonition:: Intel Description

    Compute the approximate reciprocal square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". The maximum relative error for this approximation is less than 1.5*2^-12.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := (1.0 / SQRT(a[i+31:i]))
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sqrt_pd
--------------
:Tech: AVX_ALL
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Elementary Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_sqrt_pd(__m256d a);

.. admonition:: Intel Description

    Compute the square root of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := SQRT(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sqrt_ps
--------------
:Tech: AVX_ALL
:Category: Elementary Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Elementary Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_sqrt_ps(__m256 a);

.. admonition:: Intel Description

    Compute the square root of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := SQRT(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

