AVX_ALL-Miscellaneous-YMM
=========================

_mm256_movemask_pd
------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    int _mm256_movemask_pd(__m256d a);

.. admonition:: Intel Description

    Set each bit of mask "dst" based on the most significant bit of the corresponding packed double-precision (64-bit) floating-point element in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF a[i+63]
        		dst[j] := 1
        	ELSE
        		dst[j] := 0
        	FI
        ENDFOR
        dst[MAX:4] := 0
        	

_mm256_movemask_ps
------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    int _mm256_movemask_ps(__m256 a);

.. admonition:: Intel Description

    Set each bit of mask "dst" based on the most significant bit of the corresponding packed single-precision (32-bit) floating-point element in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF a[i+31]
        		dst[j] := 1
        	ELSE
        		dst[j] := 0
        	FI
        ENDFOR
        dst[MAX:8] := 0
        	

_mm256_alignr_epi8
------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_alignr_epi8(__m256i a, __m256i b,
                               const int imm8)

.. admonition:: Intel Description

    Concatenate pairs of 16-byte blocks in "a" and "b" into a 32-byte temporary result, shift the result right by "imm8" bytes, and store the low 16 bytes in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*128
        	tmp[255:0] := ((a[i+127:i] << 128)[255:0] OR b[i+127:i]) >> (imm8*8)
        	dst[i+127:i] := tmp[127:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_movemask_epi8
--------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256i a
:Param ETypes:
    UI8 a

.. code-block:: C

    int _mm256_movemask_epi8(__m256i a);

.. admonition:: Intel Description

    Create mask from the most significant bit of each 8-bit element in "a", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[j] := a[i+7]
        ENDFOR
        	

_mm256_mpsadbw_epu8
-------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mpsadbw_epu8(__m256i a, __m256i b,
                                const int imm8)

.. admonition:: Intel Description

    Compute the sum of absolute differences (SADs) of quadruplets of unsigned 8-bit integers in "a" compared to those in "b", and store the 16-bit results in "dst".
    	Eight SADs are performed for each 128-bit lane using one quadruplet from "b" and eight quadruplets from "a". One quadruplet is selected from "b" starting at on the offset specified in "imm8". Eight quadruplets are formed from sequential 8-bit integers selected from "a" starting at the offset specified in "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE MPSADBW(a[127:0], b[127:0], imm8[2:0]) {
        	a_offset := imm8[2]*32
        	b_offset := imm8[1:0]*32
        	FOR j := 0 to 7
        		i := j*8
        		k := a_offset+i
        		l := b_offset
        		tmp[i*2+15:i*2] := ABS(Signed(a[k+7:k] - b[l+7:l])) + ABS(Signed(a[k+15:k+8] - b[l+15:l+8])) + \
        		                   ABS(Signed(a[k+23:k+16] - b[l+23:l+16])) + ABS(Signed(a[k+31:k+24] - b[l+31:l+24]))
        	ENDFOR
        	RETURN tmp[127:0]
        }
        dst[127:0] := MPSADBW(a[127:0], b[127:0], imm8[2:0])
        dst[255:128] := MPSADBW(a[255:128], b[255:128], imm8[5:3])
        dst[MAX:256] := 0
        	

_mm256_packs_epi16
------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_packs_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers from "a" and "b" to packed 8-bit integers using signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[7:0] := Saturate8(a[15:0])
        dst[15:8] := Saturate8(a[31:16])
        dst[23:16] := Saturate8(a[47:32])
        dst[31:24] := Saturate8(a[63:48])
        dst[39:32] := Saturate8(a[79:64])
        dst[47:40] := Saturate8(a[95:80])
        dst[55:48] := Saturate8(a[111:96])
        dst[63:56] := Saturate8(a[127:112])
        dst[71:64] := Saturate8(b[15:0])
        dst[79:72] := Saturate8(b[31:16])
        dst[87:80] := Saturate8(b[47:32])
        dst[95:88] := Saturate8(b[63:48])
        dst[103:96] := Saturate8(b[79:64])
        dst[111:104] := Saturate8(b[95:80])
        dst[119:112] := Saturate8(b[111:96])
        dst[127:120] := Saturate8(b[127:112])
        dst[135:128] := Saturate8(a[143:128])
        dst[143:136] := Saturate8(a[159:144])
        dst[151:144] := Saturate8(a[175:160])
        dst[159:152] := Saturate8(a[191:176])
        dst[167:160] := Saturate8(a[207:192])
        dst[175:168] := Saturate8(a[223:208])
        dst[183:176] := Saturate8(a[239:224])
        dst[191:184] := Saturate8(a[255:240])
        dst[199:192] := Saturate8(b[143:128])
        dst[207:200] := Saturate8(b[159:144])
        dst[215:208] := Saturate8(b[175:160])
        dst[223:216] := Saturate8(b[191:176])
        dst[231:224] := Saturate8(b[207:192])
        dst[239:232] := Saturate8(b[223:208])
        dst[247:240] := Saturate8(b[239:224])
        dst[255:248] := Saturate8(b[255:240])
        dst[MAX:256] := 0
        	

_mm256_packs_epi32
------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_packs_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers from "a" and "b" to packed 16-bit integers using signed saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := Saturate16(a[31:0])
        dst[31:16] := Saturate16(a[63:32])
        dst[47:32] := Saturate16(a[95:64])
        dst[63:48] := Saturate16(a[127:96])
        dst[79:64] := Saturate16(b[31:0])
        dst[95:80] := Saturate16(b[63:32])
        dst[111:96] := Saturate16(b[95:64])
        dst[127:112] := Saturate16(b[127:96])
        dst[143:128] := Saturate16(a[159:128])
        dst[159:144] := Saturate16(a[191:160])
        dst[175:160] := Saturate16(a[223:192])
        dst[191:176] := Saturate16(a[255:224])
        dst[207:192] := Saturate16(b[159:128])
        dst[223:208] := Saturate16(b[191:160])
        dst[239:224] := Saturate16(b[223:192])
        dst[255:240] := Saturate16(b[255:224])
        dst[MAX:256] := 0
        	

_mm256_packus_epi16
-------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_packus_epi16(__m256i a, __m256i b);

.. admonition:: Intel Description

    Convert packed signed 16-bit integers from "a" and "b" to packed 8-bit integers using unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[7:0] := SaturateU8(a[15:0])
        dst[15:8] := SaturateU8(a[31:16])
        dst[23:16] := SaturateU8(a[47:32])
        dst[31:24] := SaturateU8(a[63:48])
        dst[39:32] := SaturateU8(a[79:64])
        dst[47:40] := SaturateU8(a[95:80])
        dst[55:48] := SaturateU8(a[111:96])
        dst[63:56] := SaturateU8(a[127:112])
        dst[71:64] := SaturateU8(b[15:0])
        dst[79:72] := SaturateU8(b[31:16])
        dst[87:80] := SaturateU8(b[47:32])
        dst[95:88] := SaturateU8(b[63:48])
        dst[103:96] := SaturateU8(b[79:64])
        dst[111:104] := SaturateU8(b[95:80])
        dst[119:112] := SaturateU8(b[111:96])
        dst[127:120] := SaturateU8(b[127:112])
        dst[135:128] := SaturateU8(a[143:128])
        dst[143:136] := SaturateU8(a[159:144])
        dst[151:144] := SaturateU8(a[175:160])
        dst[159:152] := SaturateU8(a[191:176])
        dst[167:160] := SaturateU8(a[207:192])
        dst[175:168] := SaturateU8(a[223:208])
        dst[183:176] := SaturateU8(a[239:224])
        dst[191:184] := SaturateU8(a[255:240])
        dst[199:192] := SaturateU8(b[143:128])
        dst[207:200] := SaturateU8(b[159:144])
        dst[215:208] := SaturateU8(b[175:160])
        dst[223:216] := SaturateU8(b[191:176])
        dst[231:224] := SaturateU8(b[207:192])
        dst[239:232] := SaturateU8(b[223:208])
        dst[247:240] := SaturateU8(b[239:224])
        dst[255:248] := SaturateU8(b[255:240])
        dst[MAX:256] := 0
        	

_mm256_packus_epi32
-------------------
:Tech: AVX_ALL
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX_ALL-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_packus_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Convert packed signed 32-bit integers from "a" and "b" to packed 16-bit integers using unsigned saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := SaturateU16(a[31:0])
        dst[31:16] := SaturateU16(a[63:32])
        dst[47:32] := SaturateU16(a[95:64])
        dst[63:48] := SaturateU16(a[127:96])
        dst[79:64] := SaturateU16(b[31:0])
        dst[95:80] := SaturateU16(b[63:32])
        dst[111:96] := SaturateU16(b[95:64])
        dst[127:112] := SaturateU16(b[127:96])
        dst[143:128] := SaturateU16(a[159:128])
        dst[159:144] := SaturateU16(a[191:160])
        dst[175:160] := SaturateU16(a[223:192])
        dst[191:176] := SaturateU16(a[255:224])
        dst[207:192] := SaturateU16(b[159:128])
        dst[223:208] := SaturateU16(b[191:160])
        dst[239:224] := SaturateU16(b[223:192])
        dst[255:240] := SaturateU16(b[255:224])
        dst[MAX:256] := 0
        	

