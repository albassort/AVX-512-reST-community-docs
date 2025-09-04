AVX_ALL-Compare-YMM
===================

_mm256_cmp_pd
-------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    const int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_cmp_pd(__m256d a, __m256d b, const int imm8);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b" based on the comparison operand specified by "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[4:0]) OF
        0: OP := _CMP_EQ_OQ
        1: OP := _CMP_LT_OS
        2: OP := _CMP_LE_OS
        3: OP := _CMP_UNORD_Q 
        4: OP := _CMP_NEQ_UQ
        5: OP := _CMP_NLT_US
        6: OP := _CMP_NLE_US
        7: OP := _CMP_ORD_Q
        8: OP := _CMP_EQ_UQ
        9: OP := _CMP_NGE_US
        10: OP := _CMP_NGT_US
        11: OP := _CMP_FALSE_OQ
        12: OP := _CMP_NEQ_OQ
        13: OP := _CMP_GE_OS
        14: OP := _CMP_GT_OS
        15: OP := _CMP_TRUE_UQ
        16: OP := _CMP_EQ_OS
        17: OP := _CMP_LT_OQ
        18: OP := _CMP_LE_OQ
        19: OP := _CMP_UNORD_S
        20: OP := _CMP_NEQ_US
        21: OP := _CMP_NLT_UQ
        22: OP := _CMP_NLE_UQ
        23: OP := _CMP_ORD_S
        24: OP := _CMP_EQ_US
        25: OP := _CMP_NGE_UQ 
        26: OP := _CMP_NGT_UQ 
        27: OP := _CMP_FALSE_OS 
        28: OP := _CMP_NEQ_OS 
        29: OP := _CMP_GE_OQ
        30: OP := _CMP_GT_OQ
        31: OP := _CMP_TRUE_US
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ( a[i+63:i] OP b[i+63:i] ) ? 0xFFFFFFFFFFFFFFFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmp_ps
-------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    const int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_cmp_ps(__m256 a, __m256 b, const int imm8);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b" based on the comparison operand specified by "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[4:0]) OF
        0: OP := _CMP_EQ_OQ
        1: OP := _CMP_LT_OS
        2: OP := _CMP_LE_OS
        3: OP := _CMP_UNORD_Q 
        4: OP := _CMP_NEQ_UQ
        5: OP := _CMP_NLT_US
        6: OP := _CMP_NLE_US
        7: OP := _CMP_ORD_Q
        8: OP := _CMP_EQ_UQ
        9: OP := _CMP_NGE_US
        10: OP := _CMP_NGT_US
        11: OP := _CMP_FALSE_OQ
        12: OP := _CMP_NEQ_OQ
        13: OP := _CMP_GE_OS
        14: OP := _CMP_GT_OS
        15: OP := _CMP_TRUE_UQ
        16: OP := _CMP_EQ_OS
        17: OP := _CMP_LT_OQ
        18: OP := _CMP_LE_OQ
        19: OP := _CMP_UNORD_S
        20: OP := _CMP_NEQ_US
        21: OP := _CMP_NLT_UQ
        22: OP := _CMP_NLE_UQ
        23: OP := _CMP_ORD_S
        24: OP := _CMP_EQ_US
        25: OP := _CMP_NGE_UQ 
        26: OP := _CMP_NGT_UQ 
        27: OP := _CMP_FALSE_OS 
        28: OP := _CMP_NEQ_OS 
        29: OP := _CMP_GE_OQ
        30: OP := _CMP_GT_OQ
        31: OP := _CMP_TRUE_US
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ( a[i+31:i] OP b[i+31:i] ) ? 0xFFFFFFFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmpeq_epi8
-----------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_cmpeq_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed 8-bit integers in "a" and "b" for equality, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := ( a[i+7:i] == b[i+7:i] ) ? 0xFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmpeq_epi16
------------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_cmpeq_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed 16-bit integers in "a" and "b" for equality, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ( a[i+15:i] == b[i+15:i] ) ? 0xFFFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmpeq_epi32
------------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_cmpeq_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed 32-bit integers in "a" and "b" for equality, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ( a[i+31:i] == b[i+31:i] ) ? 0xFFFFFFFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmpeq_epi64
------------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_cmpeq_epi64(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed 64-bit integers in "a" and "b" for equality, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ( a[i+63:i] == b[i+63:i] ) ? 0xFFFFFFFFFFFFFFFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmpgt_epi8
-----------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_cmpgt_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for greater-than, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := ( a[i+7:i] > b[i+7:i] ) ? 0xFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmpgt_epi16
------------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_cmpgt_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for greater-than, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := ( a[i+15:i] > b[i+15:i] ) ? 0xFFFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmpgt_epi32
------------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_cmpgt_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for greater-than, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ( a[i+31:i] > b[i+31:i] ) ? 0xFFFFFFFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmpgt_epi64
------------------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __m256i _mm256_cmpgt_epi64(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for greater-than, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ( a[i+63:i] > b[i+63:i] ) ? 0xFFFFFFFFFFFFFFFF : 0
        ENDFOR
        dst[MAX:256] := 0
        	

