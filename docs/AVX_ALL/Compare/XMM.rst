AVX_ALL-Compare-XMM
===================

_mm_cmp_pd
----------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-XMM
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

    __m128d _mm_cmp_pd(__m128d a, __m128d b, const int imm8);

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
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := ( a[i+63:i] OP b[i+63:i] ) ? 0xFFFFFFFFFFFFFFFF : 0
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cmp_ps
----------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-XMM
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

    __m128 _mm_cmp_ps(__m128 a, __m128 b, const int imm8);

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
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := ( a[i+31:i] OP b[i+31:i] ) ? 0xFFFFFFFF : 0
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_cmp_sd
----------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-XMM
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

    __m128d _mm_cmp_sd(__m128d a, __m128d b, const int imm8);

.. admonition:: Intel Description

    Compare the lower double-precision (64-bit) floating-point element in "a" and "b" based on the comparison operand specified by "imm8", store the result in the lower element of "dst", and copy the upper element from "a" to the upper element of "dst".

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
        dst[63:0] := ( a[63:0] OP b[63:0] ) ? 0xFFFFFFFFFFFFFFFF : 0
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_cmp_ss
----------
:Tech: AVX_ALL
:Category: Compare
:Header: immintrin.h
:Searchable: AVX_ALL-Compare-XMM
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

    __m128 _mm_cmp_ss(__m128 a, __m128 b, const int imm8);

.. admonition:: Intel Description

    Compare the lower single-precision (32-bit) floating-point element in "a" and "b" based on the comparison operand specified by "imm8", store the result in the lower element of "dst", and copy the upper 3 packed elements from "a" to the upper elements of "dst".

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
        dst[31:0] := ( a[31:0] OP b[31:0] ) ? 0xFFFFFFFF : 0
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

