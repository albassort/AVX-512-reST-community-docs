AVX_ALL-Special Math Functions-YMM
==================================

_mm256_max_pd
-------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_max_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_max_ps
-------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_max_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_pd
-------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_min_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_ps
-------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_min_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_round_pd
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m256d _mm256_round_pd(__m256d a, int rounding);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" using the "rounding" parameter, and store the results as packed double-precision floating-point elements in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ROUND(a[i+63:i], rounding)
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_round_ps
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m256 _mm256_round_ps(__m256 a, int rounding);

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" using the "rounding" parameter, and store the results as packed single-precision floating-point elements in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ROUND(a[i+31:i], rounding)
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_floor_ps
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_floor_ps(__m256 a);

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" down to an integer value, and store the results as packed single-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := FLOOR(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_ceil_ps
--------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_ceil_ps(__m256 a);

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" up to an integer value, and store the results as packed single-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := CEIL(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_floor_pd
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_floor_pd(__m256d a);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" down to an integer value, and store the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := FLOOR(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_ceil_pd
--------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_ceil_pd(__m256d a);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" up to an integer value, and store the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := CEIL(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_abs_epi8
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m256i _mm256_abs_epi8(__m256i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 8-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := ABS(a[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_abs_epi16
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m256i _mm256_abs_epi16(__m256i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 16-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ABS(a[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_abs_epi32
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m256i _mm256_abs_epi32(__m256i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 32-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ABS(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_max_epi8
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_max_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_max_epi16
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_max_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_max_epi32
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_max_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_max_epu8
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_max_epu8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_max_epu16
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_max_epu16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_max_epu32
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_max_epu32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_epi8
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_min_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_epi16
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_min_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_epi32
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_min_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_epu8
---------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_min_epu8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_epu16
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_min_epu16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_min_epu32
----------------
:Tech: AVX_ALL
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX_ALL-Special Math Functions-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_min_epu32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

