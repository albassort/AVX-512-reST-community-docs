SSE_ALL-Special Math Functions-XMM
==================================

_mm_max_pi16
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_max_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        ENDFOR
        	

_mm_max_pu8
-----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _mm_max_pu8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        ENDFOR
        	

_mm_min_pi16
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_min_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        ENDFOR
        	

_mm_min_pu8
-----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _mm_min_pu8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        ENDFOR
        	

_mm_min_ss
----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_min_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper element of "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MIN(a[31:0], b[31:0])
        dst[127:32] := a[127:32]
        	

_mm_min_ps
----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_min_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        	

_mm_max_ss
----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_max_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper element of "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MAX(a[31:0], b[31:0])
        dst[127:32] := a[127:32]
        	

_mm_max_ps
----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_max_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        	

_mm_max_epi16
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_max_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        ENDFOR
        	

_mm_max_epu8
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_max_epu8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        ENDFOR
        	

_mm_min_epi16
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_min_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        ENDFOR
        	

_mm_min_epu8
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_min_epu8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        ENDFOR
        	

_mm_max_sd
----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_max_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the maximum value in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MAX(a[63:0], b[63:0])
        dst[127:64] := a[127:64]
        	

_mm_max_pd
----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_max_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        ENDFOR
        	

_mm_min_sd
----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_min_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point elements in "a" and "b", store the minimum value in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MIN(a[63:0], b[63:0])
        dst[127:64] := a[127:64]
        	

_mm_min_pd
----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: emmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_min_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        ENDFOR
        	

_mm_max_epi8
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m128i _mm_max_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        ENDFOR
        	

_mm_max_epi32
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m128i _mm_max_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        	

_mm_max_epu32
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_max_epu32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        	

_mm_max_epu16
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_max_epu16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        ENDFOR
        	

_mm_min_epi8
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m128i _mm_min_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        ENDFOR
        	

_mm_min_epi32
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m128i _mm_min_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        	

_mm_min_epu32
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_min_epu32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        	

_mm_min_epu16
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_min_epu16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        ENDFOR
        	

_mm_round_pd
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    int rounding
:Param ETypes:
    FP64 a, 
    IMM rounding

.. code-block:: C

    __m128d _mm_round_pd(__m128d a, int rounding);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" using the "rounding" parameter, and store the results as packed double-precision floating-point elements in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := ROUND(a[i+63:i], rounding)
        ENDFOR
        	

_mm_floor_pd
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_floor_pd(__m128d a);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" down to an integer value, and store the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := FLOOR(a[i+63:i])
        ENDFOR
        	

_mm_ceil_pd
-----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_ceil_pd(__m128d a);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" up to an integer value, and store the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := CEIL(a[i+63:i])
        ENDFOR
        	

_mm_round_ps
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    int rounding
:Param ETypes:
    FP32 a, 
    IMM rounding

.. code-block:: C

    __m128 _mm_round_ps(__m128 a, int rounding);

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" using the "rounding" parameter, and store the results as packed single-precision floating-point elements in "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := ROUND(a[i+31:i], rounding)
        ENDFOR
        	

_mm_floor_ps
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_floor_ps(__m128 a);

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" down to an integer value, and store the results as packed single-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := FLOOR(a[i+31:i])
        ENDFOR
        	

_mm_ceil_ps
-----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_ceil_ps(__m128 a);

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" up to an integer value, and store the results as packed single-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := CEIL(a[i+31:i])
        ENDFOR
        	

_mm_round_sd
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
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

    __m128d _mm_round_sd(__m128d a, __m128d b, int rounding);

.. admonition:: Intel Description

    Round the lower double-precision (64-bit) floating-point element in "b" using the "rounding" parameter, store the result as a double-precision floating-point element in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := ROUND(b[63:0], rounding)
        dst[127:64] := a[127:64]
        	

_mm_floor_sd
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_floor_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Round the lower double-precision (64-bit) floating-point element in "b" down to an integer value, store the result as a double-precision floating-point element in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := FLOOR(b[63:0])
        dst[127:64] := a[127:64]
        	

_mm_ceil_sd
-----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_ceil_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Round the lower double-precision (64-bit) floating-point element in "b" up to an integer value, store the result as a double-precision floating-point element in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := CEIL(b[63:0])
        dst[127:64] := a[127:64]
        	

_mm_round_ss
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
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

    __m128 _mm_round_ss(__m128 a, __m128 b, int rounding);

.. admonition:: Intel Description

    Round the lower single-precision (32-bit) floating-point element in "b" using the "rounding" parameter, store the result as a single-precision floating-point element in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := ROUND(b[31:0], rounding)
        dst[127:32] := a[127:32]
        	

_mm_floor_ss
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_floor_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Round the lower single-precision (32-bit) floating-point element in "b" down to an integer value, store the result as a single-precision floating-point element in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := FLOOR(b[31:0])
        dst[127:32] := a[127:32]
        	

_mm_ceil_ss
-----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: smmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_ceil_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Round the lower single-precision (32-bit) floating-point element in "b" up to an integer value, store the result as a single-precision floating-point element in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := CEIL(b[31:0])
        dst[127:32] := a[127:32]
        	

_mm_abs_pi8
-----------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: tmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m64 _mm_abs_pi8(__m64 a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 8-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := ABS(Int(a[i+7:i]))
        ENDFOR
        	

_mm_abs_epi8
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: tmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m128i _mm_abs_epi8(__m128i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 8-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := ABS(a[i+7:i])
        ENDFOR
        	

_mm_abs_pi16
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: tmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m64 _mm_abs_pi16(__m64 a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 16-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := ABS(Int(a[i+15:i]))
        ENDFOR
        	

_mm_abs_epi16
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: tmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m128i _mm_abs_epi16(__m128i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 16-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := ABS(a[i+15:i])
        ENDFOR
        	

_mm_abs_pi32
------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: tmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m64 _mm_abs_pi32(__m64 a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 32-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	dst[i+31:i] := ABS(a[i+31:i])
        ENDFOR
        	

_mm_abs_epi32
-------------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: tmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128i _mm_abs_epi32(__m128i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 32-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := ABS(a[i+31:i])
        ENDFOR
        	

