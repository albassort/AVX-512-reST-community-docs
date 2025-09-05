AVX_ALL-Arithmetic-YMM
======================

_mm256_add_pd
-------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_add_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Add packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] + b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_add_ps
-------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_add_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Add packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] + b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_addsub_pd
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_addsub_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Alternatively add and subtract packed double-precision (64-bit) floating-point elements in "a" to/from packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF ((j & 1) == 0)
        		dst[i+63:i] := a[i+63:i] - b[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i] + b[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_addsub_ps
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_addsub_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Alternatively add and subtract packed single-precision (32-bit) floating-point elements in "a" to/from packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF ((j & 1) == 0)
        		dst[i+31:i] := a[i+31:i] - b[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i] + b[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_div_pd
-------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_div_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Divide packed double-precision (64-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := 64*j
        	dst[i+63:i] := a[i+63:i] / b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_div_ps
-------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_div_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Divide packed single-precision (32-bit) floating-point elements in "a" by packed elements in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := 32*j
        	dst[i+31:i] := a[i+31:i] / b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_dp_ps
------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
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

    __m256 _mm256_dp_ps(__m256 a, __m256 b, const int imm8);

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
        			temp[i+31:i] := FP32(0.0)
        		FI
        	ENDFOR
        	
        	sum[31:0] := (temp[127:96] + temp[95:64]) + (temp[63:32] + temp[31:0])
        	
        	FOR j := 0 to 3
        		i := j*32
        		IF imm8[j%8]
        			tmpdst[i+31:i] := sum[31:0]
        		ELSE
        			tmpdst[i+31:i] := FP32(0.0)
        		FI
        	ENDFOR
        	RETURN tmpdst[127:0]
        }
        dst[127:0] := DP(a[127:0], b[127:0], imm8[7:0])
        dst[255:128] := DP(a[255:128], b[255:128], imm8[7:0])
        dst[MAX:256] := 0
        	

_mm256_hadd_pd
--------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_hadd_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of double-precision (64-bit) floating-point elements in "a" and "b", and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[127:64] + a[63:0]
        dst[127:64] := b[127:64] + b[63:0]
        dst[191:128] := a[255:192] + a[191:128]
        dst[255:192] := b[255:192] + b[191:128]
        dst[MAX:256] := 0
        	

_mm256_hadd_ps
--------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_hadd_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of single-precision (32-bit) floating-point elements in "a" and "b", and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[63:32] + a[31:0]
        dst[63:32] := a[127:96] + a[95:64]
        dst[95:64] := b[63:32] + b[31:0]
        dst[127:96] := b[127:96] + b[95:64]
        dst[159:128] := a[191:160] + a[159:128]
        dst[191:160] := a[255:224] + a[223:192]
        dst[223:192] := b[191:160] + b[159:128]
        dst[255:224] := b[255:224] + b[223:192]
        dst[MAX:256] := 0
        	

_mm256_hsub_pd
--------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_hsub_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of double-precision (64-bit) floating-point elements in "a" and "b", and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0] - a[127:64]
        dst[127:64] := b[63:0] - b[127:64]
        dst[191:128] := a[191:128] - a[255:192]
        dst[255:192] := b[191:128] - b[255:192]
        dst[MAX:256] := 0
        	

_mm256_hsub_ps
--------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_hsub_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of single-precision (32-bit) floating-point elements in "a" and "b", and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] - a[63:32]
        dst[63:32] := a[95:64] - a[127:96]
        dst[95:64] := b[31:0] - b[63:32]
        dst[127:96] := b[95:64] - b[127:96]
        dst[159:128] := a[159:128] - a[191:160]
        dst[191:160] := a[223:192] - a[255:224]
        dst[223:192] := b[159:128] - b[191:160]
        dst[255:224] := b[223:192] - b[255:224]
        dst[MAX:256] := 0
        	

_mm256_mul_pd
-------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mul_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] * b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mul_ps
-------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mul_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] * b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sub_pd
-------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_sub_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Subtract packed double-precision (64-bit) floating-point elements in "b" from packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] - b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sub_ps
-------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_sub_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Subtract packed single-precision (32-bit) floating-point elements in "b" from packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] - b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_add_epi8
---------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_add_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Add packed 8-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := a[i+7:i] + b[i+7:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_add_epi16
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_add_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Add packed 16-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := a[i+15:i] + b[i+15:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_add_epi32
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_add_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Add packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] + b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_add_epi64
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_add_epi64(__m256i a, __m256i b);

.. admonition:: Intel Description

    Add packed 64-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] + b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_adds_epi8
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_adds_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Add packed 8-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := Saturate8( a[i+7:i] + b[i+7:i] )
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_adds_epi16
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_adds_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Add packed 16-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := Saturate16( a[i+15:i] + b[i+15:i] )
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_adds_epu8
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_adds_epu8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Add packed unsigned 8-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := SaturateU8( a[i+7:i] + b[i+7:i] )
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_adds_epu16
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_adds_epu16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Add packed unsigned 16-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := SaturateU16( a[i+15:i] + b[i+15:i] )
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_hadd_epi16
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_hadd_epi16(__m256i a, __m256i b);

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
        dst[143:128] := a[159:144] + a[143:128]
        dst[159:144] := a[191:176] + a[175:160]
        dst[175:160] := a[223:208] + a[207:192]
        dst[191:176] := a[255:240] + a[239:224]
        dst[207:192] := b[159:144] + b[143:128]
        dst[223:208] := b[191:176] + b[175:160]
        dst[239:224] := b[223:208] + b[207:192]
        dst[255:240] := b[255:240] + b[239:224]
        dst[MAX:256] := 0
        	

_mm256_hadd_epi32
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_hadd_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Horizontally add adjacent pairs of 32-bit integers in "a" and "b", and pack the signed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[63:32] + a[31:0]
        dst[63:32] := a[127:96] + a[95:64]
        dst[95:64] := b[63:32] + b[31:0]
        dst[127:96] := b[127:96] + b[95:64]
        dst[159:128] := a[191:160] + a[159:128]
        dst[191:160] := a[255:224] + a[223:192]
        dst[223:192] := b[191:160] + b[159:128]
        dst[255:224] := b[255:224] + b[223:192]
        dst[MAX:256] := 0
        	

_mm256_hadds_epi16
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_hadds_epi16(__m256i a, __m256i b);

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
        dst[143:128] := Saturate16(a[159:144] + a[143:128])
        dst[159:144] := Saturate16(a[191:176] + a[175:160])
        dst[175:160] := Saturate16(a[223:208] + a[207:192])
        dst[191:176] := Saturate16(a[255:240] + a[239:224])
        dst[207:192] := Saturate16(b[159:144] + b[143:128])
        dst[223:208] := Saturate16(b[191:176] + b[175:160])
        dst[239:224] := Saturate16(b[223:208] + b[207:192])
        dst[255:240] := Saturate16(b[255:240] + b[239:224])
        dst[MAX:256] := 0
        	

_mm256_hsub_epi16
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_hsub_epi16(__m256i a, __m256i b);

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
        dst[143:128] := a[143:128] - a[159:144]
        dst[159:144] := a[175:160] - a[191:176]
        dst[175:160] := a[207:192] - a[223:208]
        dst[191:176] := a[239:224] - a[255:240]
        dst[207:192] := b[143:128] - b[159:144]
        dst[223:208] := b[175:160] - b[191:176]
        dst[239:224] := b[207:192] - b[223:208]
        dst[255:240] := b[239:224] - b[255:240]
        dst[MAX:256] := 0
        	

_mm256_hsub_epi32
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_hsub_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Horizontally subtract adjacent pairs of 32-bit integers in "a" and "b", and pack the signed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] - a[63:32]
        dst[63:32] := a[95:64] - a[127:96]
        dst[95:64] := b[31:0] - b[63:32]
        dst[127:96] := b[95:64] - b[127:96]
        dst[159:128] := a[159:128] - a[191:160]
        dst[191:160] := a[223:192] - a[255:224]
        dst[223:192] := b[159:128] - b[191:160]
        dst[255:224] := b[223:192] - b[255:224]
        dst[MAX:256] := 0
        	

_mm256_hsubs_epi16
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_hsubs_epi16(__m256i a, __m256i b);

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
        dst[143:128] := Saturate16(a[143:128] - a[159:144])
        dst[159:144] := Saturate16(a[175:160] - a[191:176])
        dst[175:160] := Saturate16(a[207:192] - a[223:208])
        dst[191:176] := Saturate16(a[239:224] - a[255:240])
        dst[207:192] := Saturate16(b[143:128] - b[159:144])
        dst[223:208] := Saturate16(b[175:160] - b[191:176])
        dst[239:224] := Saturate16(b[207:192] - b[223:208])
        dst[255:240] := Saturate16(b[239:224] - b[255:240])
        dst[MAX:256] := 0
        	

_mm256_madd_epi16
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_madd_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Horizontally add adjacent pairs of intermediate 32-bit integers, and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := SignExtend32(a[i+31:i+16]*b[i+31:i+16]) + SignExtend32(a[i+15:i]*b[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maddubs_epi16
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_maddubs_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Vertically multiply each unsigned 8-bit integer from "a" with the corresponding signed 8-bit integer from "b", producing intermediate signed 16-bit integers. Horizontally add adjacent pairs of intermediate signed 16-bit integers, and pack the saturated results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := Saturate16( a[i+15:i+8]*b[i+15:i+8] + a[i+7:i]*b[i+7:i] )
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mul_epi32
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_mul_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Multiply the low signed 32-bit integers from each packed 64-bit element in "a" and "b", and store the signed 64-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := SignExtend64(a[i+31:i]) * SignExtend64(b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mul_epu32
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mul_epu32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Multiply the low unsigned 32-bit integers from each packed 64-bit element in "a" and "b", and store the unsigned 64-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+31:i] * b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mulhi_epi16
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_mulhi_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Multiply the packed signed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mulhi_epu16
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_mulhi_epu16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Multiply the packed unsigned 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	tmp[31:0] := a[i+15:i] * b[i+15:i]
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mulhrs_epi16
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_mulhrs_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Truncate each intermediate integer to the 18 most significant bits, round by adding 1, and store bits [16:1] to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	tmp[31:0] := ((SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])) >> 14) + 1
        	dst[i+15:i] := tmp[16:1]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mullo_epi16
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_mullo_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Multiply the packed signed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the low 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        	dst[i+15:i] := tmp[15:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mullo_epi32
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_mullo_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Multiply the packed signed 32-bit integers in "a" and "b", producing intermediate 64-bit integers, and store the low 32 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	tmp[63:0] := a[i+31:i] * b[i+31:i]
        	dst[i+31:i] := tmp[31:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sad_epu8
---------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_sad_epu8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the absolute differences of packed unsigned 8-bit integers in "a" and "b", then horizontally sum each consecutive 8 differences to produce four unsigned 16-bit integers, and pack these unsigned 16-bit integers in the low 16 bits of 64-bit elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	tmp[i+7:i] := ABS(a[i+7:i] - b[i+7:i])
        ENDFOR
        FOR j := 0 to 3
        	i := j*64
        	dst[i+15:i] := tmp[i+7:i] + tmp[i+15:i+8] + tmp[i+23:i+16] + tmp[i+31:i+24] + \
        	               tmp[i+39:i+32] + tmp[i+47:i+40] + tmp[i+55:i+48] + tmp[i+63:i+56]
        	dst[i+63:i+16] := 0
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sign_epi8
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_sign_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Negate packed signed 8-bit integers in "a" when the corresponding signed 8-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF b[i+7:i] < 0
        		dst[i+7:i] := -(a[i+7:i])
        	ELSE IF b[i+7:i] == 0
        		dst[i+7:i] := 0
        	ELSE
        		dst[i+7:i] := a[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sign_epi16
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_sign_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Negate packed signed 16-bit integers in "a" when the corresponding signed 16-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF b[i+15:i] < 0
        		dst[i+15:i] := -(a[i+15:i])
        	ELSE IF b[i+15:i] == 0
        		dst[i+15:i] := 0
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sign_epi32
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_sign_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Negate packed signed 32-bit integers in "a" when the corresponding signed 32-bit integer in "b" is negative, and store the results in "dst". Element in "dst" are zeroed out when the corresponding element in "b" is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF b[i+31:i] < 0
        		dst[i+31:i] := -(a[i+31:i])
        	ELSE IF b[i+31:i] == 0
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sub_epi8
---------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_sub_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Subtract packed 8-bit integers in "b" from packed 8-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := a[i+7:i] - b[i+7:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sub_epi16
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_sub_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Subtract packed 16-bit integers in "b" from packed 16-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := a[i+15:i] - b[i+15:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sub_epi32
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_sub_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Subtract packed 32-bit integers in "b" from packed 32-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] - b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_sub_epi64
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_sub_epi64(__m256i a, __m256i b);

.. admonition:: Intel Description

    Subtract packed 64-bit integers in "b" from packed 64-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] - b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_subs_epi8
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_subs_epi8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Subtract packed signed 8-bit integers in "b" from packed 8-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := Saturate8(a[i+7:i] - b[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_subs_epi16
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_subs_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Subtract packed signed 16-bit integers in "b" from packed 16-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := Saturate16(a[i+15:i] - b[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_subs_epu8
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_subs_epu8(__m256i a, __m256i b);

.. admonition:: Intel Description

    Subtract packed unsigned 8-bit integers in "b" from packed unsigned 8-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := SaturateU8(a[i+7:i] - b[i+7:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_subs_epu16
-----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_subs_epu16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Subtract packed unsigned 16-bit integers in "b" from packed unsigned 16-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := SaturateU16(a[i+15:i] - b[i+15:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_madd52hi_avx_epu64
-------------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __X, 
    __m256i __Y, 
    __m256i __Z
:Param ETypes:
    UI64 __X, 
    UI64 __Y, 
    UI64 __Z

.. code-block:: C

    __m256i _mm256_madd52hi_avx_epu64(__m256i __X, __m256i __Y,
                                      __m256i __Z)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "__Y" and "__Z" to form a 104-bit intermediate result. Add the high 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "__X", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	tmp[127:0] := ZeroExtend64(__Y[i+51:i]) * ZeroExtend64(__Z[i+51:i])
        	dst[i+63:i] := __X[i+63:i] + ZeroExtend64(tmp[103:52])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_madd52lo_avx_epu64
-------------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __X, 
    __m256i __Y, 
    __m256i __Z
:Param ETypes:
    UI64 __X, 
    UI64 __Y, 
    UI64 __Z

.. code-block:: C

    __m256i _mm256_madd52lo_avx_epu64(__m256i __X, __m256i __Y,
                                      __m256i __Z)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "__Y" and "__Z" to form a 104-bit intermediate result. Add the low 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "__X", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	tmp[127:0] := ZeroExtend64(__Y[i+51:i]) * ZeroExtend64(__Z[i+51:i])
        	dst[i+63:i] := __X[i+63:i] + ZeroExtend64(tmp[51:0])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_madd52hi_epu64
---------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __X, 
    __m256i __Y, 
    __m256i __Z
:Param ETypes:
    UI64 __X, 
    UI64 __Y, 
    UI64 __Z

.. code-block:: C

    __m256i _mm256_madd52hi_epu64(__m256i __X, __m256i __Y,
                                  __m256i __Z)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "__Y" and "__Z" to form a 104-bit intermediate result. Add the high 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "__X", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	tmp[127:0] := ZeroExtend64(__Y[i+51:i]) * ZeroExtend64(__Z[i+51:i])
        	dst[i+63:i] := __X[i+63:i] + ZeroExtend64(tmp[103:52])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_madd52lo_epu64
---------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __X, 
    __m256i __Y, 
    __m256i __Z
:Param ETypes:
    UI64 __X, 
    UI64 __Y, 
    UI64 __Z

.. code-block:: C

    __m256i _mm256_madd52lo_epu64(__m256i __X, __m256i __Y,
                                  __m256i __Z)

.. admonition:: Intel Description

    Multiply packed unsigned 52-bit integers in each 64-bit element of "__Y" and "__Z" to form a 104-bit intermediate result. Add the low 52-bit unsigned integer from the intermediate result with the corresponding unsigned 64-bit integer in "__X", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	tmp[127:0] := ZeroExtend64(__Y[i+51:i]) * ZeroExtend64(__Z[i+51:i])
        	dst[i+63:i] := __X[i+63:i] + ZeroExtend64(tmp[51:0])
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_dpbusd_avx_epi32
-----------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 src, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_dpbusd_avx_epi32(__m256i src, __m256i a,
                                    __m256i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        	tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        	tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        	tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        	dst.dword[j] := src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4
        ENDFOR
        dst[MAX:256] := 0
        		

_mm256_dpbusds_avx_epi32
------------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 src, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_dpbusds_avx_epi32(__m256i src, __m256i a,
                                     __m256i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        	tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        	tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        	tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        	dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4)
        ENDFOR
        dst[MAX:256] := 0
        		

_mm256_dpwssd_avx_epi32
-----------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 src, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_dpwssd_avx_epi32(__m256i src, __m256i a,
                                    __m256i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        	tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        	dst.dword[j] := src.dword[j] + tmp1 + tmp2
        ENDFOR
        dst[MAX:256] := 0
        		

_mm256_dpwssds_avx_epi32
------------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 src, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_dpwssds_avx_epi32(__m256i src, __m256i a,
                                     __m256i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        	tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        	dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2)
        ENDFOR
        dst[MAX:256] := 0
        		

_mm256_dpbusd_epi32
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 src, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_dpbusd_epi32(__m256i src, __m256i a,
                                __m256i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        	tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        	tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        	tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        	dst.dword[j] := src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4
        ENDFOR
        dst[MAX:256] := 0
        		

_mm256_dpbusds_epi32
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 src, 
    UI8 a, 
    SI8 b

.. code-block:: C

    __m256i _mm256_dpbusds_epi32(__m256i src, __m256i a,
                                 __m256i b)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "a" with corresponding signed 8-bit integers in "b", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := Signed(ZeroExtend16(a.byte[4*j]) * SignExtend16(b.byte[4*j]))
        	tmp2.word := Signed(ZeroExtend16(a.byte[4*j+1]) * SignExtend16(b.byte[4*j+1]))
        	tmp3.word := Signed(ZeroExtend16(a.byte[4*j+2]) * SignExtend16(b.byte[4*j+2]))
        	tmp4.word := Signed(ZeroExtend16(a.byte[4*j+3]) * SignExtend16(b.byte[4*j+3]))
        	dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2 + tmp3 + tmp4)
        ENDFOR
        dst[MAX:256] := 0
        		

_mm256_dpwssd_epi32
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 src, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_dpwssd_epi32(__m256i src, __m256i a,
                                __m256i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        	tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        	dst.dword[j] := src.dword[j] + tmp1 + tmp2
        ENDFOR
        dst[MAX:256] := 0
        		

_mm256_dpwssds_epi32
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 src, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_dpwssds_epi32(__m256i src, __m256i a,
                                 __m256i b)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "a" with corresponding 16-bit integers in "b", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "src" using signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := SignExtend32(a.word[2*j]) * SignExtend32(b.word[2*j])
        	tmp2.dword := SignExtend32(a.word[2*j+1]) * SignExtend32(b.word[2*j+1])
        	dst.dword[j] := Saturate32(src.dword[j] + tmp1 + tmp2)
        ENDFOR
        dst[MAX:256] := 0
        		

_mm256_dpwsud_epi32
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    SI16 __A, 
    UI16 __B

.. code-block:: C

    __m256i _mm256_dpwsud_epi32(__m256i __W, __m256i __A,
                                __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "__A" with corresponding unsigned 16-bit integers in "__B", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "__W", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := SignExtend32(__A.word[2*j]) * ZeroExtend32(__B.word[2*j])
        	tmp2.dword := SignExtend32(__A.word[2*j+1]) * ZeroExtend32(__B.word[2*j+1])
        	dst.dword[j] := __W.dword[j] + tmp1 + tmp2
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_dpwsuds_epi32
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    SI16 __A, 
    UI16 __B

.. code-block:: C

    __m256i _mm256_dpwsuds_epi32(__m256i __W, __m256i __A,
                                 __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of signed 16-bit integers in "__A" with corresponding unsigned 16-bit integers in "__B", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "__W" with signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := SignExtend32(__A.word[2*j]) * ZeroExtend32(__B.word[2*j])
        	tmp2.dword := SignExtend32(__A.word[2*j+1]) * ZeroExtend32(__B.word[2*j+1])
        	dst.dword[j] := SIGNED_DWORD_SATURATE(__W.dword[j] + tmp1 + tmp2)
        ENDFOR
        dst[MAX:256] := 0			

_mm256_dpwusd_epi32
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    UI16 __A, 
    SI16 __B

.. code-block:: C

    __m256i _mm256_dpwusd_epi32(__m256i __W, __m256i __A,
                                __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of unsigned 16-bit integers in "__A" with corresponding signed 16-bit integers in "__B", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "__W", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := ZeroExtend32(__A.word[2*j]) * SignExtend32(__B.word[2*j])
        	tmp2.dword := ZeroExtend32(__A.word[2*j+1]) * SignExtend32(__B.word[2*j+1])
        	dst.dword[j] := __W.dword[j] + tmp1 + tmp2
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_dpwusds_epi32
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    UI16 __A, 
    SI16 __B

.. code-block:: C

    __m256i _mm256_dpwusds_epi32(__m256i __W, __m256i __A,
                                 __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of unsigned 16-bit integers in "__A" with corresponding signed 16-bit integers in "__B", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "__W" with signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := ZeroExtend32(__A.word[2*j]) * SignExtend32(__B.word[2*j])
        	tmp2.dword := ZeroExtend32(__A.word[2*j+1]) * SignExtend32(__B.word[2*j+1])
        	dst.dword[j] := SIGNED_DWORD_SATURATE(__W.dword[j] + tmp1 + tmp2)
        ENDFOR
        dst[MAX:256] := 0			

_mm256_dpwuud_epi32
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    UI32 __W, 
    UI16 __A, 
    UI16 __B

.. code-block:: C

    __m256i _mm256_dpwuud_epi32(__m256i __W, __m256i __A,
                                __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of unsigned 16-bit integers in "__A" with corresponding unsigned 16-bit integers in "__B", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "__W", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := ZeroExtend32(__A.word[2*j]) * ZeroExtend32(__B.word[2*j])
        	tmp2.dword := ZeroExtend32(__A.word[2*j+1]) * ZeroExtend32(__B.word[2*j+1])
        	dst.dword[j] := __W.dword[j] + tmp1 + tmp2
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_dpwuuds_epi32
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    UI32 __W, 
    UI16 __A, 
    UI16 __B

.. code-block:: C

    __m256i _mm256_dpwuuds_epi32(__m256i __W, __m256i __A,
                                 __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 2 adjacent pairs of unsigned 16-bit integers in "__A" with corresponding unsigned 16-bit integers in "__B", producing 2 intermediate signed 32-bit results. Sum these 2 results with the corresponding 32-bit integer in "__W" with signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.dword := ZeroExtend32(__A.word[2*j]) * ZeroExtend32(__B.word[2*j])
        	tmp2.dword := ZeroExtend32(__A.word[2*j+1]) * ZeroExtend32(__B.word[2*j+1])
        	dst.dword[j] := UNSIGNED_DWORD_SATURATE(__W.dword[j] + tmp1 + tmp2)
        ENDFOR
        dst[MAX:256] := 0			

_mm256_dpbssd_epi32
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    SI8 __A, 
    SI8 __B

.. code-block:: C

    __m256i _mm256_dpbssd_epi32(__m256i __W, __m256i __A,
                                __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of signed 8-bit integers in "__A" with corresponding signed 8-bit integers in "__B", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "__W", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := SignExtend16(__A.byte[4*j]) * SignExtend16(__B.byte[4*j])
        	tmp2.word := SignExtend16(__A.byte[4*j+1]) * SignExtend16(__B.byte[4*j+1])
        	tmp3.word := SignExtend16(__A.byte[4*j+2]) * SignExtend16(__B.byte[4*j+2])
        	tmp4.word := SignExtend16(__A.byte[4*j+3]) * SignExtend16(__B.byte[4*j+3])
        	dst.dword[j] := __W.dword[j] + tmp1 + tmp2 + tmp3 + tmp4
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_dpbssds_epi32
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    SI8 __A, 
    SI8 __B

.. code-block:: C

    __m256i _mm256_dpbssds_epi32(__m256i __W, __m256i __A,
                                 __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of signed 8-bit integers in "__A" with corresponding signed 8-bit integers in "__B", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "__W" with signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := SignExtend16(__A.byte[4*j]) * SignExtend16(__B.byte[4*j])
        	tmp2.word := SignExtend16(__A.byte[4*j+1]) * SignExtend16(__B.byte[4*j+1])
        	tmp3.word := SignExtend16(__A.byte[4*j+2]) * SignExtend16(__B.byte[4*j+2])
        	tmp4.word := SignExtend16(__A.byte[4*j+3]) * SignExtend16(__B.byte[4*j+3])
        	dst.dword[j] := SIGNED_DWORD_SATURATE(__W.dword[j] + tmp1 + tmp2 + tmp3 + tmp4)
        ENDFOR
        dst[MAX:256] := 0			

_mm256_dpbsud_epi32
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    SI8 __A, 
    UI8 __B

.. code-block:: C

    __m256i _mm256_dpbsud_epi32(__m256i __W, __m256i __A,                            __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of signed 8-bit integers in "__A" with corresponding unsigned 8-bit integers in "__B", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "__W", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := Signed(SignExtend16(__A.byte[4*j]) * ZeroExtend16(__B.byte[4*j]))
        	tmp2.word := Signed(SignExtend16(__A.byte[4*j+1]) * ZeroExtend16(__B.byte[4*j+1]))
        	tmp3.word := Signed(SignExtend16(__A.byte[4*j+2]) * ZeroExtend16(__B.byte[4*j+2]))
        	tmp4.word := Signed(SignExtend16(__A.byte[4*j+3]) * ZeroExtend16(__B.byte[4*j+3]))
        	dst.dword[j] := __W.dword[j] + tmp1 + tmp2 + tmp3 + tmp4
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_dpbsuds_epi32
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    SI8 __A, 
    UI8 __B

.. code-block:: C

    __m256i _mm256_dpbsuds_epi32(__m256i __W, __m256i __A,
                                 __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of signed 8-bit integers in "__A" with corresponding unsigned 8-bit integers in "__B", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "__W" with signed saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := Signed(SignExtend16(__A.byte[4*j]) * ZeroExtend16(__B.byte[4*j]))
        	tmp2.word := Signed(SignExtend16(__A.byte[4*j+1]) * ZeroExtend16(__B.byte[4*j+1]))
        	tmp3.word := Signed(SignExtend16(__A.byte[4*j+2]) * ZeroExtend16(__B.byte[4*j+2]))
        	tmp4.word := Signed(SignExtend16(__A.byte[4*j+3]) * ZeroExtend16(__B.byte[4*j+3]))
        	dst.dword[j] := SIGNED_DWORD_SATURATE(__W.dword[j] + tmp1 + tmp2 + tmp3 + tmp4)
        ENDFOR
        dst[MAX:256] := 0			

_mm256_dpbuud_epi32
-------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    UI8 __A, 
    UI8 __B

.. code-block:: C

    __m256i _mm256_dpbuud_epi32(__m256i __W, __m256i __A,
                                __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of unsigned 8-bit integers in "__A" with corresponding unsigned 8-bit integers in "__B", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "__W", and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := ZeroExtend16(__A.byte[4*j]) * ZeroExtend16(__B.byte[4*j])
        	tmp2.word := ZeroExtend16(__A.byte[4*j+1]) * ZeroExtend16(__B.byte[4*j+1])
        	tmp3.word := ZeroExtend16(__A.byte[4*j+2]) * ZeroExtend16(__B.byte[4*j+2])
        	tmp4.word := ZeroExtend16(__A.byte[4*j+3]) * ZeroExtend16(__B.byte[4*j+3])
        	dst.dword[j] := __W.dword[j] + tmp1 + tmp2 + tmp3 + tmp4
        ENDFOR
        dst[MAX:256] := 0
        

_mm256_dpbuuds_epi32
--------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i __W, 
    __m256i __A, 
    __m256i __B
:Param ETypes:
    SI32 __W, 
    UI8 __A, 
    UI8 __B

.. code-block:: C

    __m256i _mm256_dpbuuds_epi32(__m256i __W, __m256i __A,
                                 __m256i __B)

.. admonition:: Intel Description

    Multiply groups of 4 adjacent pairs of signed 8-bit integers in "__A" with corresponding unsigned 8-bit integers in "__B", producing 4 intermediate signed 16-bit results. Sum these 4 results with the corresponding 32-bit integer in "__W" with unsigned saturation, and store the packed 32-bit results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	tmp1.word := ZeroExtend16(__A.byte[4*j]) * ZeroExtend16(__B.byte[4*j])
        	tmp2.word := ZeroExtend16(__A.byte[4*j+1]) * ZeroExtend16(__B.byte[4*j+1])
        	tmp3.word := ZeroExtend16(__A.byte[4*j+2]) * ZeroExtend16(__B.byte[4*j+2])
        	tmp4.word := ZeroExtend16(__A.byte[4*j+3]) * ZeroExtend16(__B.byte[4*j+3])
        	dst.dword[j] := UNSIGNED_DWORD_SATURATE(__W.dword[j] + tmp1 + tmp2 + tmp3 + tmp4)
        ENDFOR
        dst[MAX:256] := 0			

_mm256_fmadd_pd
---------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    __m256d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m256d _mm256_fmadd_pd(__m256d a, __m256d b, __m256d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fmadd_ps
---------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    __m256 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m256 _mm256_fmadd_ps(__m256 a, __m256 b, __m256 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fmaddsub_pd
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    __m256d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m256d _mm256_fmaddsub_pd(__m256d a, __m256d b, __m256d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF ((j & 1) == 0) 
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	ELSE
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fmaddsub_ps
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    __m256 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m256 _mm256_fmaddsub_ps(__m256 a, __m256 b, __m256 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively add and subtract packed elements in "c" to/from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF ((j & 1) == 0) 
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	ELSE
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fmsub_pd
---------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    __m256d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m256d _mm256_fmsub_pd(__m256d a, __m256d b, __m256d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fmsub_ps
---------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    __m256 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m256 _mm256_fmsub_ps(__m256 a, __m256 b, __m256 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fmsubadd_pd
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    __m256d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m256d _mm256_fmsubadd_pd(__m256d a, __m256d b, __m256d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF ((j & 1) == 0) 
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) + c[i+63:i]
        	ELSE
        		dst[i+63:i] := (a[i+63:i] * b[i+63:i]) - c[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fmsubadd_ps
------------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    __m256 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m256 _mm256_fmsubadd_ps(__m256 a, __m256 b, __m256 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", alternatively subtract and add packed elements in "c" from/to the intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF ((j & 1) == 0) 
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) + c[i+31:i]
        	ELSE
        		dst[i+31:i] := (a[i+31:i] * b[i+31:i]) - c[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fnmadd_pd
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    __m256d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m256d _mm256_fnmadd_pd(__m256d a, __m256d b, __m256d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) + c[i+63:i]
        ENDFOR	
        dst[MAX:256] := 0
        	

_mm256_fnmadd_ps
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    __m256 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m256 _mm256_fnmadd_ps(__m256 a, __m256 b, __m256 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", add the negated intermediate result to packed elements in "c", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) + c[i+31:i]
        ENDFOR	
        dst[MAX:256] := 0
        	

_mm256_fnmsub_pd
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    __m256d c
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 c

.. code-block:: C

    __m256d _mm256_fnmsub_pd(__m256d a, __m256d b, __m256d c);

.. admonition:: Intel Description

    Multiply packed double-precision (64-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := -(a[i+63:i] * b[i+63:i]) - c[i+63:i]
        ENDFOR	
        dst[MAX:256] := 0
        	

_mm256_fnmsub_ps
----------------
:Tech: AVX_ALL
:Category: Arithmetic
:Header: immintrin.h
:Searchable: AVX_ALL-Arithmetic-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    __m256 c
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 c

.. code-block:: C

    __m256 _mm256_fnmsub_ps(__m256 a, __m256 b, __m256 c);

.. admonition:: Intel Description

    Multiply packed single-precision (32-bit) floating-point elements in "a" and "b", subtract packed elements in "c" from the negated intermediate result, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := -(a[i+31:i] * b[i+31:i]) - c[i+31:i]
        ENDFOR	
        dst[MAX:256] := 0
        	

