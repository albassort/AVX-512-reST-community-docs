AVX-512-Compare-YMM
===================

_mm256_cmp_epi8_mask
--------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    SI8 a, 
    SI8 b, 
    IMM imm8

.. code-block:: C

    __mmask32 _mm256_cmp_epi8_mask(__m256i a, __m256i b,
                                   const int imm8)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] OP b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmpeq_epi8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_cmpeq_epi8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for equality, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] == b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmpge_epi8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_cmpge_epi8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] >= b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmpgt_epi8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_cmpgt_epi8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] > b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmple_epi8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_cmple_epi8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] <= b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmplt_epi8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_cmplt_epi8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for less-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] < b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmpneq_epi8_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_cmpneq_epi8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] != b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmp_epi8_mask
-------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k1, 
    SI8 a, 
    SI8 b, 
    IMM imm8

.. code-block:: C

    __mmask32 _mm256_mask_cmp_epi8_mask(__mmask32 k1, __m256i a,
                                        __m256i b,
                                        const int imm8)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] OP b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmpeq_epi8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmpeq_epi8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for equality, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] == b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmpge_epi8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmpge_epi8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] >= b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmpgt_epi8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmpgt_epi8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] > b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmple_epi8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmple_epi8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] <= b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmplt_epi8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmplt_epi8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for less-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] < b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmpneq_epi8_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI8 a, 
    SI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmpneq_epi8_mask(__mmask32 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed signed 8-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] != b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmp_epu8_mask
--------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __mmask32 _mm256_cmp_epu8_mask(__m256i a, __m256i b,
                                   const int imm8)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] OP b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmpeq_epu8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_cmpeq_epu8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for equality, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] == b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmpge_epu8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_cmpge_epu8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] >= b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmpgt_epu8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_cmpgt_epu8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] > b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmple_epu8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_cmple_epu8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] <= b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmplt_epu8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_cmplt_epu8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for less-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] < b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmpneq_epu8_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_cmpneq_epu8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ( a[i+7:i] != b[i+7:i] ) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmp_epu8_mask
-------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __mmask32 _mm256_mask_cmp_epu8_mask(__mmask32 k1, __m256i a,
                                        __m256i b,
                                        const int imm8)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] OP b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmpeq_epu8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmpeq_epu8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for equality, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] == b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmpge_epu8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmpge_epu8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] >= b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmpgt_epu8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmpgt_epu8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] > b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmple_epu8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmple_epu8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] <= b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmplt_epu8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmplt_epu8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for less-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] < b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_cmpneq_epu8_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_mask_cmpneq_epu8_mask(__mmask32 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ( a[i+7:i] != b[i+7:i] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_cmp_epu16_mask
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm256_cmp_epu16_mask(__m256i a, __m256i b,
                                    const int imm8)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] OP b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmpeq_epu16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_cmpeq_epu16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for equality, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] == b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmpge_epu16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_cmpge_epu16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] >= b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmpgt_epu16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_cmpgt_epu16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] > b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmple_epu16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_cmple_epu16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] <= b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmplt_epu16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_cmplt_epu16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for less-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] < b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmpneq_epu16_mask
------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_cmpneq_epu16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] != b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmp_epu16_mask
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm256_mask_cmp_epu16_mask(__mmask16 k1,
                                         __m256i a, __m256i b,
                                         const int imm8)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] OP b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmpeq_epu16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmpeq_epu16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for equality, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] == b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmpge_epu16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmpge_epu16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] >= b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmpgt_epu16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmpgt_epu16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] > b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmple_epu16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmple_epu16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] <= b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmplt_epu16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmplt_epu16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for less-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] < b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmpneq_epu16_mask
-----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmpneq_epu16_mask(__mmask16 k1,
                                            __m256i a,
                                            __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 16-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] != b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmp_epi16_mask
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    SI16 a, 
    SI16 b, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm256_cmp_epi16_mask(__m256i a, __m256i b,
                                    const int imm8)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] OP b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmpeq_epi16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_cmpeq_epi16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for equality, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] == b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmpge_epi16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_cmpge_epi16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] >= b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmpgt_epi16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_cmpgt_epi16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] > b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmple_epi16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_cmple_epi16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] <= b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmplt_epi16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_cmplt_epi16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for less-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] < b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_cmpneq_epi16_mask
------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_cmpneq_epi16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ( a[i+15:i] != b[i+15:i] ) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmp_epi16_mask
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k1, 
    SI16 a, 
    SI16 b, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm256_mask_cmp_epi16_mask(__mmask16 k1,
                                         __m256i a, __m256i b,
                                         const int imm8)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] OP b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmpeq_epi16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmpeq_epi16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for equality, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] == b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmpge_epi16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmpge_epi16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] >= b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmpgt_epi16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmpgt_epi16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] > b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmple_epi16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmple_epi16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] <= b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmplt_epi16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmplt_epi16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for less-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] < b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmpneq_epi16_mask
-----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __mmask16 _mm256_mask_cmpneq_epi16_mask(__mmask16 k1,
                                            __m256i a,
                                            __m256i b)

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ( a[i+15:i] != b[i+15:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_test_epi8_mask
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_mask_test_epi8_mask(__mmask32 k1,
                                         __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 8-bit integers in "a" and "b", producing intermediate 8-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ((a[i+7:i] AND b[i+7:i]) != 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_test_epi8_mask
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_test_epi8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed 8-bit integers in "a" and "b", producing intermediate 8-bit values, and set the corresponding bit in result mask "k" if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ((a[i+7:i] AND b[i+7:i]) != 0) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_test_epi16_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_mask_test_epi16_mask(__mmask16 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 16-bit integers in "a" and "b", producing intermediate 16-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ((a[i+15:i] AND b[i+15:i]) != 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_test_epi16_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_test_epi16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed 16-bit integers in "a" and "b", producing intermediate 16-bit values, and set the corresponding bit in result mask "k" if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ((a[i+15:i] AND b[i+15:i]) != 0) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_testn_epi8_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_mask_testn_epi8_mask(__mmask32 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 8-bit integers in "a" and "b", producing intermediate 8-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k1[j]
        		k[j] := ((a[i+7:i] AND b[i+7:i]) == 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_testn_epi8_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __mmask32 _mm256_testn_epi8_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 8-bit integers in "a" and "b", producing intermediate 8-bit values, and set the corresponding bit in result mask "k" if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	k[j] := ((a[i+7:i] AND b[i+7:i]) == 0) ? 1 : 0
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_mask_testn_epi16_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_mask_testn_epi16_mask(__mmask16 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 16-bit integers in "a" and "b", producing intermediate 16-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k1[j]
        		k[j] := ((a[i+15:i] AND b[i+15:i]) == 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_testn_epi16_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __mmask16 _mm256_testn_epi16_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 16-bit integers in "a" and "b", producing intermediate 16-bit values, and set the corresponding bit in result mask "k" if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	k[j] := ((a[i+15:i] AND b[i+15:i]) == 0) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_conflict_epi32
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m256i _mm256_conflict_epi32(__m256i a);

.. admonition:: Intel Description

    Test each 32-bit element of "a" for equality with all other elements in "a" closer to the least significant bit. Each element's comparison forms a zero extended bit vector in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	FOR k := 0 to j-1
        		m := k*32
        		dst[i+k] := (a[i+31:i] == a[m+31:m]) ? 1 : 0
        	ENDFOR
        	dst[i+31:i+j] := 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_conflict_epi32
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_mask_conflict_epi32(__m256i src, __mmask8 k,
                                       __m256i a)

.. admonition:: Intel Description

    Test each 32-bit element of "a" for equality with all other elements in "a" closer to the least significant bit using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each element's comparison forms a zero extended bit vector in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		FOR l := 0 to j-1
        			m := l*32
        			dst[i+l] := (a[i+31:i] == a[m+31:m]) ? 1 : 0
        		ENDFOR
        		dst[i+31:i+j] := 0
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_conflict_epi32
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_conflict_epi32(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Test each 32-bit element of "a" for equality with all other elements in "a" closer to the least significant bit using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each element's comparison forms a zero extended bit vector in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		FOR l := 0 to j-1
        			m := l*32
        			dst[i+l] := (a[i+31:i] == a[m+31:m]) ? 1 : 0
        		ENDFOR
        		dst[i+31:i+j] := 0
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_conflict_epi64
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m256i _mm256_conflict_epi64(__m256i a);

.. admonition:: Intel Description

    Test each 64-bit element of "a" for equality with all other elements in "a" closer to the least significant bit. Each element's comparison forms a zero extended bit vector in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	FOR k := 0 to j-1
        		m := k*64
        		dst[i+k] := (a[i+63:i] == a[m+63:m]) ? 1 : 0
        	ENDFOR
        	dst[i+63:i+j] := 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_conflict_epi64
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_mask_conflict_epi64(__m256i src, __mmask8 k,
                                       __m256i a)

.. admonition:: Intel Description

    Test each 64-bit element of "a" for equality with all other elements in "a" closer to the least significant bit using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Each element's comparison forms a zero extended bit vector in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		FOR l := 0 to j-1
        			m := l*64
        			dst[i+l] := (a[i+63:i] == a[m+63:m]) ? 1 : 0
        		ENDFOR
        		dst[i+63:i+j] := 0
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_conflict_epi64
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_maskz_conflict_epi64(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Test each 64-bit element of "a" for equality with all other elements in "a" closer to the least significant bit using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). Each element's comparison forms a zero extended bit vector in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		FOR l := 0 to j-1
        			m := l*64
        			dst[i+l] := (a[i+63:i] == a[m+63:m]) ? 1 : 0
        		ENDFOR
        		dst[i+63:i+j] := 0
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_cmp_pd_mask
------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256d a, 
    __m256d b, 
    const int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_cmp_pd_mask(__m256d a, __m256d b,
                                const int imm8)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

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
        	k[j] := (a[i+63:i] OP b[i+63:i]) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmp_pd_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256d a, 
    __m256d b, 
    const int imm8
:Param ETypes:
    MASK k1, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_mask_cmp_pd_mask(__mmask8 k1, __m256d a,
                                     __m256d b, const int imm8)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

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
        	IF k1[j]
        		k[j] := ( a[i+63:i] OP b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmp_ps_mask
------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256 a, 
    __m256 b, 
    const int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_cmp_ps_mask(__m256 a, __m256 b,
                                const int imm8)

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

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
        	k[j] := (a[i+31:i] OP b[i+31:i]) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmp_ps_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256 a, 
    __m256 b, 
    const int imm8
:Param ETypes:
    MASK k1, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_mask_cmp_ps_mask(__mmask8 k1, __m256 a,
                                     __m256 b, const int imm8)

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

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
        	IF k1[j]
        		k[j] := ( a[i+31:i] OP b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmp_epi32_mask
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b, 
    _MM_CMPINT_ENUM imm8
:Param ETypes:
    SI32 a, 
    SI32 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_cmp_epi32_mask(__m256i a, __m256i b,
                                   _MM_CMPINT_ENUM imm8)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] OP b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmpeq_epi32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_cmpeq_epi32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for equality, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] == b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmpge_epi32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_cmpge_epi32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] >= b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmpgt_epi32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_cmpgt_epi32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] > b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmple_epi32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_cmple_epi32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] <= b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmplt_epi32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_cmplt_epi32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for less-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] < b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmpneq_epi32_mask
------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_cmpneq_epi32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] != b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmp_epi32_mask
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b, 
    _MM_CMPINT_ENUM imm8
:Param ETypes:
    MASK k1, 
    SI32 a, 
    SI32 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_mask_cmp_epi32_mask(__mmask8 k1, __m256i a,
                                        __m256i b,
                                        _MM_CMPINT_ENUM imm8)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] OP b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmpeq_epi32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpeq_epi32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for equality, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] == b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmpge_epi32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpge_epi32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] >= b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmpgt_epi32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpgt_epi32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] > b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmple_epi32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmple_epi32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] <= b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmplt_epi32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmplt_epi32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for less-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] < b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmpneq_epi32_mask
-----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpneq_epi32_mask(__mmask8 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] != b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmp_epi64_mask
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b, 
    _MM_CMPINT_ENUM imm8
:Param ETypes:
    SI64 a, 
    SI64 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_cmp_epi64_mask(__m256i a, __m256i b,
                                   _MM_CMPINT_ENUM imm8)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] OP b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmpeq_epi64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_cmpeq_epi64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for equality, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] == b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmpge_epi64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_cmpge_epi64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] >= b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmpgt_epi64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_cmpgt_epi64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] > b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmple_epi64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_cmple_epi64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] <= b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmplt_epi64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_cmplt_epi64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for less-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] < b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmpneq_epi64_mask
------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_cmpneq_epi64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] != b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmp_epi64_mask
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b, 
    _MM_CMPINT_ENUM imm8
:Param ETypes:
    MASK k1, 
    SI64 a, 
    SI64 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_mask_cmp_epi64_mask(__mmask8 k1, __m256i a,
                                        __m256i b,
                                        _MM_CMPINT_ENUM imm8)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] OP b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmpeq_epi64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpeq_epi64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for equality, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] == b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmpge_epi64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpge_epi64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] >= b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmpgt_epi64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpgt_epi64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] > b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmple_epi64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmple_epi64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] <= b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmplt_epi64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmplt_epi64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for less-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] < b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmpneq_epi64_mask
-----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    SI64 a, 
    SI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpneq_epi64_mask(__mmask8 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] != b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmp_epu32_mask
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b, 
    _MM_CMPINT_ENUM imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_cmp_epu32_mask(__m256i a, __m256i b,
                                   _MM_CMPINT_ENUM imm8)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] OP b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmpeq_epu32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_cmpeq_epu32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for equality, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] == b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmpge_epu32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_cmpge_epu32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] >= b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmpgt_epu32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_cmpgt_epu32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] > b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmple_epu32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_cmple_epu32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] <= b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmplt_epu32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_cmplt_epu32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for less-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] < b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmpneq_epu32_mask
------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_cmpneq_epu32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ( a[i+31:i] != b[i+31:i] ) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmp_epu32_mask
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b, 
    _MM_CMPINT_ENUM imm8
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_mask_cmp_epu32_mask(__mmask8 k1, __m256i a,
                                        __m256i b,
                                        _MM_CMPINT_ENUM imm8)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] OP b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmpeq_epu32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpeq_epu32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for equality, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] == b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmpge_epu32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpge_epu32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] >= b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmpgt_epu32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpgt_epu32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] > b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmple_epu32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmple_epu32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] <= b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmplt_epu32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmplt_epu32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for less-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] < b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_cmpneq_epu32_mask
-----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpneq_epu32_mask(__mmask8 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ( a[i+31:i] != b[i+31:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_cmp_epu64_mask
---------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b, 
    _MM_CMPINT_ENUM imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_cmp_epu64_mask(__m256i a, __m256i b,
                                   _MM_CMPINT_ENUM imm8)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] OP b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmpeq_epu64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_cmpeq_epu64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for equality, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] == b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmpge_epu64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_cmpge_epu64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] >= b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmpgt_epu64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_cmpgt_epu64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] > b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmple_epu64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_cmple_epu64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] <= b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmplt_epu64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_cmplt_epu64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for less-than, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] < b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmpneq_epu64_mask
------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_cmpneq_epu64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ( a[i+63:i] != b[i+63:i] ) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmp_epu64_mask
--------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b, 
    _MM_CMPINT_ENUM imm8
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_mask_cmp_epu64_mask(__mmask8 k1, __m256i a,
                                        __m256i b,
                                        _MM_CMPINT_ENUM imm8)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        CASE (imm8[2:0]) OF
        0: OP := _MM_CMPINT_EQ
        1: OP := _MM_CMPINT_LT
        2: OP := _MM_CMPINT_LE
        3: OP := _MM_CMPINT_FALSE
        4: OP := _MM_CMPINT_NE
        5: OP := _MM_CMPINT_NLT
        6: OP := _MM_CMPINT_NLE
        7: OP := _MM_CMPINT_TRUE
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] OP b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmpeq_epu64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpeq_epu64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for equality, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] == b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmpge_epu64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpge_epu64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for greater-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] >= b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmpgt_epu64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpgt_epu64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for greater-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] > b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmple_epu64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmple_epu64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for less-than-or-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] <= b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmplt_epu64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmplt_epu64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for less-than, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] < b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_cmpneq_epu64_mask
-----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_mask_cmpneq_epu64_mask(__mmask8 k1,
                                           __m256i a,
                                           __m256i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b" for not-equal, and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ( a[i+63:i] != b[i+63:i] ) ? 1 : 0
        	ELSE 
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_test_epi32_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_mask_test_epi32_mask(__mmask8 k1, __m256i a,
                                         __m256i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 32-bit integers in "a" and "b", producing intermediate 32-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ((a[i+31:i] AND b[i+31:i]) != 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_test_epi32_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_test_epi32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed 32-bit integers in "a" and "b", producing intermediate 32-bit values, and set the corresponding bit in result mask "k" if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ((a[i+31:i] AND b[i+31:i]) != 0) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_test_epi64_mask
---------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_mask_test_epi64_mask(__mmask8 k1, __m256i a,
                                         __m256i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 64-bit integers in "a" and "b", producing intermediate 64-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ((a[i+63:i] AND b[i+63:i]) != 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_test_epi64_mask
----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_test_epi64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed 64-bit integers in "a" and "b", producing intermediate 64-bit values, and set the corresponding bit in result mask "k" if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ((a[i+63:i] AND b[i+63:i]) != 0) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_testn_epi32_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_mask_testn_epi32_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 32-bit integers in "a" and "b", producing intermediate 32-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := ((a[i+31:i] AND b[i+31:i]) == 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_testn_epi32_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask8 _mm256_testn_epi32_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 32-bit integers in "a" and "b", producing intermediate 32-bit values, and set the corresponding bit in result mask "k" if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	k[j] := ((a[i+31:i] AND b[i+31:i]) == 0) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_testn_epi64_mask
----------------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_mask_testn_epi64_mask(__mmask8 k1,
                                          __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 64-bit integers in "a" and "b", producing intermediate 64-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := ((a[i+63:i] AND b[i+63:i]) == 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_testn_epi64_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm256_testn_epi64_mask(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 64-bit integers in "a" and "b", producing intermediate 64-bit values, and set the corresponding bit in result mask "k" if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	k[j] := ((a[i+63:i] AND b[i+63:i]) == 0) ? 1 : 0
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_cmp_ph_mask
------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256h a, 
    __m256h b, 
    const int imm8
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm256_cmp_ph_mask(__m256h a, __m256h b,
                                 const int imm8)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k".

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
        FOR j := 0 to 15
        	k[j] := (a.fp16[j] OP b.fp16[j]) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_cmp_ph_mask
-----------------------
:Tech: AVX-512
:Category: Compare
:Header: immintrin.h
:Searchable: AVX-512-Compare-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256h a, 
    __m256h b, 
    const int imm8
:Param ETypes:
    MASK k1, 
    FP16 a, 
    FP16 b, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm256_mask_cmp_ph_mask(__mmask16 k1, __m256h a,
                                      __m256h b,
                                      const int imm8)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b" based on the comparison operand specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).

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
        FOR j := 0 to 15
        	IF k1[j]
        		k[j] := ( a.fp16[j] OP b.fp16[j] ) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

