SSE_ALL-Arithmetic-XMM
======================

_mm_mulhi_pu16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m64 _mm_mulhi_pu16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Multiply the packed unsigned 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	tmp[31:0] := a[i+15:i] * b[i+15:i]
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        	

_mm_add_ss
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_add_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Add the lower single-precision (32-bit) floating-point element in "a" and "b", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] + b[31:0]
        dst[127:32] := a[127:32]
        	

_mm_add_ps
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_add_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Add packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[i+31:i] + b[i+31:i]
        ENDFOR
        	

_mm_sub_ss
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_sub_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Subtract the lower single-precision (32-bit) floating-point element in "b" from the lower single-precision (32-bit) floating-point element in "a", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] - b[31:0]
        dst[127:32] := a[127:32]
        	

_mm_sub_ps
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_sub_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Subtract packed single-precision (32-bit) floating-point elements in "b" from packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[i+31:i] - b[i+31:i]
        ENDFOR
        	

_mm_mul_ss
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_mul_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Multiply the lower single-precision (32-bit) floating-point element in "a" and "b", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] * b[31:0]
        dst[127:32] := a[127:32]
        	

_mm_mul_ps
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_mul_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[i+31:i] * b[i+31:i]
        ENDFOR
        	

_mm_div_ss
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_div_ss(__m128 a, __m128 b);

.. admonition:: Intel Description

    Divide the lower single-precision (32-bit) floating-point element in "a" by the lower single-precision (32-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] / b[31:0]
        dst[127:32] := a[127:32]
        	

_mm_div_ps
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_div_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Divide packed single-precision (32-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	dst[i+31:i] := a[i+31:i] / b[i+31:i]
        ENDFOR
        	

_mm_add_epi8
------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_add_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Add packed 8-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := a[i+7:i] + b[i+7:i]
        ENDFOR
        	

_mm_add_epi16
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_add_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Add packed 16-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := a[i+15:i] + b[i+15:i]
        ENDFOR
        	

_mm_add_epi32
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_add_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Add packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[i+31:i] + b[i+31:i]
        ENDFOR
        	

_mm_add_si64
------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _mm_add_si64(__m64 a, __m64 b);

.. admonition:: Intel Description

    Add 64-bit integers "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0] + b[63:0]
        	

_mm_add_epi64
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m128i _mm_add_epi64(__m128i a, __m128i b);

.. admonition:: Intel Description

    Add packed 64-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[i+63:i] + b[i+63:i]
        ENDFOR
        	

_mm_adds_epi8
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m128i _mm_adds_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Add packed signed 8-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := Saturate8( a[i+7:i] + b[i+7:i] )
        ENDFOR
        	

_mm_adds_epi16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_adds_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Add packed signed 16-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := Saturate16( a[i+15:i] + b[i+15:i] )
        ENDFOR
        	

_mm_adds_epu8
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_adds_epu8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Add packed unsigned 8-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := SaturateU8( a[i+7:i] + b[i+7:i] )
        ENDFOR
        	

_mm_adds_epu16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_adds_epu16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Add packed unsigned 16-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := SaturateU16( a[i+15:i] + b[i+15:i] )
        ENDFOR
        	

_mm_madd_epi16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_madd_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Horizontally add adjacent pairs of intermediate 32-bit integers, and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := SignExtend32(a[i+31:i+16]*b[i+31:i+16]) + SignExtend32(a[i+15:i]*b[i+15:i])
        ENDFOR
        	

_mm_mulhi_epi16
---------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_mulhi_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Multiply the packed signed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        	

_mm_mulhi_epu16
---------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_mulhi_epu16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Multiply the packed unsigned 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	tmp[31:0] := a[i+15:i] * b[i+15:i]
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        	

_mm_mullo_epi16
---------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_mullo_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Multiply the packed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the low 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        	dst[i+15:i] := tmp[15:0]
        ENDFOR
        	

_mm_mul_su32
------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m64 _mm_mul_su32(__m64 a, __m64 b);

.. admonition:: Intel Description

    Multiply the low unsigned 32-bit integers from "a" and "b", and store the unsigned 64-bit result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[31:0] * b[31:0]
        	

_mm_mul_epu32
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_mul_epu32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Multiply the low unsigned 32-bit integers from each packed 64-bit element in "a" and "b", and store the unsigned 64-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[i+31:i] * b[i+31:i]
        ENDFOR
        	

_mm_sub_epi8
------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_sub_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Subtract packed 8-bit integers in "b" from packed 8-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := a[i+7:i] - b[i+7:i]
        ENDFOR
        	

_mm_sub_epi16
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_sub_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Subtract packed 16-bit integers in "b" from packed 16-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := a[i+15:i] - b[i+15:i]
        ENDFOR
        	

_mm_sub_epi32
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_sub_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Subtract packed 32-bit integers in "b" from packed 32-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[i+31:i] - b[i+31:i]
        ENDFOR
        	

_mm_sub_si64
------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _mm_sub_si64(__m64 a, __m64 b);

.. admonition:: Intel Description

    Subtract 64-bit integer "b" from 64-bit integer "a", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0] - b[63:0]
        	

_mm_sub_epi64
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m128i _mm_sub_epi64(__m128i a, __m128i b);

.. admonition:: Intel Description

    Subtract packed 64-bit integers in "b" from packed 64-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[i+63:i] - b[i+63:i]
        ENDFOR
        	

_mm_subs_epi8
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m128i _mm_subs_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Subtract packed signed 8-bit integers in "b" from packed 8-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := Saturate8(a[i+7:i] - b[i+7:i])	
        ENDFOR
        	

_mm_subs_epi16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_subs_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Subtract packed signed 16-bit integers in "b" from packed 16-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := Saturate16(a[i+15:i] - b[i+15:i])
        ENDFOR
        	

_mm_subs_epu8
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_subs_epu8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Subtract packed unsigned 8-bit integers in "b" from packed unsigned 8-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := SaturateU8(a[i+7:i] - b[i+7:i])	
        ENDFOR
        	

_mm_subs_epu16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_subs_epu16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Subtract packed unsigned 16-bit integers in "b" from packed unsigned 16-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := SaturateU16(a[i+15:i] - b[i+15:i])	
        ENDFOR
        	

_mm_add_sd
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_add_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Add the lower double-precision (64-bit) floating-point element in "a" and "b", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0] + b[63:0]
        dst[127:64] := a[127:64]
        	

_mm_add_pd
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_add_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Add packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[i+63:i] + b[i+63:i]
        ENDFOR
        	

_mm_div_sd
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_div_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Divide the lower double-precision (64-bit) floating-point element in "a" by the lower double-precision (64-bit) floating-point element in "b", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0] / b[63:0]
        dst[127:64] := a[127:64]
        	

_mm_div_pd
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_div_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Divide packed double-precision (64-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := 64*j
        	dst[i+63:i] := a[i+63:i] / b[i+63:i]
        ENDFOR
        	

_mm_mul_sd
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_mul_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Multiply the lower double-precision (64-bit) floating-point element in "a" and "b", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0] * b[63:0]
        dst[127:64] := a[127:64]
        	

_mm_mul_pd
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_mul_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[i+63:i] * b[i+63:i]
        ENDFOR
        	

_mm_sub_sd
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_sub_sd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Subtract the lower double-precision (64-bit) floating-point element in "b" from the lower double-precision (64-bit) floating-point element in "a", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0] - b[63:0]
        dst[127:64] := a[127:64]
        	

_mm_sub_pd
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: emmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_sub_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Subtract packed double-precision (64-bit) floating-point elements in "b" from packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[i+63:i] - b[i+63:i]
        ENDFOR
        	

_mm_addsub_ps
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: pmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_addsub_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Alternatively add and subtract packed single-precision (32-bit) floating-point elements in "a" to/from packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF ((j & 1) == 0)
        		dst[i+31:i] := a[i+31:i] - b[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i] + b[i+31:i]
        	FI
        ENDFOR
        	

_mm_addsub_pd
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: pmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_addsub_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Alternatively add and subtract packed double-precision (64-bit) floating-point elements in "a" to/from packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF ((j & 1) == 0)
        		dst[i+63:i] := a[i+63:i] - b[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i] + b[i+63:i]
        	FI
        ENDFOR
        	

_mm_hadd_pd
-----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: pmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_hadd_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of double-precision (64-bit) floating-point elements in "a" and "b", and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[127:64] + a[63:0]
        dst[127:64] := b[127:64] + b[63:0]
        	

_mm_hadd_ps
-----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: pmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_hadd_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of single-precision (32-bit) floating-point elements in "a" and "b", and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[63:32] + a[31:0]
        dst[63:32] := a[127:96] + a[95:64]
        dst[95:64] := b[63:32] + b[31:0]
        dst[127:96] := b[127:96] + b[95:64]
        	

_mm_hsub_pd
-----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: pmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_hsub_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of double-precision (64-bit) floating-point elements in "a" and "b", and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0] - a[127:64]
        dst[127:64] := b[63:0] - b[127:64]
        	

_mm_hsub_ps
-----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: pmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_hsub_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of single-precision (32-bit) floating-point elements in "a" and "b", and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] - a[63:32]
        dst[63:32] := a[95:64] - a[127:96]
        dst[95:64] := b[31:0] - b[63:32]
        dst[127:96] := b[95:64] - b[127:96]
        	

_mm_dp_pd
---------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: smmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b, 
    const int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m128d _mm_dp_pd(__m128d a, __m128d b, const int imm8);

.. admonition:: Intel Description

    Conditionally multiply the packed double-precision (64-bit) floating-point elements in "a" and "b" using the high 4 bits in "imm8", sum the four products, and conditionally store the sum in "dst" using the low 4 bits of "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE DP(a[127:0], b[127:0], imm8[7:0]) {
        	FOR j := 0 to 1
        		i := j*64
        		IF imm8[(4+j)%8]
        			temp[i+63:i] := a[i+63:i] * b[i+63:i]
        		ELSE
        			temp[i+63:i] := 0.0
        		FI
        	ENDFOR
        	
        	sum[63:0] := temp[127:64] + temp[63:0]
        	
        	FOR j := 0 to 1
        		i := j*64
        		IF imm8[j%8]
        			tmpdst[i+63:i] := sum[63:0]
        		ELSE
        			tmpdst[i+63:i] := 0.0
        		FI
        	ENDFOR
        	RETURN tmpdst[127:0]
        }
        dst[127:0] := DP(a[127:0], b[127:0], imm8[7:0])
        	

_mm_dp_ps
---------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: smmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b, 
    const int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m128 _mm_dp_ps(__m128 a, __m128 b, const int imm8);

.. admonition:: Intel Description

    Conditionally multiply the packed single-precision (32-bit) floating-point elements in "a" and "b" using the high 4 bits in "imm8", sum the four products, and conditionally store the sum in "dst" using the low 4 bits of "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE DP(a[127:0], b[127:0], imm8[7:0]) {
        	FOR j := 0 to 3
        		i := j*32
        		IF imm8[(4+j)%8]
        			temp[i+31:i] := a[i+31:i] * b[i+31:i]
        		ELSE
        			temp[i+31:i] := 0
        		FI
        	ENDFOR
        	
        	sum[31:0] := (temp[127:96] + temp[95:64]) + (temp[63:32] + temp[31:0])
        	
        	FOR j := 0 to 3
        		i := j*32
        		IF imm8[j%8]
        			tmpdst[i+31:i] := sum[31:0]
        		ELSE
        			tmpdst[i+31:i] := 0
        		FI
        	ENDFOR
        	RETURN tmpdst[127:0]
        }
        dst[127:0] := DP(a[127:0], b[127:0], imm8[7:0])
        	

_mm_mul_epi32
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: smmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m128i _mm_mul_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Multiply the low signed 32-bit integers from each packed 64-bit element in "a" and "b", and store the signed 64-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := SignExtend64(a[i+31:i]) * SignExtend64(b[i+31:i])
        ENDFOR
        	

_mm_mullo_epi32
---------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: smmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_mullo_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Multiply the packed 32-bit integers in "a" and "b", producing intermediate 64-bit integers, and store the low 32 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	tmp[63:0] := a[i+31:i] * b[i+31:i]
        	dst[i+31:i] := tmp[31:0]
        ENDFOR
        	

_mm_hadd_epi16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_hadd_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of 16-bit integers in "a" and "b", and pack the signed 16-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := a[31:16] + a[15:0]
        dst[31:16] := a[63:48] + a[47:32]
        dst[47:32] := a[95:80] + a[79:64]
        dst[63:48] := a[127:112] + a[111:96]
        dst[79:64] := b[31:16] + b[15:0]
        dst[95:80] := b[63:48] + b[47:32]
        dst[111:96] := b[95:80] + b[79:64]
        dst[127:112] := b[127:112] + b[111:96]
        	

_mm_hadds_epi16
---------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_hadds_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of signed 16-bit integers in "a" and "b" using saturation, and pack the signed 16-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := Saturate16(a[31:16] + a[15:0])
        dst[31:16] := Saturate16(a[63:48] + a[47:32])
        dst[47:32] := Saturate16(a[95:80] + a[79:64])
        dst[63:48] := Saturate16(a[127:112] + a[111:96])
        dst[79:64] := Saturate16(b[31:16] + b[15:0])
        dst[95:80] := Saturate16(b[63:48] + b[47:32])
        dst[111:96] := Saturate16(b[95:80] + b[79:64])
        dst[127:112] := Saturate16(b[127:112] + b[111:96])
        	

_mm_hadd_epi32
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m128i _mm_hadd_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of 32-bit integers in "a" and "b", and pack the signed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[63:32] + a[31:0]
        dst[63:32] := a[127:96] + a[95:64]
        dst[95:64] := b[63:32] + b[31:0]
        dst[127:96] := b[127:96] + b[95:64]
        	

_mm_hadd_pi16
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_hadd_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of 16-bit integers in "a" and "b", and pack the signed 16-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := a[31:16] + a[15:0]
        dst[31:16] := a[63:48] + a[47:32]
        dst[47:32] := b[31:16] + b[15:0]
        dst[63:48] := b[63:48] + b[47:32]
        	

_mm_hadd_pi32
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m64 _mm_hadd_pi32(__m64 a, __m64 b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of 32-bit integers in "a" and "b", and pack the signed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[63:32] + a[31:0]
        dst[63:32] := b[63:32] + b[31:0]
        	

_mm_hadds_pi16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_hadds_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of signed 16-bit integers in "a" and "b" using saturation, and pack the signed 16-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := Saturate16(a[31:16] + a[15:0])
        dst[31:16] := Saturate16(a[63:48] + a[47:32])
        dst[47:32] := Saturate16(b[31:16] + b[15:0])
        dst[63:48] := Saturate16(b[63:48] + b[47:32])
        	

_mm_hsub_epi16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_hsub_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of 16-bit integers in "a" and "b", and pack the signed 16-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := a[15:0] - a[31:16]
        dst[31:16] := a[47:32] - a[63:48]
        dst[47:32] := a[79:64] - a[95:80]
        dst[63:48] := a[111:96] - a[127:112]
        dst[79:64] := b[15:0] - b[31:16]
        dst[95:80] := b[47:32] - b[63:48]
        dst[111:96] := b[79:64] - b[95:80]
        dst[127:112] := b[111:96] - b[127:112]
        	

_mm_hsubs_epi16
---------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_hsubs_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of signed 16-bit integers in "a" and "b" using saturation, and pack the signed 16-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := Saturate16(a[15:0] - a[31:16])
        dst[31:16] := Saturate16(a[47:32] - a[63:48])
        dst[47:32] := Saturate16(a[79:64] - a[95:80])
        dst[63:48] := Saturate16(a[111:96] - a[127:112])
        dst[79:64] := Saturate16(b[15:0] - b[31:16])
        dst[95:80] := Saturate16(b[47:32] - b[63:48])
        dst[111:96] := Saturate16(b[79:64] - b[95:80])
        dst[127:112] := Saturate16(b[111:96] - b[127:112])
        	

_mm_hsub_epi32
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m128i _mm_hsub_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of 32-bit integers in "a" and "b", and pack the signed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] - a[63:32]
        dst[63:32] := a[95:64] - a[127:96]
        dst[95:64] := b[31:0] - b[63:32]
        dst[127:96] := b[95:64] - b[127:96]
        	

_mm_hsub_pi16
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_hsub_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of 16-bit integers in "a" and "b", and pack the signed 16-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := a[15:0] - a[31:16]
        dst[31:16] := a[47:32] - a[63:48]
        dst[47:32] := b[15:0] - b[31:16]
        dst[63:48] := b[47:32] - b[63:48]
        	

_mm_hsub_pi32
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m64 _mm_hsub_pi32(__m64 a, __m64 b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of 32-bit integers in "a" and "b", and pack the signed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] - a[63:32]
        dst[63:32] := b[31:0] - b[63:32]
        	

_mm_hsubs_pi16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_hsubs_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of signed 16-bit integers in "a" and "b" using saturation, and pack the signed 16-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := Saturate16(a[15:0] - a[31:16])
        dst[31:16] := Saturate16(a[47:32] - a[63:48])
        dst[47:32] := Saturate16(b[15:0] - b[31:16])
        dst[63:48] := Saturate16(b[47:32] - b[63:48])
        	

_mm_maddubs_epi16
-----------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    SI8 b

.. code-block:: C

    __m128i _mm_maddubs_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Vertically multiply each unsigned 8-bit integer from "a" with the corresponding signed 8-bit integer from "b", producing intermediate signed 16-bit integers. Horizontally add adjacent pairs of intermediate signed 16-bit integers, and pack the saturated results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := Saturate16( a[i+15:i+8]*b[i+15:i+8] + a[i+7:i]*b[i+7:i] )
        ENDFOR
        	

_mm_maddubs_pi16
----------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    SI8 b

.. code-block:: C

    __m64 _mm_maddubs_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Vertically multiply each unsigned 8-bit integer from "a" with the corresponding signed 8-bit integer from "b", producing intermediate signed 16-bit integers. Horizontally add adjacent pairs of intermediate signed 16-bit integers, and pack the saturated results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := Saturate16( a[i+15:i+8]*b[i+15:i+8] + a[i+7:i]*b[i+7:i] )
        ENDFOR
        	

_mm_mulhrs_epi16
----------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_mulhrs_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Truncate each intermediate integer to the 18 most significant bits, round by adding 1, and store bits [16:1] to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	tmp[31:0] := ((SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])) >> 14) + 1
        	dst[i+15:i] := tmp[16:1]
        ENDFOR
        	

_mm_mulhrs_pi16
---------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_mulhrs_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Truncate each intermediate integer to the 18 most significant bits, round by adding 1, and store bits [16:1] to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	tmp[31:0] := ((SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])) >> 14) + 1
        	dst[i+15:i] := tmp[16:1]
        ENDFOR
        	

_mm_sign_epi8
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m128i _mm_sign_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Negate packed 8-bit integers in "a" when the corresponding signed 8-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF b[i+7:i] < 0
        		dst[i+7:i] := -(a[i+7:i])
        	ELSE IF b[i+7:i] == 0
        		dst[i+7:i] := 0
        	ELSE
        		dst[i+7:i] := a[i+7:i]
        	FI
        ENDFOR
        	

_mm_sign_epi16
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m128i _mm_sign_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Negate packed 16-bit integers in "a" when the corresponding signed 16-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	IF b[i+15:i] < 0
        		dst[i+15:i] := -(a[i+15:i])
        	ELSE IF b[i+15:i] == 0
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        	

_mm_sign_epi32
--------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m128i _mm_sign_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Negate packed 32-bit integers in "a" when the corresponding signed 32-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF b[i+31:i] < 0
        		dst[i+31:i] := -(a[i+31:i])
        	ELSE IF b[i+31:i] == 0
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        	

_mm_sign_pi8
------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m64 _mm_sign_pi8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Negate packed 8-bit integers in "a" when the corresponding signed 8-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	IF b[i+7:i] < 0
        		dst[i+7:i] := -(a[i+7:i])
        	ELSE IF b[i+7:i] == 0
        		dst[i+7:i] := 0
        	ELSE
        		dst[i+7:i] := a[i+7:i]
        	FI
        ENDFOR
        	

_mm_sign_pi16
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_sign_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Negate packed 16-bit integers in "a" when the corresponding signed 16-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	IF b[i+15:i] < 0
        		dst[i+15:i] := -(a[i+15:i])
        	ELSE IF b[i+15:i] == 0
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        	

_mm_sign_pi32
-------------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: tmmintrin.h
:Searchable: SSE_ALL-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m64 _mm_sign_pi32(__m64 a, __m64 b);

.. admonition:: Intel Description

    Negate packed 32-bit integers in "a" when the corresponding signed 32-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	IF b[i+31:i] < 0
        		dst[i+31:i] := -(a[i+31:i])
        	ELSE IF b[i+31:i] == 0
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        	

