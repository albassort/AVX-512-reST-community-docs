SSE_ALL-Convert-XMM
===================

_mm_cvtsi32_ss
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    int b
:Param ETypes:
    FP32 a, 
    SI32 b

.. code-block:: C

    __m128 _mm_cvtsi32_ss(__m128 a, int b);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[127:32] := a[127:32]
        	

_mm_cvt_si2ss
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    int b
:Param ETypes:
    FP32 a, 
    SI32 b

.. code-block:: C

    __m128 _mm_cvt_si2ss(__m128 a, int b);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[127:32] := a[127:32]
        	

_mm_cvtsi64_ss
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __int64 b
:Param ETypes:
    FP32 a, 
    SI64 b

.. code-block:: C

    __m128 _mm_cvtsi64_ss(__m128 a, __int64 b);

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int64_To_FP32(b[63:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvtpi32_ps
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m64 b
:Param ETypes:
    FP32 a, 
    SI32 b

.. code-block:: C

    __m128 _mm_cvtpi32_ps(__m128 a, __m64 b);

.. admonition:: Intel Description

    Convert packed 32-bit integers in "b" to packed single-precision (32-bit) floating-point elements, store the results in the lower 2 elements of "dst", and copy the upper 2 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[63:32] := Convert_Int32_To_FP32(b[63:32])
        dst[95:64] := a[95:64]
        dst[127:96] := a[127:96]
        	

_mm_cvt_pi2ps
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m64 b
:Param ETypes:
    FP32 a, 
    SI32 b

.. code-block:: C

    __m128 _mm_cvt_pi2ps(__m128 a, __m64 b);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "b" to packed single-precision (32-bit) floating-point elements, store the results in the lower 2 elements of "dst", and copy the upper 2 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(b[31:0])
        dst[63:32] := Convert_Int32_To_FP32(b[63:32])
        dst[95:64] := a[95:64]
        dst[127:96] := a[127:96]
        	

_mm_cvtpi16_ps
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m64 a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m128 _mm_cvtpi16_ps(__m64 a);

.. admonition:: Intel Description

    Convert packed 16-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	m := j*32
        	dst[m+31:m] := Convert_Int16_To_FP32(a[i+15:i])
        ENDFOR
        	

_mm_cvtpu16_ps
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m64 a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128 _mm_cvtpu16_ps(__m64 a);

.. admonition:: Intel Description

    Convert packed unsigned 16-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	m := j*32
        	dst[m+31:m] := Convert_Int16_To_FP32(a[i+15:i])
        ENDFOR
        	

_mm_cvtpi8_ps
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m64 a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m128 _mm_cvtpi8_ps(__m64 a);

.. admonition:: Intel Description

    Convert the lower packed 8-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*8
        	m := j*32
        	dst[m+31:m] := Convert_Int8_To_FP32(a[i+7:i])
        ENDFOR
        	

_mm_cvtpu8_ps
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m64 a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m128 _mm_cvtpu8_ps(__m64 a);

.. admonition:: Intel Description

    Convert the lower packed unsigned 8-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*8
        	m := j*32
        	dst[m+31:m] := Convert_Int8_To_FP32(a[i+7:i])
        ENDFOR
        	

_mm_cvtpi32x2_ps
----------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m128 _mm_cvtpi32x2_ps(__m64 a, __m64 b);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, store the results in the lower 2 elements of "dst", then covert the packed signed 32-bit integers in "b" to single-precision (32-bit) floating-point element, and store the results in the upper 2 elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_Int32_To_FP32(a[31:0])
        dst[63:32] := Convert_Int32_To_FP32(a[63:32])
        dst[95:64] := Convert_Int32_To_FP32(b[31:0])
        dst[127:96] := Convert_Int32_To_FP32(b[63:32])
        	

_mm_cvtss_si32
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    int _mm_cvtss_si32(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32(a[31:0])
        	

_mm_cvt_ss2si
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    int _mm_cvt_ss2si(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32(a[31:0])
        	

_mm_cvtss_si64
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __int64 _mm_cvtss_si64(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_Int64(a[31:0])
        	

_mm_cvtss_f32
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: float
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    float _mm_cvtss_f32(__m128 a);

.. admonition:: Intel Description

    Copy the lower single-precision (32-bit) floating-point element of "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        	

_mm_cvtps_pi32
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m64 _mm_cvtps_pi32(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        ENDFOR
        	

_mm_cvt_ps2pi
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m64 _mm_cvt_ps2pi(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        ENDFOR
        	

_mm_cvttss_si32
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    int _mm_cvttss_si32(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32_Truncate(a[31:0])
        	

_mm_cvtt_ss2si
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    int _mm_cvtt_ss2si(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP32_To_Int32_Truncate(a[31:0])
        	

_mm_cvttss_si64
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __int64 _mm_cvttss_si64(__m128 a);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_Int64_Truncate(a[31:0])
        	

_mm_cvttps_pi32
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m64 _mm_cvttps_pi32(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        ENDFOR
        	

_mm_cvtt_ps2pi
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m64 _mm_cvtt_ps2pi(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        ENDFOR
        	

_mm_cvtps_pi16
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m64 _mm_cvtps_pi16(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 16-bit integers, and store the results in "dst". Note: this intrinsic will generate 0x7FFF, rather than 0x8000, for input values between 0x7FFF and 0x7FFFFFFF.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 16*j
        	k := 32*j
        	IF a[k+31:k] >= FP32(0x7FFF) && a[k+31:k] <= FP32(0x7FFFFFFF)
        		dst[i+15:i] := 0x7FFF
        	ELSE
        		dst[i+15:i] := Convert_FP32_To_Int16(a[k+31:k])
        	FI
        ENDFOR
        	

_mm_cvtps_pi8
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: xmmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m64 _mm_cvtps_pi8(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 8-bit integers, and store the results in lower 4 elements of "dst". Note: this intrinsic will generate 0x7F, rather than 0x80, for input values between 0x7F and 0x7FFFFFFF.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 8*j
        	k := 32*j
        	IF a[k+31:k] >= FP32(0x7F) && a[k+31:k] <= FP32(0x7FFFFFFF)
        		dst[i+7:i] := 0x7F
        	ELSE
        		dst[i+7:i] := Convert_FP32_To_Int8(a[k+31:k])
        	FI
        ENDFOR
        	

_mm_cvtepi32_pd
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128d _mm_cvtepi32_pd(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	dst[m+63:m] := Convert_Int32_To_FP64(a[i+31:i])
        ENDFOR
        	

_mm_cvtsi32_sd
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    int b
:Param ETypes:
    FP64 a, 
    SI32 b

.. code-block:: C

    __m128d _mm_cvtsi32_sd(__m128d a, int b);

.. admonition:: Intel Description

    Convert the signed 32-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int32_To_FP64(b[31:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvtsi64_sd
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __int64 b
:Param ETypes:
    FP64 a, 
    SI64 b

.. code-block:: C

    __m128d _mm_cvtsi64_sd(__m128d a, __int64 b);

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int64_To_FP64(b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvtsi64x_sd
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __int64 b
:Param ETypes:
    FP64 a, 
    SI64 b

.. code-block:: C

    __m128d _mm_cvtsi64x_sd(__m128d a, __int64 b);

.. admonition:: Intel Description

    Convert the signed 64-bit integer "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_Int64_To_FP64(b[63:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvtepi32_ps
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128 _mm_cvtepi32_ps(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        ENDFOR
        	

_mm_cvtpi32_pd
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m64 a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128d _mm_cvtpi32_pd(__m64 a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	dst[m+63:m] := Convert_Int32_To_FP64(a[i+31:i])
        ENDFOR
        	

_mm_cvtsi32_si128
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    int a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm_cvtsi32_si128(int a);

.. admonition:: Intel Description

    Copy 32-bit integer "a" to the lower elements of "dst", and zero the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        dst[127:32] := 0
        	

_mm_cvtsi64_si128
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __int64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_cvtsi64_si128(__int64 a);

.. admonition:: Intel Description

    Copy 64-bit integer "a" to the lower element of "dst", and zero the upper element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[127:64] := 0
        	

_mm_cvtsi64x_si128
------------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __int64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_cvtsi64x_si128(__int64 a);

.. admonition:: Intel Description

    Copy 64-bit integer "a" to the lower element of "dst", and zero the upper element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[127:64] := 0
        	

_mm_cvtsi128_si32
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm_cvtsi128_si32(__m128i a);

.. admonition:: Intel Description

    Copy the lower 32-bit integer in "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        	

_mm_cvtsi128_si64
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __int64 _mm_cvtsi128_si64(__m128i a);

.. admonition:: Intel Description

    Copy the lower 64-bit integer in "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        	

_mm_cvtsi128_si64x
------------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __int64 _mm_cvtsi128_si64x(__m128i a);

.. admonition:: Intel Description

    Copy the lower 64-bit integer in "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        	

_mm_cvtpd_ps
------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128 _mm_cvtpd_ps(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_FP32(a[k+63:k])
        ENDFOR
        dst[127:64] := 0
        	

_mm_cvtps_pd
------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128d _mm_cvtps_pd(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := Convert_FP32_To_FP64(a[k+31:k])
        ENDFOR
        	

_mm_cvtpd_epi32
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm_cvtpd_epi32(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32(a[k+63:k])
        ENDFOR
        	

_mm_cvtsd_si32
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    int _mm_cvtsd_si32(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 32-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_Int32(a[63:0])
        	

_mm_cvtsd_si64
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __int64 _mm_cvtsd_si64(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64(a[63:0])
        	

_mm_cvtsd_si64x
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __int64 _mm_cvtsd_si64x(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64(a[63:0])
        	

_mm_cvtsd_ss
------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128d b
:Param ETypes:
    FP32 a, 
    FP64 b

.. code-block:: C

    __m128 _mm_cvtsd_ss(__m128 a, __m128d b);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "b" to a single-precision (32-bit) floating-point element, store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_FP32(b[63:0])
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_cvtsd_f64
-------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: double
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    double _mm_cvtsd_f64(__m128d a);

.. admonition:: Intel Description

    Copy the lower double-precision (64-bit) floating-point element of "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        	

_mm_cvtss_sd
------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128 b
:Param ETypes:
    FP64 a, 
    FP32 b

.. code-block:: C

    __m128d _mm_cvtss_sd(__m128d a, __m128 b);

.. admonition:: Intel Description

    Convert the lower single-precision (32-bit) floating-point element in "b" to a double-precision (64-bit) floating-point element, store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP32_To_FP64(b[31:0])
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cvttpd_epi32
----------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm_cvttpd_epi32(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[k+63:k])
        ENDFOR
        	

_mm_cvttsd_si32
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    int _mm_cvttsd_si32(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 32-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := Convert_FP64_To_Int32_Truncate(a[63:0])
        	

_mm_cvttsd_si64
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __int64 _mm_cvttsd_si64(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64_Truncate(a[63:0])
        	

_mm_cvttsd_si64x
----------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __int64 _mm_cvttsd_si64x(__m128d a);

.. admonition:: Intel Description

    Convert the lower double-precision (64-bit) floating-point element in "a" to a 64-bit integer with truncation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := Convert_FP64_To_Int64_Truncate(a[63:0])
        	

_mm_cvtps_epi32
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128i _mm_cvtps_epi32(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        ENDFOR
        	

_mm_cvttps_epi32
----------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128i _mm_cvttps_epi32(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        ENDFOR
        	

_mm_cvtpd_pi32
--------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m64 _mm_cvtpd_pi32(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32(a[k+63:k])
        ENDFOR
        	

_mm_cvttpd_pi32
---------------
:Tech: SSE_ALL
:Category: Convert
:Header: emmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m64 _mm_cvttpd_pi32(__m128d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[k+63:k])
        ENDFOR
        	

_mm_cvtepi8_epi16
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m128i _mm_cvtepi8_epi16(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	l := j*16
        	dst[l+15:l] := SignExtend16(a[i+7:i])
        ENDFOR
        	

_mm_cvtepi8_epi32
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m128i _mm_cvtepi8_epi32(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 8*j
        	dst[i+31:i] := SignExtend32(a[k+7:k])
        ENDFOR
        	

_mm_cvtepi8_epi64
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m128i _mm_cvtepi8_epi64(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 8 bytes of "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 8*j
        	dst[i+63:i] := SignExtend64(a[k+7:k])
        ENDFOR
        	

_mm_cvtepi16_epi32
------------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m128i _mm_cvtepi16_epi32(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 16*j
        	dst[i+31:i] := SignExtend32(a[k+15:k])
        ENDFOR
        	

_mm_cvtepi16_epi64
------------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m128i _mm_cvtepi16_epi64(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 16*j
        	dst[i+63:i] := SignExtend64(a[k+15:k])
        ENDFOR
        	

_mm_cvtepi32_epi64
------------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m128i _mm_cvtepi32_epi64(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := SignExtend64(a[k+31:k])
        ENDFOR
        	

_mm_cvtepu8_epi16
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m128i _mm_cvtepu8_epi16(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	l := j*16
        	dst[l+15:l] := ZeroExtend16(a[i+7:i])
        ENDFOR
        	

_mm_cvtepu8_epi32
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m128i _mm_cvtepu8_epi32(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 8*j
        	dst[i+31:i] := ZeroExtend32(a[k+7:k])
        ENDFOR
        	

_mm_cvtepu8_epi64
-----------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m128i _mm_cvtepu8_epi64(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in the low 8 byte sof "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 8*j
        	dst[i+63:i] := ZeroExtend64(a[k+7:k])
        ENDFOR
        	

_mm_cvtepu16_epi32
------------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128i _mm_cvtepu16_epi32(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 16*j
        	dst[i+31:i] := ZeroExtend32(a[k+15:k])
        ENDFOR
        	

_mm_cvtepu16_epi64
------------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128i _mm_cvtepu16_epi64(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 16*j
        	dst[i+63:i] := ZeroExtend64(a[k+15:k])
        ENDFOR
        	

_mm_cvtepu32_epi64
------------------
:Tech: SSE_ALL
:Category: Convert
:Header: smmintrin.h
:Searchable: SSE_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm_cvtepu32_epi64(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := ZeroExtend64(a[k+31:k])
        ENDFOR
        	

