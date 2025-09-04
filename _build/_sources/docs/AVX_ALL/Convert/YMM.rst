AVX_ALL-Convert-YMM
===================

_mm256_cvtepi32_pd
------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m256d _mm256_cvtepi32_pd(__m128i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*64
        	dst[m+63:m] := Convert_Int32_To_FP64(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepi32_ps
------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m256 _mm256_cvtepi32_ps(__m256i a);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	dst[i+31:i] := Convert_Int32_To_FP32(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtpd_ps
---------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m128
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128 _mm256_cvtpd_ps(__m256d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_FP32(a[k+63:k])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_cvtps_epi32
------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256i _mm256_cvtps_epi32(__m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtps_pd
---------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256d _mm256_cvtps_pd(__m128 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed double-precision (64-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := Convert_FP32_To_FP64(a[k+31:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvttpd_epi32
-------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm256_cvttpd_epi32(__m256d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32_Truncate(a[k+63:k])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_cvtpd_epi32
------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128i _mm256_cvtpd_epi32(__m256d a);

.. admonition:: Intel Description

    Convert packed double-precision (64-bit) floating-point elements in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 32*j
        	k := 64*j
        	dst[i+31:i] := Convert_FP64_To_Int32(a[k+63:k])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_cvttps_epi32
-------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256i _mm256_cvttps_epi32(__m256 a);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed 32-bit integers with truncation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	dst[i+31:i] := Convert_FP32_To_Int32_Truncate(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtss_f32
----------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: float
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    float _mm256_cvtss_f32(__m256 a);

.. admonition:: Intel Description

    Copy the lower single-precision (32-bit) floating-point element of "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        	

_mm256_cvtsd_f64
----------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: double
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    double _mm256_cvtsd_f64(__m256d a);

.. admonition:: Intel Description

    Copy the lower double-precision (64-bit) floating-point element of "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        	

_mm256_cvtsi256_si32
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256i a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm256_cvtsi256_si32(__m256i a);

.. admonition:: Intel Description

    Copy the lower 32-bit integer in "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        	

_mm256_cvtepi16_epi32
---------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m256i _mm256_cvtepi16_epi32(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j:= 0 to 7
        	i := 32*j
        	k := 16*j
        	dst[i+31:i] := SignExtend32(a[k+15:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepi16_epi64
---------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    SI16 a

.. code-block:: C

    __m256i _mm256_cvtepi16_epi64(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j:= 0 to 3
        	i := 64*j
        	k := 16*j
        	dst[i+63:i] := SignExtend64(a[k+15:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepi32_epi64
---------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m256i _mm256_cvtepi32_epi64(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j:= 0 to 3
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := SignExtend64(a[k+31:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepi8_epi16
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m256i _mm256_cvtepi8_epi16(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	l := j*16
        	dst[l+15:l] := SignExtend16(a[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepi8_epi32
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m256i _mm256_cvtepi8_epi32(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 8*j
        	dst[i+31:i] := SignExtend32(a[k+7:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepi8_epi64
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    SI8 a

.. code-block:: C

    __m256i _mm256_cvtepi8_epi64(__m128i a);

.. admonition:: Intel Description

    Sign extend packed 8-bit integers in the low 8 bytes of "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 64*j
        	k := 8*j
        	dst[i+63:i] := SignExtend64(a[k+7:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepu16_epi32
---------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m256i _mm256_cvtepu16_epi32(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 16*j
        	dst[i+31:i] := ZeroExtend32(a[k+15:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepu16_epi64
---------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m256i _mm256_cvtepu16_epi64(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 16-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j:= 0 to 3
        	i := 64*j
        	k := 16*j
        	dst[i+63:i] := ZeroExtend64(a[k+15:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepu32_epi64
---------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m256i _mm256_cvtepu32_epi64(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 32-bit integers in "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j:= 0 to 3
        	i := 64*j
        	k := 32*j
        	dst[i+63:i] := ZeroExtend64(a[k+31:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepu8_epi16
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m256i _mm256_cvtepu8_epi16(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 16-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	l := j*16
        	dst[l+15:l] := ZeroExtend16(a[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepu8_epi32
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m256i _mm256_cvtepu8_epi32(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in "a" to packed 32-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	k := 8*j
        	dst[i+31:i] := ZeroExtend32(a[k+7:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtepu8_epi64
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m256i _mm256_cvtepu8_epi64(__m128i a);

.. admonition:: Intel Description

    Zero extend packed unsigned 8-bit integers in the low 8 byte sof "a" to packed 64-bit integers, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 64*j
        	k := 8*j
        	dst[i+63:i] := ZeroExtend64(a[k+7:k])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_bcstnebf16_ps
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    const __bf16* __A
:Param ETypes:
    BF16 __A

.. code-block:: C

    __m256 _mm256_bcstnebf16_ps(const __bf16* __A);

.. admonition:: Intel Description

    Convert scalar BF16 (16-bit) floating-point element stored at memory locations starting at location "__A" to a single-precision (32-bit) floating-point, broadcast it to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        b := Convert_BF16_To_FP32(MEM[__A+15:__A])
        FOR j := 0 to 7
        	m := j*32
        	dst[m+31:m] := b
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_bcstnesh_ps
------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    const _Float16* __A
:Param ETypes:
    FP16 __A

.. code-block:: C

    __m256 _mm256_bcstnesh_ps(const _Float16* __A);

.. admonition:: Intel Description

    Convert scalar half-precision (16-bit) floating-point element stored at memory locations starting at location "__A" to a single-precision (32-bit) floating-point, broadcast it to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        b := Convert_FP16_To_FP32(MEM[__A+15:__A])
        FOR j := 0 to 7
        	m := j*32
        	dst[m+31:m] := b
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_cvtneebf16_ps
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    const __m256bh* __A
:Param ETypes:
    BF16 __A

.. code-block:: C

    __m256 _mm256_cvtneebf16_ps(const __m256bh* __A);

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point even-indexed elements stored at memory locations starting at location "__A" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	m := j*32
        	dst[m+31:m] := Convert_BF16_To_FP32(MEM[__A+m+15:__A+m])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_cvtneeph_ps
------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    const __m256h* __A
:Param ETypes:
    FP16 __A

.. code-block:: C

    __m256 _mm256_cvtneeph_ps(const __m256h* __A);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point even-indexed elements stored at memory locations starting at location "__A" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	m := j*32
        	dst[m+31:m] := Convert_FP16_To_FP32(MEM[__A+m+15:__A+m])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_cvtneobf16_ps
--------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    const __m256bh* __A
:Param ETypes:
    BF16 __A

.. code-block:: C

    __m256 _mm256_cvtneobf16_ps(const __m256bh* __A);

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point odd-indexed elements stored at memory locations starting at location "__A" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	m := j*32
        	dst[m+31:m] := Convert_BF16_To_FP32(MEM[__A+m+31:__A+m+16])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_cvtneoph_ps
------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    const __m256h* __A
:Param ETypes:
    FP16 __A

.. code-block:: C

    __m256 _mm256_cvtneoph_ps(const __m256h* __A);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point odd-indexed elements stored at memory locations starting at location "__A" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	m := j*32
        	dst[m+31:m] := Convert_FP16_To_FP32(MEM[__A+m+31:__A+m+16])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_cvtneps_avx_pbh
----------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m128bh
:Param Types:
    __m256 __A
:Param ETypes:
    FP32 __A

.. code-block:: C

    __m128bh _mm256_cvtneps_avx_pbh(__m256 __A);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "__A" to packed BF16 (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	dst.word[j] := Convert_FP32_To_BF16(__A.fp32[j])
        ENDFOR
        dst[MAX:128] := 0
        

_mm256_cvtneps_pbh
------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m128bh
:Param Types:
    __m256 __A
:Param ETypes:
    FP32 __A

.. code-block:: C

    __m128bh _mm256_cvtneps_pbh(__m256 __A);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "__A" to packed BF16 (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	dst.word[j] := Convert_FP32_To_BF16(__A.fp32[j])
        ENDFOR
        dst[MAX:128] := 0
        

_mm256_cvtph_ps
---------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m128i a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256 _mm256_cvtph_ps(__m128i a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	m := j*16
        	dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cvtps_ph
---------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __m256 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm256_cvtps_ph(__m256 a, int imm8);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 16*j
        	l := 32*j
        	dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        ENDFOR
        dst[MAX:128] := 0
        	

