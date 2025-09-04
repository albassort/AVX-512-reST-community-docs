AVX_ALL-Convert-XMM
===================

_mm_bcstnebf16_ps
-----------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    const __bf16* __A
:Param ETypes:
    BF16 __A

.. code-block:: C

    __m128 _mm_bcstnebf16_ps(const __bf16* __A);

.. admonition:: Intel Description

    Convert scalar BF16 (16-bit) floating-point element stored at memory locations starting at location "__A" to a single-precision (32-bit) floating-point, broadcast it to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        b := Convert_BF16_To_FP32(MEM[__A+15:__A])
        FOR j := 0 to 3
        	m := j*32
        	dst[m+31:m] := b
        ENDFOR
        dst[MAX:128] := 0
        

_mm_bcstnesh_ps
---------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    const _Float16* __A
:Param ETypes:
    FP16 __A

.. code-block:: C

    __m128 _mm_bcstnesh_ps(const _Float16* __A);

.. admonition:: Intel Description

    Convert scalar half-precision (16-bit) floating-point element stored at memory locations starting at location "__A" to a single-precision (32-bit) floating-point, broadcast it to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        b := Convert_FP16_To_FP32(MEM[__A+15:__A])
        FOR j := 0 to 3
        	m := j*32
        	dst[m+31:m] := b
        ENDFOR
        dst[MAX:128] := 0
        

_mm_cvtneebf16_ps
-----------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    const __m128bh* __A
:Param ETypes:
    BF16 __A

.. code-block:: C

    __m128 _mm_cvtneebf16_ps(const __m128bh* __A);

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point even-indexed elements stored at memory locations starting at location "__A" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	m := j*32
        	dst[m+31:m] := Convert_BF16_To_FP32(MEM[__A+m+15:__A+m])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_cvtneeph_ps
---------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    const __m128h* __A
:Param ETypes:
    FP16 __A

.. code-block:: C

    __m128 _mm_cvtneeph_ps(const __m128h* __A);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point even-indexed elements stored at memory locations starting at location "__A" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	m := j*32
        	dst[m+31:m] := Convert_FP16_To_FP32(MEM[__A+m+15:__A+m])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_cvtneobf16_ps
-----------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    const __m128bh* __A
:Param ETypes:
    BF16 __A

.. code-block:: C

    __m128 _mm_cvtneobf16_ps(const __m128bh* __A);

.. admonition:: Intel Description

    Convert packed BF16 (16-bit) floating-point odd-indexed elements stored at memory locations starting at location "__A" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	m := j*32
        	dst[m+31:m] := Convert_BF16_To_FP32(MEM[__A+m+31:__A+m+16])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_cvtneoph_ps
---------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    const __m128h* __A
:Param ETypes:
    FP16 __A

.. code-block:: C

    __m128 _mm_cvtneoph_ps(const __m128h* __A);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point odd-indexed elements stored at memory locations starting at location "__A" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	m := j*32
        	dst[m+31:m] := Convert_FP16_To_FP32(MEM[__A+m+31:__A+m+16])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_cvtneps_avx_pbh
-------------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128bh
:Param Types:
    __m128 __A
:Param ETypes:
    FP32 __A

.. code-block:: C

    __m128bh _mm_cvtneps_avx_pbh(__m128 __A);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "__A" to packed BF16 (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	dst.word[j] := Convert_FP32_To_BF16(__A.fp32[j])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_cvtneps_pbh
---------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128bh
:Param Types:
    __m128 __A
:Param ETypes:
    FP32 __A

.. code-block:: C

    __m128bh _mm_cvtneps_pbh(__m128 __A);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "__A" to packed BF16 (16-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	dst.word[j] := Convert_FP32_To_BF16(__A.fp32[j])
        ENDFOR
        dst[MAX:128] := 0
        

_mm_cvtph_ps
------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128i a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m128 _mm_cvtph_ps(__m128i a);

.. admonition:: Intel Description

    Convert packed half-precision (16-bit) floating-point elements in "a" to packed single-precision (32-bit) floating-point elements, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*16
        	dst[i+31:i] := Convert_FP16_To_FP32(a[m+15:m])
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cvtps_ph
------------
:Tech: AVX_ALL
:Category: Convert
:Header: immintrin.h
:Searchable: AVX_ALL-Convert-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_cvtps_ph(__m128 a, int imm8);

.. admonition:: Intel Description

    Convert packed single-precision (32-bit) floating-point elements in "a" to packed half-precision (16-bit) floating-point elements, and store the results in "dst".
    	[round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 16*j
        	l := 32*j
        	dst[i+15:i] := Convert_FP32_To_FP16(a[l+31:l])
        ENDFOR
        dst[MAX:64] := 0
        	

