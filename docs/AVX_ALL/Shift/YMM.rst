AVX_ALL-Shift-YMM
=================

_mm256_slli_si256
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    const int imm8
:Param ETypes:
    M128 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_slli_si256(__m256i a, const int imm8);

.. admonition:: Intel Description

    Shift 128-bit lanes in "a" left by "imm8" bytes while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := imm8[7:0]
        IF tmp > 15
        	tmp := 16
        FI
        dst[127:0] := a[127:0] << (tmp*8)
        dst[255:128] := a[255:128] << (tmp*8)
        dst[MAX:256] := 0
        	

_mm256_bslli_epi128
-------------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    const int imm8
:Param ETypes:
    M128 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_bslli_epi128(__m256i a, const int imm8);

.. admonition:: Intel Description

    Shift 128-bit lanes in "a" left by "imm8" bytes while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := imm8[7:0]
        IF tmp > 15
        	tmp := 16
        FI
        dst[127:0] := a[127:0] << (tmp*8)
        dst[255:128] := a[255:128] << (tmp*8)
        dst[MAX:256] := 0
        	

_mm256_sll_epi16
----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m256i _mm256_sll_epi16(__m256i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] << count[63:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_slli_epi16
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_slli_epi16(__m256i a, int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] << imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sll_epi32
----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m256i _mm256_sll_epi32(__m256i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[63:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_slli_epi32
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_slli_epi32(__m256i a, int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sll_epi64
----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m256i _mm256_sll_epi64(__m256i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF count[63:0] > 63
        		dst[i+63:i] := 0
        	ELSE
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[63:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_slli_epi64
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_slli_epi64(__m256i a, int imm8);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF imm8[7:0] > 63
        		dst[i+63:i] := 0
        	ELSE
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] << imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sllv_epi32
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m256i _mm256_sllv_epi32(__m256i a, __m256i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sllv_epi64
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m256i _mm256_sllv_epi64(__m256i a, __m256i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF count[i+63:i] < 64
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sra_epi16
----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m256i _mm256_sra_epi16(__m256i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        	ELSE
        		dst[i+15:i] := SignExtend16(a[i+15:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srai_epi16
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    SI16 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_srai_epi16(__m256i a, int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := (a[i+15] ? 0xFFFF : 0x0)
        	ELSE
        		dst[i+15:i] := SignExtend16(a[i+15:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sra_epi32
----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m256i _mm256_sra_epi32(__m256i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        	ELSE
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srai_epi32
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    SI32 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_srai_epi32(__m256i a, int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0x0)
        	ELSE
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srav_epi32
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i count
:Param ETypes:
    SI32 a, 
    UI32 count

.. code-block:: C

    __m256i _mm256_srav_epi32(__m256i a, __m256i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> count[i+31:i])
        	ELSE
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0)
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srli_si256
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    const int imm8
:Param ETypes:
    M128 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_srli_si256(__m256i a, const int imm8);

.. admonition:: Intel Description

    Shift 128-bit lanes in "a" right by "imm8" bytes while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := imm8[7:0]
        IF tmp > 15
        	tmp := 16
        FI
        dst[127:0] := a[127:0] >> (tmp*8)
        dst[255:128] := a[255:128] >> (tmp*8)
        dst[MAX:256] := 0
        	

_mm256_bsrli_epi128
-------------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    const int imm8
:Param ETypes:
    M128 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_bsrli_epi128(__m256i a, const int imm8);

.. admonition:: Intel Description

    Shift 128-bit lanes in "a" right by "imm8" bytes while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := imm8[7:0]
        IF tmp > 15
        	tmp := 16
        FI
        dst[127:0] := a[127:0] >> (tmp*8)
        dst[255:128] := a[255:128] >> (tmp*8)
        dst[MAX:256] := 0
        	

_mm256_srl_epi16
----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i count
:Param ETypes:
    UI16 a, 
    UI16 count

.. code-block:: C

    __m256i _mm256_srl_epi16(__m256i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF count[63:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srli_epi16
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_srli_epi16(__m256i a, int imm8);

.. admonition:: Intel Description

    Shift packed 16-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF imm8[7:0] > 15
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := ZeroExtend16(a[i+15:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srl_epi32
----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m256i _mm256_srl_epi32(__m256i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF count[63:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srli_epi32
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_srli_epi32(__m256i a, int imm8);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF imm8[7:0] > 31
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srl_epi64
----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m256i _mm256_srl_epi64(__m256i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF count[63:0] > 63
        		dst[i+63:i] := 0
        	ELSE
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[63:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srli_epi64
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_srli_epi64(__m256i a, int imm8);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by "imm8" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF imm8[7:0] > 63
        		dst[i+63:i] := 0
        	ELSE
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] >> imm8[7:0])
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srlv_epi32
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m256i _mm256_srlv_epi32(__m256i a, __m256i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_srlv_epi64
-----------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m256i _mm256_srlv_epi64(__m256i a, __m256i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF count[i+63:i] < 64
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

