AVX-512-Miscellaneous-YMM
=========================

_mm256_dbsad_epu8
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_dbsad_epu8(__m256i a, __m256i b, int imm8);

.. admonition:: Intel Description

    Compute the sum of absolute differences (SADs) of quadruplets of unsigned 8-bit integers in "a" compared to those in "b", and store the 16-bit results in "dst".
    	Four SADs are performed on four 8-bit quadruplets for each 64-bit lane. The first two SADs use the lower 8-bit quadruplet of the lane from "a", and the last two SADs use the uppper 8-bit quadruplet of the lane from "a". Quadruplets from "b" are selected from within 128-bit lanes according to the control in "imm8", and each SAD in each 64-bit lane uses the selected quadruplet at 8-bit offsets.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 1
        	tmp.m128[i].dword[0] := b.m128[i].dword[ imm8[1:0] ]
        	tmp.m128[i].dword[1] := b.m128[i].dword[ imm8[3:2] ]
        	tmp.m128[i].dword[2] := b.m128[i].dword[ imm8[5:4] ]
        	tmp.m128[i].dword[3] := b.m128[i].dword[ imm8[7:6] ]
        ENDFOR
        FOR j := 0 to 3
        	i := j*64
        	dst[i+15:i] := ABS(a[i+7:i] - tmp[i+7:i]) + ABS(a[i+15:i+8] - tmp[i+15:i+8]) +\
        	               ABS(a[i+23:i+16] - tmp[i+23:i+16]) + ABS(a[i+31:i+24] - tmp[i+31:i+24])
        	
        	dst[i+31:i+16] := ABS(a[i+7:i] - tmp[i+15:i+8]) + ABS(a[i+15:i+8] - tmp[i+23:i+16]) +\
        	                  ABS(a[i+23:i+16] - tmp[i+31:i+24]) + ABS(a[i+31:i+24] - tmp[i+39:i+32])
        	
        	dst[i+47:i+32] := ABS(a[i+39:i+32] - tmp[i+23:i+16]) + ABS(a[i+47:i+40] - tmp[i+31:i+24]) +\
        	                  ABS(a[i+55:i+48] - tmp[i+39:i+32]) + ABS(a[i+63:i+56] - tmp[i+47:i+40])
        	
        	dst[i+63:i+48] := ABS(a[i+39:i+32] - tmp[i+31:i+24]) + ABS(a[i+47:i+40] - tmp[i+39:i+32]) +\
        	                  ABS(a[i+55:i+48] - tmp[i+47:i+40]) + ABS(a[i+63:i+56] - tmp[i+55:i+48])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_dbsad_epu8
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_dbsad_epu8(__m256i src, __mmask16 k,
                                   __m256i a, __m256i b,
                                   int imm8)

.. admonition:: Intel Description

    Compute the sum of absolute differences (SADs) of quadruplets of unsigned 8-bit integers in "a" compared to those in "b", and store the 16-bit results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	Four SADs are performed on four 8-bit quadruplets for each 64-bit lane. The first two SADs use the lower 8-bit quadruplet of the lane from "a", and the last two SADs use the uppper 8-bit quadruplet of the lane from "a". Quadruplets from "b" are selected from within 128-bit lanes according to the control in "imm8", and each SAD in each 64-bit lane uses the selected quadruplet at 8-bit offsets.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 1
        	tmp.m128[i].dword[0] := b.m128[i].dword[ imm8[1:0] ]
        	tmp.m128[i].dword[1] := b.m128[i].dword[ imm8[3:2] ]
        	tmp.m128[i].dword[2] := b.m128[i].dword[ imm8[5:4] ]
        	tmp.m128[i].dword[3] := b.m128[i].dword[ imm8[7:6] ]
        ENDFOR
        FOR j := 0 to 3
        	i := j*64
        	tmp_dst[i+15:i] := ABS(a[i+7:i] - tmp[i+7:i]) + ABS(a[i+15:i+8] - tmp[i+15:i+8]) +\
        	                   ABS(a[i+23:i+16] - tmp[i+23:i+16]) + ABS(a[i+31:i+24] - tmp[i+31:i+24])
        	
        	tmp_dst[i+31:i+16] := ABS(a[i+7:i] - tmp[i+15:i+8]) + ABS(a[i+15:i+8] - tmp[i+23:i+16]) +\
        	                      ABS(a[i+23:i+16] - tmp[i+31:i+24]) + ABS(a[i+31:i+24] - tmp[i+39:i+32])
        	
        	tmp_dst[i+47:i+32] := ABS(a[i+39:i+32] - tmp[i+23:i+16]) + ABS(a[i+47:i+40] - tmp[i+31:i+24]) +\
        	                      ABS(a[i+55:i+48] - tmp[i+39:i+32]) + ABS(a[i+63:i+56] - tmp[i+47:i+40])
        	
        	tmp_dst[i+63:i+48] := ABS(a[i+39:i+32] - tmp[i+31:i+24]) + ABS(a[i+47:i+40] - tmp[i+39:i+32]) +\
        	                      ABS(a[i+55:i+48] - tmp[i+47:i+40]) + ABS(a[i+63:i+56] - tmp[i+55:i+48])
        ENDFOR
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_dbsad_epu8
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_dbsad_epu8(__mmask16 k, __m256i a,
                                    __m256i b, int imm8)

.. admonition:: Intel Description

    Compute the sum of absolute differences (SADs) of quadruplets of unsigned 8-bit integers in "a" compared to those in "b", and store the 16-bit results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	Four SADs are performed on four 8-bit quadruplets for each 64-bit lane. The first two SADs use the lower 8-bit quadruplet of the lane from "a", and the last two SADs use the uppper 8-bit quadruplet of the lane from "a". Quadruplets from "b" are selected from within 128-bit lanes according to the control in "imm8", and each SAD in each 64-bit lane uses the selected quadruplet at 8-bit offsets.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 1
        	tmp.m128[i].dword[0] := b.m128[i].dword[ imm8[1:0] ]
        	tmp.m128[i].dword[1] := b.m128[i].dword[ imm8[3:2] ]
        	tmp.m128[i].dword[2] := b.m128[i].dword[ imm8[5:4] ]
        	tmp.m128[i].dword[3] := b.m128[i].dword[ imm8[7:6] ]
        ENDFOR
        FOR j := 0 to 3
        	i := j*64
        	tmp_dst[i+15:i] := ABS(a[i+7:i] - tmp[i+7:i]) + ABS(a[i+15:i+8] - tmp[i+15:i+8]) +\
        	                   ABS(a[i+23:i+16] - tmp[i+23:i+16]) + ABS(a[i+31:i+24] - tmp[i+31:i+24])
        	
        	tmp_dst[i+31:i+16] := ABS(a[i+7:i] - tmp[i+15:i+8]) + ABS(a[i+15:i+8] - tmp[i+23:i+16]) +\
        	                      ABS(a[i+23:i+16] - tmp[i+31:i+24]) + ABS(a[i+31:i+24] - tmp[i+39:i+32])
        	
        	tmp_dst[i+47:i+32] := ABS(a[i+39:i+32] - tmp[i+23:i+16]) + ABS(a[i+47:i+40] - tmp[i+31:i+24]) +\
        	                      ABS(a[i+55:i+48] - tmp[i+39:i+32]) + ABS(a[i+63:i+56] - tmp[i+47:i+40])
        	
        	tmp_dst[i+63:i+48] := ABS(a[i+39:i+32] - tmp[i+31:i+24]) + ABS(a[i+47:i+40] - tmp[i+39:i+32]) +\
        	                      ABS(a[i+55:i+48] - tmp[i+47:i+40]) + ABS(a[i+63:i+56] - tmp[i+55:i+48])
        ENDFOR
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_alignr_epi8
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_alignr_epi8(__m256i src, __mmask32 k,
                                    __m256i a, __m256i b,
                                    const int imm8)

.. admonition:: Intel Description

    Concatenate pairs of 16-byte blocks in "a" and "b" into a 32-byte temporary result, shift the result right by "imm8" bytes, and store the low 16 bytes in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*128
        	tmp[255:0] := ((a[i+127:i] << 128)[255:0] OR b[i+127:i]) >> (imm8*8)
        	tmp_dst[i+127:i] := tmp[127:0]
        ENDFOR
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_alignr_epi8
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_alignr_epi8(__mmask32 k, __m256i a,
                                     __m256i b, const int imm8)

.. admonition:: Intel Description

    Concatenate pairs of 16-byte blocks in "a" and "b" into a 32-byte temporary result, shift the result right by "imm8" bytes, and store the low 16 bytes in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*128
        	tmp[255:0] := ((a[i+127:i] << 128)[255:0] OR b[i+127:i]) >> (imm8*8)
        	tmp_dst[i+127:i] := tmp[127:0]
        ENDFOR
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_blend_epi8
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_mask_blend_epi8(__mmask32 k, __m256i a,
                                   __m256i b)

.. admonition:: Intel Description

    Blend packed 8-bit integers from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := b[i+7:i]
        	ELSE
        		dst[i+7:i] := a[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_blend_epi16
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_mask_blend_epi16(__mmask16 k, __m256i a,
                                    __m256i b)

.. admonition:: Intel Description

    Blend packed 16-bit integers from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := b[i+15:i]
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcastb_epi8
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m256i _mm256_mask_broadcastb_epi8(__m256i src,
                                        __mmask32 k, __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 8-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[7:0]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcastb_epi8
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m256i _mm256_maskz_broadcastb_epi8(__mmask32 k,
                                         __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 8-bit integer from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[7:0]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcastw_epi16
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm256_mask_broadcastw_epi16(__m256i src,
                                         __mmask16 k,
                                         __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 16-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[15:0]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcastw_epi16
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm256_maskz_broadcastw_epi16(__mmask16 k,
                                          __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 16-bit integer from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[15:0]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask2_permutex2var_epi16
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i idx, 
    __mmask16 k, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 idx, 
    MASK k, 
    UI16 b

.. code-block:: C

    __m256i _mm256_mask2_permutex2var_epi16(__m256i a,
                                            __m256i idx,
                                            __mmask16 k,
                                            __m256i b)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		off := 16*idx[i+3:i]
        		dst[i+15:i] := idx[i+4] ? b[off+15:off] : a[off+15:off]
        	ELSE
        		dst[i+15:i] := idx[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutex2var_epi16
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __mmask16 k, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    UI16 a, 
    MASK k, 
    UI16 idx, 
    UI16 b

.. code-block:: C

    __m256i _mm256_mask_permutex2var_epi16(__m256i a,
                                           __mmask16 k,
                                           __m256i idx,
                                           __m256i b)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		off := 16*idx[i+3:i]
        		dst[i+15:i] := idx[i+4] ? b[off+15:off] : a[off+15:off]
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutex2var_epi16
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 idx, 
    UI16 b

.. code-block:: C

    __m256i _mm256_maskz_permutex2var_epi16(__mmask16 k,
                                            __m256i a,
                                            __m256i idx,
                                            __m256i b)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		off := 16*idx[i+3:i]
        		dst[i+15:i] := idx[i+4] ? b[off+15:off] : a[off+15:off]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutex2var_epi16
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    UI16 a, 
    UI16 idx, 
    UI16 b

.. code-block:: C

    __m256i _mm256_permutex2var_epi16(__m256i a, __m256i idx,
                                      __m256i b)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	off := 16*idx[i+3:i]
        	dst[i+15:i] := idx[i+4] ? b[off+15:off] : a[off+15:off]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutexvar_epi16
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i idx, 
    __m256i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 idx, 
    UI16 a

.. code-block:: C

    __m256i _mm256_mask_permutexvar_epi16(__m256i src,
                                          __mmask16 k,
                                          __m256i idx,
                                          __m256i a)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	id := idx[i+3:i]*16
        	IF k[j]
        		dst[i+15:i] := a[id+15:id]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutexvar_epi16
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i idx, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI16 idx, 
    UI16 a

.. code-block:: C

    __m256i _mm256_maskz_permutexvar_epi16(__mmask16 k,
                                           __m256i idx,
                                           __m256i a)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	id := idx[i+3:i]*16
        	IF k[j]
        		dst[i+15:i] := a[id+15:id]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutexvar_epi16
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i idx, 
    __m256i a
:Param ETypes:
    UI16 idx, 
    UI16 a

.. code-block:: C

    __m256i _mm256_permutexvar_epi16(__m256i idx, __m256i a);

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	id := idx[i+3:i]*16
        	dst[i+15:i] := a[id+15:id]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_movepi8_mask
-------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask32
:Param Types:
    __m256i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __mmask32 _mm256_movepi8_mask(__m256i a);

.. admonition:: Intel Description

    Set each bit of mask register "k" based on the most significant bit of the corresponding packed 8-bit integer in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF a[i+7]
        		k[j] := 1
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm256_movm_epi8
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m256i _mm256_movm_epi8(__mmask32 k);

.. admonition:: Intel Description

    Set each packed 8-bit integer in "dst" to all ones or all zeros based on the value of the corresponding bit in "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := 0xFF
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_movm_epi16
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m256i _mm256_movm_epi16(__mmask16 k);

.. admonition:: Intel Description

    Set each packed 16-bit integer in "dst" to all ones or all zeros based on the value of the corresponding bit in "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := 0xFFFF
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_movepi16_mask
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __mmask16 _mm256_movepi16_mask(__m256i a);

.. admonition:: Intel Description

    Set each bit of mask register "k" based on the most significant bit of the corresponding packed 16-bit integer in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF a[i+15]
        		k[j] := 1
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_shufflehi_epi16
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i a, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_shufflehi_epi16(__m256i src,
                                        __mmask16 k, __m256i a,
                                        int imm8)

.. admonition:: Intel Description

    Shuffle 16-bit integers in the high 64 bits of 128-bit lanes of "a" using the control in "imm8". Store the results in the high 64 bits of 128-bit lanes of "dst", with the low 64 bits of 128-bit lanes being copied from from "a" to "dst", using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[63:0] := a[63:0]
        tmp_dst[79:64] := (a >> (imm8[1:0] * 16))[79:64]
        tmp_dst[95:80] := (a >> (imm8[3:2] * 16))[79:64]
        tmp_dst[111:96] := (a >> (imm8[5:4] * 16))[79:64]
        tmp_dst[127:112] := (a >> (imm8[7:6] * 16))[79:64]
        tmp_dst[191:128] := a[191:128]
        tmp_dst[207:192] := (a >> (imm8[1:0] * 16))[207:192]
        tmp_dst[223:208] := (a >> (imm8[3:2] * 16))[207:192]
        tmp_dst[239:224] := (a >> (imm8[5:4] * 16))[207:192]
        tmp_dst[255:240] := (a >> (imm8[7:6] * 16))[207:192]
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shufflehi_epi16
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_shufflehi_epi16(__mmask16 k, __m256i a,
                                         int imm8)

.. admonition:: Intel Description

    Shuffle 16-bit integers in the high 64 bits of 128-bit lanes of "a" using the control in "imm8". Store the results in the high 64 bits of 128-bit lanes of "dst", with the low 64 bits of 128-bit lanes being copied from from "a" to "dst", using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[63:0] := a[63:0]
        tmp_dst[79:64] := (a >> (imm8[1:0] * 16))[79:64]
        tmp_dst[95:80] := (a >> (imm8[3:2] * 16))[79:64]
        tmp_dst[111:96] := (a >> (imm8[5:4] * 16))[79:64]
        tmp_dst[127:112] := (a >> (imm8[7:6] * 16))[79:64]
        tmp_dst[191:128] := a[191:128]
        tmp_dst[207:192] := (a >> (imm8[1:0] * 16))[207:192]
        tmp_dst[223:208] := (a >> (imm8[3:2] * 16))[207:192]
        tmp_dst[239:224] := (a >> (imm8[5:4] * 16))[207:192]
        tmp_dst[255:240] := (a >> (imm8[7:6] * 16))[207:192]
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_shufflelo_epi16
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i a, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_shufflelo_epi16(__m256i src,
                                        __mmask16 k, __m256i a,
                                        int imm8)

.. admonition:: Intel Description

    Shuffle 16-bit integers in the low 64 bits of 128-bit lanes of "a" using the control in "imm8". Store the results in the low 64 bits of 128-bit lanes of "dst", with the high 64 bits of 128-bit lanes being copied from from "a" to "dst", using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[15:0] := (a >> (imm8[1:0] * 16))[15:0]
        tmp_dst[31:16] := (a >> (imm8[3:2] * 16))[15:0]
        tmp_dst[47:32] := (a >> (imm8[5:4] * 16))[15:0]
        tmp_dst[63:48] := (a >> (imm8[7:6] * 16))[15:0]
        tmp_dst[127:64] := a[127:64]
        tmp_dst[143:128] := (a >> (imm8[1:0] * 16))[143:128]
        tmp_dst[159:144] := (a >> (imm8[3:2] * 16))[143:128]
        tmp_dst[175:160] := (a >> (imm8[5:4] * 16))[143:128]
        tmp_dst[191:176] := (a >> (imm8[7:6] * 16))[143:128]
        tmp_dst[255:192] := a[255:192]
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shufflelo_epi16
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_shufflelo_epi16(__mmask16 k, __m256i a,
                                         int imm8)

.. admonition:: Intel Description

    Shuffle 16-bit integers in the low 64 bits of 128-bit lanes of "a" using the control in "imm8". Store the results in the low 64 bits of 128-bit lanes of "dst", with the high 64 bits of 128-bit lanes being copied from from "a" to "dst", using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[15:0] := (a >> (imm8[1:0] * 16))[15:0]
        tmp_dst[31:16] := (a >> (imm8[3:2] * 16))[15:0]
        tmp_dst[47:32] := (a >> (imm8[5:4] * 16))[15:0]
        tmp_dst[63:48] := (a >> (imm8[7:6] * 16))[15:0]
        tmp_dst[127:64] := a[127:64]
        tmp_dst[143:128] := (a >> (imm8[1:0] * 16))[143:128]
        tmp_dst[159:144] := (a >> (imm8[3:2] * 16))[143:128]
        tmp_dst[175:160] := (a >> (imm8[5:4] * 16))[143:128]
        tmp_dst[191:176] := (a >> (imm8[7:6] * 16))[143:128]
        tmp_dst[255:192] := a[255:192]
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpackhi_epi8
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_mask_unpackhi_epi8(__m256i src, __mmask32 k,
                                      __m256i a, __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_BYTES(src1[127:0], src2[127:0]) {
        	dst[7:0] := src1[71:64] 
        	dst[15:8] := src2[71:64] 
        	dst[23:16] := src1[79:72] 
        	dst[31:24] := src2[79:72] 
        	dst[39:32] := src1[87:80] 
        	dst[47:40] := src2[87:80] 
        	dst[55:48] := src1[95:88] 
        	dst[63:56] := src2[95:88] 
        	dst[71:64] := src1[103:96] 
        	dst[79:72] := src2[103:96] 
        	dst[87:80] := src1[111:104] 
        	dst[95:88] := src2[111:104] 
        	dst[103:96] := src1[119:112] 
        	dst[111:104] := src2[119:112] 
        	dst[119:112] := src1[127:120] 
        	dst[127:120] := src2[127:120] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_BYTES(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_BYTES(a[255:128], b[255:128])
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpackhi_epi8
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_maskz_unpackhi_epi8(__mmask32 k, __m256i a,
                                       __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_BYTES(src1[127:0], src2[127:0]) {
        	dst[7:0] := src1[71:64] 
        	dst[15:8] := src2[71:64] 
        	dst[23:16] := src1[79:72] 
        	dst[31:24] := src2[79:72] 
        	dst[39:32] := src1[87:80] 
        	dst[47:40] := src2[87:80] 
        	dst[55:48] := src1[95:88] 
        	dst[63:56] := src2[95:88] 
        	dst[71:64] := src1[103:96] 
        	dst[79:72] := src2[103:96] 
        	dst[87:80] := src1[111:104] 
        	dst[95:88] := src2[111:104] 
        	dst[103:96] := src1[119:112] 
        	dst[111:104] := src2[119:112] 
        	dst[119:112] := src1[127:120] 
        	dst[127:120] := src2[127:120] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_BYTES(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_BYTES(a[255:128], b[255:128])
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpackhi_epi16
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_mask_unpackhi_epi16(__m256i src, __mmask16 k,
                                       __m256i a, __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_WORDS(src1[127:0], src2[127:0]) {
        	dst[15:0] := src1[79:64]
        	dst[31:16] := src2[79:64] 
        	dst[47:32] := src1[95:80] 
        	dst[63:48] := src2[95:80] 
        	dst[79:64] := src1[111:96] 
        	dst[95:80] := src2[111:96] 
        	dst[111:96] := src1[127:112] 
        	dst[127:112] := src2[127:112] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_WORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_WORDS(a[255:128], b[255:128])
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpackhi_epi16
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_maskz_unpackhi_epi16(__mmask16 k, __m256i a,
                                        __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_WORDS(src1[127:0], src2[127:0]) {
        	dst[15:0] := src1[79:64]
        	dst[31:16] := src2[79:64] 
        	dst[47:32] := src1[95:80] 
        	dst[63:48] := src2[95:80] 
        	dst[79:64] := src1[111:96] 
        	dst[95:80] := src2[111:96] 
        	dst[111:96] := src1[127:112] 
        	dst[127:112] := src2[127:112] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_WORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_WORDS(a[255:128], b[255:128])
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpacklo_epi8
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_mask_unpacklo_epi8(__m256i src, __mmask32 k,
                                      __m256i a, __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_BYTES(src1[127:0], src2[127:0]) {
        	dst[7:0] := src1[7:0] 
        	dst[15:8] := src2[7:0] 
        	dst[23:16] := src1[15:8] 
        	dst[31:24] := src2[15:8] 
        	dst[39:32] := src1[23:16] 
        	dst[47:40] := src2[23:16] 
        	dst[55:48] := src1[31:24] 
        	dst[63:56] := src2[31:24] 
        	dst[71:64] := src1[39:32]
        	dst[79:72] := src2[39:32] 
        	dst[87:80] := src1[47:40] 
        	dst[95:88] := src2[47:40] 
        	dst[103:96] := src1[55:48] 
        	dst[111:104] := src2[55:48] 
        	dst[119:112] := src1[63:56] 
        	dst[127:120] := src2[63:56] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_BYTES(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_BYTES(a[255:128], b[255:128])
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpacklo_epi8
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m256i _mm256_maskz_unpacklo_epi8(__mmask32 k, __m256i a,
                                       __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_BYTES(src1[127:0], src2[127:0]) {
        	dst[7:0] := src1[7:0] 
        	dst[15:8] := src2[7:0] 
        	dst[23:16] := src1[15:8] 
        	dst[31:24] := src2[15:8] 
        	dst[39:32] := src1[23:16] 
        	dst[47:40] := src2[23:16] 
        	dst[55:48] := src1[31:24] 
        	dst[63:56] := src2[31:24] 
        	dst[71:64] := src1[39:32]
        	dst[79:72] := src2[39:32] 
        	dst[87:80] := src1[47:40] 
        	dst[95:88] := src2[47:40] 
        	dst[103:96] := src1[55:48] 
        	dst[111:104] := src2[55:48] 
        	dst[119:112] := src1[63:56] 
        	dst[127:120] := src2[63:56] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_BYTES(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_BYTES(a[255:128], b[255:128])
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpacklo_epi16
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_mask_unpacklo_epi16(__m256i src, __mmask16 k,
                                       __m256i a, __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_WORDS(src1[127:0], src2[127:0]) {
        	dst[15:0] := src1[15:0] 
        	dst[31:16] := src2[15:0] 
        	dst[47:32] := src1[31:16] 
        	dst[63:48] := src2[31:16] 
        	dst[79:64] := src1[47:32] 
        	dst[95:80] := src2[47:32] 
        	dst[111:96] := src1[63:48] 
        	dst[127:112] := src2[63:48] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_WORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_WORDS(a[255:128], b[255:128])
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpacklo_epi16
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m256i _mm256_maskz_unpacklo_epi16(__mmask16 k, __m256i a,
                                        __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_WORDS(src1[127:0], src2[127:0]) {
        	dst[15:0] := src1[15:0] 
        	dst[31:16] := src2[15:0] 
        	dst[47:32] := src1[31:16] 
        	dst[63:48] := src2[31:16] 
        	dst[79:64] := src1[47:32] 
        	dst[95:80] := src2[47:32] 
        	dst[111:96] := src1[63:48] 
        	dst[127:112] := src2[63:48] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_WORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_WORDS(a[255:128], b[255:128])
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_packs_epi32
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI16 src, 
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_mask_packs_epi32(__m256i src, __mmask16 k,
                                    __m256i a, __m256i b)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers from "a" and "b" to packed 16-bit integers using signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[15:0] := Saturate16(a[31:0])
        tmp_dst[31:16] := Saturate16(a[63:32])
        tmp_dst[47:32] := Saturate16(a[95:64])
        tmp_dst[63:48] := Saturate16(a[127:96])
        tmp_dst[79:64] := Saturate16(b[31:0])
        tmp_dst[95:80] := Saturate16(b[63:32])
        tmp_dst[111:96] := Saturate16(b[95:64])
        tmp_dst[127:112] := Saturate16(b[127:96])
        tmp_dst[143:128] := Saturate16(a[159:128])
        tmp_dst[159:144] := Saturate16(a[191:160])
        tmp_dst[175:160] := Saturate16(a[223:192])
        tmp_dst[191:176] := Saturate16(a[255:224])
        tmp_dst[207:192] := Saturate16(b[159:128])
        tmp_dst[223:208] := Saturate16(b[191:160])
        tmp_dst[239:224] := Saturate16(b[223:192])
        tmp_dst[255:240] := Saturate16(b[255:224])
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_packs_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_maskz_packs_epi32(__mmask16 k, __m256i a,
                                     __m256i b)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers from "a" and "b" to packed 16-bit integers using signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[15:0] := Saturate16(a[31:0])
        tmp_dst[31:16] := Saturate16(a[63:32])
        tmp_dst[47:32] := Saturate16(a[95:64])
        tmp_dst[63:48] := Saturate16(a[127:96])
        tmp_dst[79:64] := Saturate16(b[31:0])
        tmp_dst[95:80] := Saturate16(b[63:32])
        tmp_dst[111:96] := Saturate16(b[95:64])
        tmp_dst[127:112] := Saturate16(b[127:96])
        tmp_dst[143:128] := Saturate16(a[159:128])
        tmp_dst[159:144] := Saturate16(a[191:160])
        tmp_dst[175:160] := Saturate16(a[223:192])
        tmp_dst[191:176] := Saturate16(a[255:224])
        tmp_dst[207:192] := Saturate16(b[159:128])
        tmp_dst[223:208] := Saturate16(b[191:160])
        tmp_dst[239:224] := Saturate16(b[223:192])
        tmp_dst[255:240] := Saturate16(b[255:224])
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_packs_epi16
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    SI8 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_mask_packs_epi16(__m256i src, __mmask32 k,
                                    __m256i a, __m256i b)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers from "a" and "b" to packed 8-bit integers using signed saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[7:0] := Saturate8(a[15:0])
        tmp_dst[15:8] := Saturate8(a[31:16])
        tmp_dst[23:16] := Saturate8(a[47:32])
        tmp_dst[31:24] := Saturate8(a[63:48])
        tmp_dst[39:32] := Saturate8(a[79:64])
        tmp_dst[47:40] := Saturate8(a[95:80])
        tmp_dst[55:48] := Saturate8(a[111:96])
        tmp_dst[63:56] := Saturate8(a[127:112])
        tmp_dst[71:64] := Saturate8(b[15:0])
        tmp_dst[79:72] := Saturate8(b[31:16])
        tmp_dst[87:80] := Saturate8(b[47:32])
        tmp_dst[95:88] := Saturate8(b[63:48])
        tmp_dst[103:96] := Saturate8(b[79:64])
        tmp_dst[111:104] := Saturate8(b[95:80])
        tmp_dst[119:112] := Saturate8(b[111:96])
        tmp_dst[127:120] := Saturate8(b[127:112])
        tmp_dst[135:128] := Saturate8(a[143:128])
        tmp_dst[143:136] := Saturate8(a[159:144])
        tmp_dst[151:144] := Saturate8(a[175:160])
        tmp_dst[159:152] := Saturate8(a[191:176])
        tmp_dst[167:160] := Saturate8(a[207:192])
        tmp_dst[175:168] := Saturate8(a[223:208])
        tmp_dst[183:176] := Saturate8(a[239:224])
        tmp_dst[191:184] := Saturate8(a[255:240])
        tmp_dst[199:192] := Saturate8(b[143:128])
        tmp_dst[207:200] := Saturate8(b[159:144])
        tmp_dst[215:208] := Saturate8(b[175:160])
        tmp_dst[223:216] := Saturate8(b[191:176])
        tmp_dst[231:224] := Saturate8(b[207:192])
        tmp_dst[239:232] := Saturate8(b[223:208])
        tmp_dst[247:240] := Saturate8(b[239:224])
        tmp_dst[255:248] := Saturate8(b[255:240])
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_packs_epi16
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_maskz_packs_epi16(__mmask32 k, __m256i a,
                                     __m256i b)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers from "a" and "b" to packed 8-bit integers using signed saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[7:0] := Saturate8(a[15:0])
        tmp_dst[15:8] := Saturate8(a[31:16])
        tmp_dst[23:16] := Saturate8(a[47:32])
        tmp_dst[31:24] := Saturate8(a[63:48])
        tmp_dst[39:32] := Saturate8(a[79:64])
        tmp_dst[47:40] := Saturate8(a[95:80])
        tmp_dst[55:48] := Saturate8(a[111:96])
        tmp_dst[63:56] := Saturate8(a[127:112])
        tmp_dst[71:64] := Saturate8(b[15:0])
        tmp_dst[79:72] := Saturate8(b[31:16])
        tmp_dst[87:80] := Saturate8(b[47:32])
        tmp_dst[95:88] := Saturate8(b[63:48])
        tmp_dst[103:96] := Saturate8(b[79:64])
        tmp_dst[111:104] := Saturate8(b[95:80])
        tmp_dst[119:112] := Saturate8(b[111:96])
        tmp_dst[127:120] := Saturate8(b[127:112])
        tmp_dst[135:128] := Saturate8(a[143:128])
        tmp_dst[143:136] := Saturate8(a[159:144])
        tmp_dst[151:144] := Saturate8(a[175:160])
        tmp_dst[159:152] := Saturate8(a[191:176])
        tmp_dst[167:160] := Saturate8(a[207:192])
        tmp_dst[175:168] := Saturate8(a[223:208])
        tmp_dst[183:176] := Saturate8(a[239:224])
        tmp_dst[191:184] := Saturate8(a[255:240])
        tmp_dst[199:192] := Saturate8(b[143:128])
        tmp_dst[207:200] := Saturate8(b[159:144])
        tmp_dst[215:208] := Saturate8(b[175:160])
        tmp_dst[223:216] := Saturate8(b[191:176])
        tmp_dst[231:224] := Saturate8(b[207:192])
        tmp_dst[239:232] := Saturate8(b[223:208])
        tmp_dst[247:240] := Saturate8(b[239:224])
        tmp_dst[255:248] := Saturate8(b[255:240])
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_packus_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_mask_packus_epi32(__m256i src, __mmask16 k,
                                     __m256i a, __m256i b)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers from "a" and "b" to packed 16-bit integers using unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[15:0] := SaturateU16(a[31:0])
        tmp_dst[31:16] := SaturateU16(a[63:32])
        tmp_dst[47:32] := SaturateU16(a[95:64])
        tmp_dst[63:48] := SaturateU16(a[127:96])
        tmp_dst[79:64] := SaturateU16(b[31:0])
        tmp_dst[95:80] := SaturateU16(b[63:32])
        tmp_dst[111:96] := SaturateU16(b[95:64])
        tmp_dst[127:112] := SaturateU16(b[127:96])
        tmp_dst[143:128] := SaturateU16(a[159:128])
        tmp_dst[159:144] := SaturateU16(a[191:160])
        tmp_dst[175:160] := SaturateU16(a[223:192])
        tmp_dst[191:176] := SaturateU16(a[255:224])
        tmp_dst[207:192] := SaturateU16(b[159:128])
        tmp_dst[223:208] := SaturateU16(b[191:160])
        tmp_dst[239:224] := SaturateU16(b[223:192])
        tmp_dst[255:240] := SaturateU16(b[255:224])
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_packus_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m256i _mm256_maskz_packus_epi32(__mmask16 k, __m256i a,
                                      __m256i b)

.. admonition:: Intel Description

    Convert packed signed 32-bit integers from "a" and "b" to packed 16-bit integers using unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[15:0] := SaturateU16(a[31:0])
        tmp_dst[31:16] := SaturateU16(a[63:32])
        tmp_dst[47:32] := SaturateU16(a[95:64])
        tmp_dst[63:48] := SaturateU16(a[127:96])
        tmp_dst[79:64] := SaturateU16(b[31:0])
        tmp_dst[95:80] := SaturateU16(b[63:32])
        tmp_dst[111:96] := SaturateU16(b[95:64])
        tmp_dst[127:112] := SaturateU16(b[127:96])
        tmp_dst[143:128] := SaturateU16(a[159:128])
        tmp_dst[159:144] := SaturateU16(a[191:160])
        tmp_dst[175:160] := SaturateU16(a[223:192])
        tmp_dst[191:176] := SaturateU16(a[255:224])
        tmp_dst[207:192] := SaturateU16(b[159:128])
        tmp_dst[223:208] := SaturateU16(b[191:160])
        tmp_dst[239:224] := SaturateU16(b[223:192])
        tmp_dst[255:240] := SaturateU16(b[255:224])
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_packus_epi16
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI8 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_mask_packus_epi16(__m256i src, __mmask32 k,
                                     __m256i a, __m256i b)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers from "a" and "b" to packed 8-bit integers using unsigned saturation, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[7:0] := SaturateU8(a[15:0])
        tmp_dst[15:8] := SaturateU8(a[31:16])
        tmp_dst[23:16] := SaturateU8(a[47:32])
        tmp_dst[31:24] := SaturateU8(a[63:48])
        tmp_dst[39:32] := SaturateU8(a[79:64])
        tmp_dst[47:40] := SaturateU8(a[95:80])
        tmp_dst[55:48] := SaturateU8(a[111:96])
        tmp_dst[63:56] := SaturateU8(a[127:112])
        tmp_dst[71:64] := SaturateU8(b[15:0])
        tmp_dst[79:72] := SaturateU8(b[31:16])
        tmp_dst[87:80] := SaturateU8(b[47:32])
        tmp_dst[95:88] := SaturateU8(b[63:48])
        tmp_dst[103:96] := SaturateU8(b[79:64])
        tmp_dst[111:104] := SaturateU8(b[95:80])
        tmp_dst[119:112] := SaturateU8(b[111:96])
        tmp_dst[127:120] := SaturateU8(b[127:112])
        tmp_dst[135:128] := SaturateU8(a[143:128])
        tmp_dst[143:136] := SaturateU8(a[159:144])
        tmp_dst[151:144] := SaturateU8(a[175:160])
        tmp_dst[159:152] := SaturateU8(a[191:176])
        tmp_dst[167:160] := SaturateU8(a[207:192])
        tmp_dst[175:168] := SaturateU8(a[223:208])
        tmp_dst[183:176] := SaturateU8(a[239:224])
        tmp_dst[191:184] := SaturateU8(a[255:240])
        tmp_dst[199:192] := SaturateU8(b[143:128])
        tmp_dst[207:200] := SaturateU8(b[159:144])
        tmp_dst[215:208] := SaturateU8(b[175:160])
        tmp_dst[223:216] := SaturateU8(b[191:176])
        tmp_dst[231:224] := SaturateU8(b[207:192])
        tmp_dst[239:232] := SaturateU8(b[223:208])
        tmp_dst[247:240] := SaturateU8(b[239:224])
        tmp_dst[255:248] := SaturateU8(b[255:240])
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_packus_epi16
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m256i _mm256_maskz_packus_epi16(__mmask32 k, __m256i a,
                                      __m256i b)

.. admonition:: Intel Description

    Convert packed signed 16-bit integers from "a" and "b" to packed 8-bit integers using unsigned saturation, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[7:0] := SaturateU8(a[15:0])
        tmp_dst[15:8] := SaturateU8(a[31:16])
        tmp_dst[23:16] := SaturateU8(a[47:32])
        tmp_dst[31:24] := SaturateU8(a[63:48])
        tmp_dst[39:32] := SaturateU8(a[79:64])
        tmp_dst[47:40] := SaturateU8(a[95:80])
        tmp_dst[55:48] := SaturateU8(a[111:96])
        tmp_dst[63:56] := SaturateU8(a[127:112])
        tmp_dst[71:64] := SaturateU8(b[15:0])
        tmp_dst[79:72] := SaturateU8(b[31:16])
        tmp_dst[87:80] := SaturateU8(b[47:32])
        tmp_dst[95:88] := SaturateU8(b[63:48])
        tmp_dst[103:96] := SaturateU8(b[79:64])
        tmp_dst[111:104] := SaturateU8(b[95:80])
        tmp_dst[119:112] := SaturateU8(b[111:96])
        tmp_dst[127:120] := SaturateU8(b[127:112])
        tmp_dst[135:128] := SaturateU8(a[143:128])
        tmp_dst[143:136] := SaturateU8(a[159:144])
        tmp_dst[151:144] := SaturateU8(a[175:160])
        tmp_dst[159:152] := SaturateU8(a[191:176])
        tmp_dst[167:160] := SaturateU8(a[207:192])
        tmp_dst[175:168] := SaturateU8(a[223:208])
        tmp_dst[183:176] := SaturateU8(a[239:224])
        tmp_dst[191:184] := SaturateU8(a[255:240])
        tmp_dst[199:192] := SaturateU8(b[143:128])
        tmp_dst[207:200] := SaturateU8(b[159:144])
        tmp_dst[215:208] := SaturateU8(b[175:160])
        tmp_dst[223:216] := SaturateU8(b[191:176])
        tmp_dst[231:224] := SaturateU8(b[207:192])
        tmp_dst[239:232] := SaturateU8(b[223:208])
        tmp_dst[247:240] := SaturateU8(b[239:224])
        tmp_dst[255:248] := SaturateU8(b[255:240])
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_broadcastmb_epi64
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m256i _mm256_broadcastmb_epi64(__mmask8 k);

.. admonition:: Intel Description

    Broadcast the low 8-bits from input mask "k" to all 64-bit elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ZeroExtend64(k[7:0])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_broadcastmw_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m256i _mm256_broadcastmw_epi32(__mmask16 k);

.. admonition:: Intel Description

    Broadcast the low 16-bits from input mask "k" to all 32-bit elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ZeroExtend32(k[15:0])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_broadcast_f32x2
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_broadcast_f32x2(__m128 a);

.. admonition:: Intel Description

    Broadcast the lower 2 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 2)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcast_f32x2
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_mask_broadcast_f32x2(__m256 src, __mmask8 k,
                                       __m128 a)

.. admonition:: Intel Description

    Broadcast the lower 2 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 2)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcast_f32x2
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_broadcast_f32x2(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Broadcast the lower 2 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 2)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_broadcast_f64x2
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_broadcast_f64x2(__m128d a);

.. admonition:: Intel Description

    Broadcast the 2 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	n := (j % 2)*64
        	dst[i+63:i] := a[n+63:n]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcast_f64x2
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_mask_broadcast_f64x2(__m256d src, __mmask8 k,
                                        __m128d a)

.. admonition:: Intel Description

    Broadcast the 2 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	n := (j % 2)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcast_f64x2
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_maskz_broadcast_f64x2(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Broadcast the 2 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	n := (j % 2)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_broadcast_i32x2
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m256i _mm256_broadcast_i32x2(__m128i a);

.. admonition:: Intel Description

    Broadcast the lower 2 packed 32-bit integers from "a" to all elements of "dst.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 2)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcast_i32x2
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_mask_broadcast_i32x2(__m256i src, __mmask8 k,
                                        __m128i a)

.. admonition:: Intel Description

    Broadcast the lower 2 packed 32-bit integers from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 2)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcast_i32x2
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_broadcast_i32x2(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Broadcast the lower 2 packed 32-bit integers from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 2)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_broadcast_i64x2
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m256i _mm256_broadcast_i64x2(__m128i a);

.. admonition:: Intel Description

    Broadcast the 2 packed 64-bit integers from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	n := (j % 2)*64
        	dst[i+63:i] := a[n+63:n]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcast_i64x2
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_mask_broadcast_i64x2(__m256i src, __mmask8 k,
                                        __m128i a)

.. admonition:: Intel Description

    Broadcast the 2 packed 64-bit integers from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	n := (j % 2)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcast_i64x2
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_maskz_broadcast_i64x2(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Broadcast the 2 packed 64-bit integers from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	n := (j % 2)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_extractf64x2_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128d
:Param Types:
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m128d _mm256_extractf64x2_pd(__m256d a, int imm8);

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: dst[127:0] := a[127:0]
        1: dst[127:0] := a[255:128]
        ESAC
        dst[MAX:128] := 0
        	

_mm256_mask_extractf64x2_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m128d _mm256_mask_extractf64x2_pd(__m128d src, __mmask8 k,
                                        __m256d a, int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        ESAC
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_maskz_extractf64x2_pd
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m128d _mm256_maskz_extractf64x2_pd(__mmask8 k, __m256d a,
                                         int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        ESAC
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_extracti64x2_epi64
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm256_extracti64x2_epi64(__m256i a, int imm8);

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed 64-bit integers) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: dst[127:0] := a[127:0]
        1: dst[127:0] := a[255:128]
        ESAC
        dst[MAX:128] := 0
        	

_mm256_mask_extracti64x2_epi64
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m256i a, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm256_mask_extracti64x2_epi64(__m128i src,
                                           __mmask8 k,
                                           __m256i a, int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed 64-bit integers) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        ESAC
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_maskz_extracti64x2_epi64
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm256_maskz_extracti64x2_epi64(__mmask8 k,
                                            __m256i a,
                                            int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed 64-bit integers) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        ESAC
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_fpclass_pd_mask
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_fpclass_pd_mask(__m256d a, int imm8);

.. admonition:: Intel Description

    Test packed double-precision (64-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k".
    	[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	k[j] := CheckFPClass_FP64(a[i+63:i], imm8[7:0])
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_fpclass_pd_mask
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256d a, 
    int imm8
:Param ETypes:
    MASK k1, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_mask_fpclass_pd_mask(__mmask8 k1, __m256d a,
                                         int imm8)

.. admonition:: Intel Description

    Test packed double-precision (64-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).
    	[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	IF k1[j]
        		k[j] := CheckFPClass_FP64(a[i+63:i], imm8[7:0])
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_fpclass_ps_mask
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_fpclass_ps_mask(__m256 a, int imm8);

.. admonition:: Intel Description

    Test packed single-precision (32-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k".
    	[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	k[j] := CheckFPClass_FP32(a[i+31:i], imm8[7:0])
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_mask_fpclass_ps_mask
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m256 a, 
    int imm8
:Param ETypes:
    MASK k1, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm256_mask_fpclass_ps_mask(__mmask8 k1, __m256 a,
                                         int imm8)

.. admonition:: Intel Description

    Test packed single-precision (32-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).
    	[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	IF k1[j]
        		k[j] := CheckFPClass_FP32(a[i+31:i], imm8[7:0])
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_insertf64x2
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m128d b, 
    int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_insertf64x2(__m256d a, __m128d b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[255:0] := a[255:0]
        CASE imm8[0] OF
        0: dst[127:0] := b[127:0]
        1: dst[255:128] := b[127:0]
        ESAC
        dst[MAX:256] := 0
        	

_mm256_mask_insertf64x2
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m128d b, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_insertf64x2(__m256d src, __mmask8 k,
                                    __m256d a, __m128d b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_insertf64x2
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m128d b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_insertf64x2(__mmask8 k, __m256d a,
                                     __m128d b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_inserti64x2
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_inserti64x2(__m256i a, __m128i b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 128 bits (composed of 2 packed 64-bit integers) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[255:0] := a[255:0]
        CASE imm8[0] OF
        0: dst[127:0] := b[127:0]
        1: dst[255:128] := b[127:0]
        ESAC
        dst[MAX:256] := 0
        	

_mm256_mask_inserti64x2
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_inserti64x2(__m256i src, __mmask8 k,
                                    __m256i a, __m128i b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 2 packed 64-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_inserti64x2
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_inserti64x2(__mmask8 k, __m256i a,
                                     __m128i b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 2 packed 64-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        ESAC
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_movepi32_mask
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __mmask8 _mm256_movepi32_mask(__m256i a);

.. admonition:: Intel Description

    Set each bit of mask register "k" based on the most significant bit of the corresponding packed 32-bit integer in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF a[i+31]
        		k[j] := 1
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm256_movm_epi32
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m256i _mm256_movm_epi32(__mmask8 k);

.. admonition:: Intel Description

    Set each packed 32-bit integer in "dst" to all ones or all zeros based on the value of the corresponding bit in "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := 0xFFFFFFFF
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_movm_epi64
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m256i _mm256_movm_epi64(__mmask8 k);

.. admonition:: Intel Description

    Set each packed 64-bit integer in "dst" to all ones or all zeros based on the value of the corresponding bit in "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := 0xFFFFFFFFFFFFFFFF
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_movepi64_mask
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask8
:Param Types:
    __m256i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __mmask8 _mm256_movepi64_mask(__m256i a);

.. admonition:: Intel Description

    Set each bit of mask register "k" based on the most significant bit of the corresponding packed 64-bit integer in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF a[i+63]
        		k[j] := 1
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:4] := 0
        	

_mm256_mask_range_pd
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_range_pd(__m256d src, __mmask8 k,
                                 __m256d a, __m256d b,
                                 int imm8)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RANGE(src1[63:0], src2[63:0], opCtl[1:0], signSelCtl[1:0]) {
        	CASE opCtl[1:0] OF
        	0: tmp[63:0] := (src1[63:0] <= src2[63:0]) ? src1[63:0] : src2[63:0]
        	1: tmp[63:0] := (src1[63:0] <= src2[63:0]) ? src2[63:0] : src1[63:0]
        	2: tmp[63:0] := (ABS(src1[63:0]) <= ABS(src2[63:0])) ? src1[63:0] : src2[63:0]
        	3: tmp[63:0] := (ABS(src1[63:0]) <= ABS(src2[63:0])) ? src2[63:0] : src1[63:0]
        	ESAC
        	
        	CASE signSelCtl[1:0] OF
        	0: dst[63:0] := (src1[63] << 63) OR (tmp[62:0])
        	1: dst[63:0] := tmp[63:0]
        	2: dst[63:0] := (0 << 63) OR (tmp[62:0])
        	3: dst[63:0] := (1 << 63) OR (tmp[62:0])
        	ESAC
        	
        	RETURN dst
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_range_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_range_pd(__mmask8 k, __m256d a,
                                  __m256d b, int imm8)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RANGE(src1[63:0], src2[63:0], opCtl[1:0], signSelCtl[1:0]) {
        	CASE opCtl[1:0] OF
        	0: tmp[63:0] := (src1[63:0] <= src2[63:0]) ? src1[63:0] : src2[63:0]
        	1: tmp[63:0] := (src1[63:0] <= src2[63:0]) ? src2[63:0] : src1[63:0]
        	2: tmp[63:0] := (ABS(src1[63:0]) <= ABS(src2[63:0])) ? src1[63:0] : src2[63:0]
        	3: tmp[63:0] := (ABS(src1[63:0]) <= ABS(src2[63:0])) ? src2[63:0] : src1[63:0]
        	ESAC
        	
        	CASE signSelCtl[1:0] OF
        	0: dst[63:0] := (src1[63] << 63) OR (tmp[62:0])
        	1: dst[63:0] := tmp[63:0]
        	2: dst[63:0] := (0 << 63) OR (tmp[62:0])
        	3: dst[63:0] := (1 << 63) OR (tmp[62:0])
        	ESAC
        	
        	RETURN dst
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_range_pd
---------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_range_pd(__m256d a, __m256d b, int imm8);

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RANGE(src1[63:0], src2[63:0], opCtl[1:0], signSelCtl[1:0]) {
        	CASE opCtl[1:0] OF
        	0: tmp[63:0] := (src1[63:0] <= src2[63:0]) ? src1[63:0] : src2[63:0]
        	1: tmp[63:0] := (src1[63:0] <= src2[63:0]) ? src2[63:0] : src1[63:0]
        	2: tmp[63:0] := (ABS(src1[63:0]) <= ABS(src2[63:0])) ? src1[63:0] : src2[63:0]
        	3: tmp[63:0] := (ABS(src1[63:0]) <= ABS(src2[63:0])) ? src2[63:0] : src1[63:0]
        	ESAC
        	
        	CASE signSelCtl[1:0] OF
        	0: dst[63:0] := (src1[63] << 63) OR (tmp[62:0])
        	1: dst[63:0] := tmp[63:0]
        	2: dst[63:0] := (0 << 63) OR (tmp[62:0])
        	3: dst[63:0] := (1 << 63) OR (tmp[62:0])
        	ESAC
        	
        	RETURN dst
        }
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_range_ps
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_mask_range_ps(__m256 src, __mmask8 k,
                                __m256 a, __m256 b, int imm8)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RANGE(src1[31:0], src2[31:0], opCtl[1:0], signSelCtl[1:0]) {
        	CASE opCtl[1:0] OF
        	0: tmp[31:0] := (src1[31:0] <= src2[31:0]) ? src1[31:0] : src2[31:0]
        	1: tmp[31:0] := (src1[31:0] <= src2[31:0]) ? src2[31:0] : src1[31:0]
        	2: tmp[31:0] := (ABS(src1[31:0]) <= ABS(src2[31:0])) ? src1[31:0] : src2[31:0]
        	3: tmp[31:0] := (ABS(src1[31:0]) <= ABS(src2[31:0])) ? src2[31:0] : src1[31:0]
        	ESAC
        	
        	CASE signSelCtl[1:0] OF
        	0: dst[31:0] := (src1[31] << 31) OR (tmp[30:0])
        	1: dst[31:0] := tmp[63:0]
        	2: dst[31:0] := (0 << 31) OR (tmp[30:0])
        	3: dst[31:0] := (1 << 31) OR (tmp[30:0])
        	ESAC
        	
        	RETURN dst
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_range_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_maskz_range_ps(__mmask8 k, __m256 a, __m256 b,
                                 int imm8)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RANGE(src1[31:0], src2[31:0], opCtl[1:0], signSelCtl[1:0]) {
        	CASE opCtl[1:0] OF
        	0: tmp[31:0] := (src1[31:0] <= src2[31:0]) ? src1[31:0] : src2[31:0]
        	1: tmp[31:0] := (src1[31:0] <= src2[31:0]) ? src2[31:0] : src1[31:0]
        	2: tmp[31:0] := (ABS(src1[31:0]) <= ABS(src2[31:0])) ? src1[31:0] : src2[31:0]
        	3: tmp[31:0] := (ABS(src1[31:0]) <= ABS(src2[31:0])) ? src2[31:0] : src1[31:0]
        	ESAC
        	
        	CASE signSelCtl[1:0] OF
        	0: dst[31:0] := (src1[31] << 31) OR (tmp[30:0])
        	1: dst[31:0] := tmp[63:0]
        	2: dst[31:0] := (0 << 31) OR (tmp[30:0])
        	3: dst[31:0] := (1 << 31) OR (tmp[30:0])
        	ESAC
        	
        	RETURN dst
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_range_ps
---------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_range_ps(__m256 a, __m256 b, int imm8);

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RANGE(src1[31:0], src2[31:0], opCtl[1:0], signSelCtl[1:0]) {
        	CASE opCtl[1:0] OF
        	0: tmp[31:0] := (src1[31:0] <= src2[31:0]) ? src1[31:0] : src2[31:0]
        	1: tmp[31:0] := (src1[31:0] <= src2[31:0]) ? src2[31:0] : src1[31:0]
        	2: tmp[31:0] := (ABS(src1[31:0]) <= ABS(src2[31:0])) ? src1[31:0] : src2[31:0]
        	3: tmp[31:0] := (ABS(src1[31:0]) <= ABS(src2[31:0])) ? src2[31:0] : src1[31:0]
        	ESAC
        	
        	CASE signSelCtl[1:0] OF
        	0: dst[31:0] := (src1[31] << 31) OR (tmp[30:0])
        	1: dst[31:0] := tmp[63:0]
        	2: dst[31:0] := (0 << 31) OR (tmp[30:0])
        	3: dst[31:0] := (1 << 31) OR (tmp[30:0])
        	ESAC
        	
        	RETURN dst
        }
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_reduce_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_reduce_pd(__m256d src, __mmask8 k,
                                  __m256d a, int imm8)

.. admonition:: Intel Description

    Extract the reduced argument of packed double-precision (64-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentPD(src1[63:0], imm8[7:0]) {
        	m[63:0] := FP64(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[63:0] := POW(2.0, -m) * ROUND(POW(2.0, m) * src1[63:0], imm8[3:0])
        	tmp[63:0] := src1[63:0] - tmp[63:0]
        	IF IsInf(tmp[63:0])
        		tmp[63:0] := FP64(0.0)
        	FI
        	RETURN tmp[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_reduce_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_reduce_pd(__mmask8 k, __m256d a,
                                   int imm8)

.. admonition:: Intel Description

    Extract the reduced argument of packed double-precision (64-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentPD(src1[63:0], imm8[7:0]) {
        	m[63:0] := FP64(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[63:0] := POW(2.0, -m) * ROUND(POW(2.0, m) * src1[63:0], imm8[3:0])
        	tmp[63:0] := src1[63:0] - tmp[63:0]
        	IF IsInf(tmp[63:0])
        		tmp[63:0] := FP64(0.0)
        	FI
        	RETURN tmp[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_reduce_pd
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_reduce_pd(__m256d a, int imm8);

.. admonition:: Intel Description

    Extract the reduced argument of packed double-precision (64-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentPD(src1[63:0], imm8[7:0]) {
        	m[63:0] := FP64(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[63:0] := POW(2.0, -m) * ROUND(POW(2.0, m) * src1[63:0], imm8[3:0])
        	tmp[63:0] := src1[63:0] - tmp[63:0]
        	IF IsInf(tmp[63:0])
        		tmp[63:0] := FP64(0.0)
        	FI
        	RETURN tmp[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_reduce_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_mask_reduce_ps(__m256 src, __mmask8 k,
                                 __m256 a, int imm8)

.. admonition:: Intel Description

    Extract the reduced argument of packed single-precision (32-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentPS(src1[31:0], imm8[7:0]) {
        	m[31:0] := FP32(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[31:0] := POW(FP32(2.0), -m) * ROUND(POW(FP32(2.0), m) * src1[31:0], imm8[3:0])
        	tmp[31:0] := src1[31:0] - tmp[31:0]
        	IF IsInf(tmp[31:0])
        		tmp[31:0] := FP32(0.0)
        	FI
        	RETURN tmp[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_reduce_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_maskz_reduce_ps(__mmask8 k, __m256 a,
                                  int imm8)

.. admonition:: Intel Description

    Extract the reduced argument of packed single-precision (32-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentPS(src1[31:0], imm8[7:0]) {
        	m[31:0] := FP32(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[31:0] := POW(FP32(2.0), -m) * ROUND(POW(FP32(2.0), m) * src1[31:0], imm8[3:0])
        	tmp[31:0] := src1[31:0] - tmp[31:0]
        	IF IsInf(tmp[31:0])
        		tmp[31:0] := FP32(0.0)
        	FI
        	RETURN tmp[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_reduce_ps
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_reduce_ps(__m256 a, int imm8);

.. admonition:: Intel Description

    Extract the reduced argument of packed single-precision (32-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentPS(src1[31:0], imm8[7:0]) {
        	m[31:0] := FP32(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[31:0] := POW(FP32(2.0), -m) * ROUND(POW(FP32(2.0), m) * src1[31:0], imm8[3:0])
        	tmp[31:0] := src1[31:0] - tmp[31:0]
        	RETURN tmp[31:0]
        	IF IsInf(tmp[31:0])
        		tmp[31:0] := FP32(0.0)
        	FI
        }
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_alignr_epi32
-------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_alignr_epi32(__m256i a, __m256i b,
                                const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 64-byte immediate result, shift the result right by "imm8" 32-bit elements, and store the low 32 bytes (8 elements) in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[511:256] := a[255:0]
        temp[255:0] := b[255:0]
        temp[511:0] := temp[511:0] >> (32*imm8[2:0])
        dst[255:0] := temp[255:0]
        dst[MAX:256] := 0
        	

_mm256_mask_alignr_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_alignr_epi32(__m256i src, __mmask8 k,
                                     __m256i a, __m256i b,
                                     const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 64-byte immediate result, shift the result right by "imm8" 32-bit elements, and store the low 32 bytes (8 elements) in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[511:256] := a[255:0]
        temp[255:0] := b[255:0]
        temp[511:0] := temp[511:0] >> (32*imm8[2:0])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := temp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_alignr_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_alignr_epi32(__mmask8 k, __m256i a,
                                      __m256i b,
                                      const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 64-byte immediate result, shift the result right by "imm8" 32-bit elements, and store the low 32 bytes (8 elements) in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[511:256] := a[255:0]
        temp[255:0] := b[255:0]
        temp[511:0] := temp[511:0] >> (32*imm8[2:0])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := temp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_alignr_epi64
-------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_alignr_epi64(__m256i a, __m256i b,
                                const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 64-byte immediate result, shift the result right by "imm8" 64-bit elements, and store the low 32 bytes (4 elements) in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[511:256] := a[255:0]
        temp[255:0] := b[255:0]
        temp[511:0] := temp[511:0] >> (64*imm8[1:0])
        dst[255:0] := temp[255:0]
        dst[MAX:256] := 0
        	

_mm256_mask_alignr_epi64
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_alignr_epi64(__m256i src, __mmask8 k,
                                     __m256i a, __m256i b,
                                     const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 64-byte immediate result, shift the result right by "imm8" 64-bit elements, and store the low 32 bytes (4 elements) in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[511:256] := a[255:0]
        temp[255:0] := b[255:0]
        temp[511:0] := temp[511:0] >> (64*imm8[1:0])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := temp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_alignr_epi64
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_alignr_epi64(__mmask8 k, __m256i a,
                                      __m256i b,
                                      const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 64-byte immediate result, shift the result right by "imm8" 64-bit elements, and store the low 32 bytes (4 elements) in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[511:256] := a[255:0]
        temp[255:0] := b[255:0]
        temp[511:0] := temp[511:0] >> (64*imm8[1:0])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := temp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_blend_pd
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_blend_pd(__mmask8 k, __m256d a,
                                 __m256d b)

.. admonition:: Intel Description

    Blend packed double-precision (64-bit) floating-point elements from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := b[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_blend_ps
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_blend_ps(__mmask8 k, __m256 a, __m256 b);

.. admonition:: Intel Description

    Blend packed single-precision (32-bit) floating-point elements from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := b[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_broadcast_f32x4
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_broadcast_f32x4(__m128 a);

.. admonition:: Intel Description

    Broadcast the 4 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 4)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcast_f32x4
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_mask_broadcast_f32x4(__m256 src, __mmask8 k,
                                       __m128 a)

.. admonition:: Intel Description

    Broadcast the 4 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 4)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcast_f32x4
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_broadcast_f32x4(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Broadcast the 4 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 4)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_broadcast_i32x4
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m256i _mm256_broadcast_i32x4(__m128i a);

.. admonition:: Intel Description

    Broadcast the 4 packed 32-bit integers from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 4)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcast_i32x4
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_mask_broadcast_i32x4(__m256i src, __mmask8 k,
                                        __m128i a)

.. admonition:: Intel Description

    Broadcast the 4 packed 32-bit integers from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 4)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcast_i32x4
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_broadcast_i32x4(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Broadcast the 4 packed 32-bit integers from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	n := (j % 4)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcastsd_pd
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_mask_broadcastsd_pd(__m256d src, __mmask8 k,
                                       __m128d a)

.. admonition:: Intel Description

    Broadcast the low double-precision (64-bit) floating-point element from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcastsd_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_maskz_broadcastsd_pd(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Broadcast the low double-precision (64-bit) floating-point element from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcastss_ps
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_mask_broadcastss_ps(__m256 src, __mmask8 k,
                                      __m128 a)

.. admonition:: Intel Description

    Broadcast the low single-precision (32-bit) floating-point element from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcastss_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_broadcastss_ps(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Broadcast the low single-precision (32-bit) floating-point element from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_compress_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_mask_compress_pd(__m256d src, __mmask8 k,
                                    __m256d a)

.. admonition:: Intel Description

    Contiguously store the active double-precision (64-bit) floating-point elements in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := 0
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        dst[255:m] := src[255:m]
        dst[MAX:256] := 0
        	

_mm256_maskz_compress_pd
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_maskz_compress_pd(__mmask8 k, __m256d a);

.. admonition:: Intel Description

    Contiguously store the active double-precision (64-bit) floating-point elements in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := 0
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        dst[255:m] := 0
        dst[MAX:256] := 0
        	

_mm256_mask_compress_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_mask_compress_ps(__m256 src, __mmask8 k,
                                   __m256 a)

.. admonition:: Intel Description

    Contiguously store the active single-precision (32-bit) floating-point elements in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := 0
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        dst[255:m] := src[255:m]
        dst[MAX:256] := 0
        	

_mm256_maskz_compress_ps
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_compress_ps(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Contiguously store the active single-precision (32-bit) floating-point elements in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := 0
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        dst[255:m] := 0
        dst[MAX:256] := 0
        	

_mm256_mask_expand_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_mask_expand_pd(__m256d src, __mmask8 k,
                                  __m256d a)

.. admonition:: Intel Description

    Load contiguous active double-precision (64-bit) floating-point elements from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[m+63:m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_expand_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_maskz_expand_pd(__mmask8 k, __m256d a);

.. admonition:: Intel Description

    Load contiguous active double-precision (64-bit) floating-point elements from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[m+63:m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_expand_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_mask_expand_ps(__m256 src, __mmask8 k,
                                 __m256 a)

.. admonition:: Intel Description

    Load contiguous active single-precision (32-bit) floating-point elements from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[m+31:m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_expand_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_expand_ps(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Load contiguous active single-precision (32-bit) floating-point elements from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[m+31:m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_extractf32x4_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128
:Param Types:
    __m256 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128 _mm256_extractf32x4_ps(__m256 a, int imm8);

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: dst[127:0] := a[127:0]
        1: dst[127:0] := a[255:128]
        ESAC
        dst[MAX:128] := 0
        	

_mm256_mask_extractf32x4_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m256 a, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128 _mm256_mask_extractf32x4_ps(__m128 src, __mmask8 k,
                                       __m256 a, int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        ESAC
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_maskz_extractf32x4_ps
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m256 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128 _mm256_maskz_extractf32x4_ps(__mmask8 k, __m256 a,
                                        int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        ESAC
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_extracti32x4_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __m256i a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm256_extracti32x4_epi32(__m256i a, int imm8);

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed 32-bit integers) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: dst[127:0] := a[127:0]
        1: dst[127:0] := a[255:128]
        ESAC
        dst[MAX:128] := 0
        	

_mm256_mask_extracti32x4_epi32
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m256i a, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm256_mask_extracti32x4_epi32(__m128i src,
                                           __mmask8 k,
                                           __m256i a, int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed 32-bit integers) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        ESAC
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_maskz_extracti32x4_epi32
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm256_maskz_extracti32x4_epi32(__mmask8 k,
                                            __m256i a,
                                            int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed 32-bit integers) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        ESAC
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm256_fixupimm_pd
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b, 
    __m256i c, 
    int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_fixupimm_pd(__m256d a, __m256d b, __m256i c,
                               int imm8)

.. admonition:: Intel Description

    Fix up packed double-precision (64-bit) floating-point elements in "a" and "b" using packed 64-bit integers in "c", and store the results in "dst". "imm8" is used to set the required flags reporting.

.. admonition:: Community Note [Fix up Notes]

    The phrase 'Fix Up' in this context means to apply your desire method of error detection and correction or flagging. For example, make a number NAN if it fulfils a certain criteria

.. admonition:: See Also [Fix up Notes]

    `A stackoverflow explanation of Fix Up <https://stackoverflow.com/questions/30213615/what-is-meant-by-fixing-up-floats>`_

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        enum TOKEN_TYPE {
        	QNAN_TOKEN := 0, \
        	SNAN_TOKEN := 1, \
        	ZERO_VALUE_TOKEN := 2, \
        	ONE_VALUE_TOKEN := 3, \
        	NEG_INF_TOKEN := 4, \
        	POS_INF_TOKEN := 5, \
        	NEG_VALUE_TOKEN := 6, \
        	POS_VALUE_TOKEN := 7
        }
        DEFINE FIXUPIMMPD(src1[63:0], src2[63:0], src3[63:0], imm8[7:0]) {
        	tsrc[63:0] := ((src2[62:52] == 0) AND (MXCSR.DAZ == 1)) ? 0.0 : src2[63:0]
        	CASE(tsrc[63:0]) OF
        	QNAN_TOKEN: j := 0
        	SNAN_TOKEN: j := 1
        	ZERO_VALUE_TOKEN: j := 2
        	ONE_VALUE_TOKEN: j := 3
        	NEG_INF_TOKEN: j := 4
        	POS_INF_TOKEN: j := 5
        	NEG_VALUE_TOKEN: j := 6
        	POS_VALUE_TOKEN: j := 7
        	ESAC
        	
        	token_response[3:0] := src3[3+4*j:4*j]
        	
        	CASE(token_response[3:0]) OF
        	0 : dest[63:0] := src1[63:0]
        	1 : dest[63:0] := tsrc[63:0]
        	2 : dest[63:0] := QNaN(tsrc[63:0])
        	3 : dest[63:0] := QNAN_Indefinite
        	4 : dest[63:0] := -INF
        	5 : dest[63:0] := +INF
        	6 : dest[63:0] := tsrc.sign? -INF : +INF
        	7 : dest[63:0] := -0
        	8 : dest[63:0] := +0
        	9 : dest[63:0] := -1
        	10: dest[63:0] := +1
        	11: dest[63:0] := 1/2
        	12: dest[63:0] := 90.0
        	13: dest[63:0] := PI/2
        	14: dest[63:0] := MAX_FLOAT
        	15: dest[63:0] := -MAX_FLOAT
        	ESAC
        	
        	CASE(tsrc[31:0]) OF
        	ZERO_VALUE_TOKEN:
        		IF (imm8[0]) #ZE; FI
        	ZERO_VALUE_TOKEN:
        		IF (imm8[1]) #IE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[2]) #ZE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[3]) #IE; FI
        	SNAN_TOKEN:
        		IF (imm8[4]) #IE; FI
        	NEG_INF_TOKEN:
        		IF (imm8[5]) #IE; FI
        	NEG_VALUE_TOKEN:
        		IF (imm8[6]) #IE; FI
        	POS_INF_TOKEN:
        		IF (imm8[7]) #IE; FI
        	ESAC
        	RETURN dest[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_fixupimm_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __mmask8 k, 
    __m256d b, 
    __m256i c, 
    int imm8
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_fixupimm_pd(__m256d a, __mmask8 k,
                                    __m256d b, __m256i c,
                                    int imm8)

.. admonition:: Intel Description

    Fix up packed double-precision (64-bit) floating-point elements in "a" and "b" using packed 64-bit integers in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). "imm8" is used to set the required flags reporting.

.. admonition:: Community Note [Fix up Notes]

    The phrase 'Fix Up' in this context means to apply your desire method of error detection and correction or flagging. For example, make a number NAN if it fulfils a certain criteria

.. admonition:: See Also [Fix up Notes]

    `A stackoverflow explanation of Fix Up <https://stackoverflow.com/questions/30213615/what-is-meant-by-fixing-up-floats>`_

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        enum TOKEN_TYPE {
        	QNAN_TOKEN := 0, \
        	SNAN_TOKEN := 1, \
        	ZERO_VALUE_TOKEN := 2, \
        	ONE_VALUE_TOKEN := 3, \
        	NEG_INF_TOKEN := 4, \
        	POS_INF_TOKEN := 5, \
        	NEG_VALUE_TOKEN := 6, \
        	POS_VALUE_TOKEN := 7
        }
        DEFINE FIXUPIMMPD(src1[63:0], src2[63:0], src3[63:0], imm8[7:0]) {
        	tsrc[63:0] := ((src2[62:52] == 0) AND (MXCSR.DAZ == 1)) ? 0.0 : src2[63:0]
        	CASE(tsrc[63:0]) OF
        	QNAN_TOKEN:j := 0
        	SNAN_TOKEN:j := 1
        	ZERO_VALUE_TOKEN: j := 2
        	ONE_VALUE_TOKEN: j := 3
        	NEG_INF_TOKEN: j := 4
        	POS_INF_TOKEN: j := 5
        	NEG_VALUE_TOKEN: j := 6
        	POS_VALUE_TOKEN: j := 7
        	ESAC
        	
        	token_response[3:0] := src3[3+4*j:4*j]
        	
        	CASE(token_response[3:0]) OF
        	0 : dest[63:0] := src1[63:0]
        	1 : dest[63:0] := tsrc[63:0]
        	2 : dest[63:0] := QNaN(tsrc[63:0])
        	3 : dest[63:0] := QNAN_Indefinite
        	4 : dest[63:0] := -INF
        	5 : dest[63:0] := +INF
        	6 : dest[63:0] := tsrc.sign? -INF : +INF
        	7 : dest[63:0] := -0
        	8 : dest[63:0] := +0
        	9 : dest[63:0] := -1
        	10: dest[63:0] := +1
        	11: dest[63:0] := 1/2
        	12: dest[63:0] := 90.0
        	13: dest[63:0] := PI/2
        	14: dest[63:0] := MAX_FLOAT
        	15: dest[63:0] := -MAX_FLOAT
        	ESAC
        	
        	CASE(tsrc[31:0]) OF
        	ZERO_VALUE_TOKEN:
        		IF (imm8[0]) #ZE; FI
        	ZERO_VALUE_TOKEN:
        		IF (imm8[1]) #IE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[2]) #ZE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[3]) #IE; FI
        	SNAN_TOKEN:
        		IF (imm8[4]) #IE; FI
        	NEG_INF_TOKEN:
        		IF (imm8[5]) #IE; FI
        	NEG_VALUE_TOKEN:
        		IF (imm8[6]) #IE; FI
        	POS_INF_TOKEN:
        		IF (imm8[7]) #IE; FI
        	ESAC
        	RETURN dest[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_fixupimm_pd
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b, 
    __m256i c, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_fixupimm_pd(__mmask8 k, __m256d a,
                                     __m256d b, __m256i c,
                                     int imm8)

.. admonition:: Intel Description

    Fix up packed double-precision (64-bit) floating-point elements in "a" and "b" using packed 64-bit integers in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). "imm8" is used to set the required flags reporting.

.. admonition:: Community Note [Fix up Notes]

    The phrase 'Fix Up' in this context means to apply your desire method of error detection and correction or flagging. For example, make a number NAN if it fulfils a certain criteria

.. admonition:: See Also [Fix up Notes]

    `A stackoverflow explanation of Fix Up <https://stackoverflow.com/questions/30213615/what-is-meant-by-fixing-up-floats>`_

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        enum TOKEN_TYPE {
        	QNAN_TOKEN := 0, \
        	SNAN_TOKEN := 1, \
        	ZERO_VALUE_TOKEN := 2, \
        	ONE_VALUE_TOKEN := 3, \
        	NEG_INF_TOKEN := 4, \
        	POS_INF_TOKEN := 5, \
        	NEG_VALUE_TOKEN := 6, \
        	POS_VALUE_TOKEN := 7
        }
        DEFINE FIXUPIMMPD(src1[63:0], src2[63:0], src3[63:0], imm8[7:0]) {
        	tsrc[63:0] := ((src2[62:52] == 0) AND (MXCSR.DAZ == 1)) ? 0.0 : src2[63:0]
        	CASE(tsrc[63:0]) OF
        	QNAN_TOKEN:j := 0
        	SNAN_TOKEN:j := 1
        	ZERO_VALUE_TOKEN: j := 2
        	ONE_VALUE_TOKEN: j := 3
        	NEG_INF_TOKEN: j := 4
        	POS_INF_TOKEN: j := 5
        	NEG_VALUE_TOKEN: j := 6
        	POS_VALUE_TOKEN: j := 7
        	ESAC
        	
        	token_response[3:0] := src3[3+4*j:4*j]
        	
        	CASE(token_response[3:0]) OF
        	0 : dest[63:0] := src1[63:0]
        	1 : dest[63:0] := tsrc[63:0]
        	2 : dest[63:0] := QNaN(tsrc[63:0])
        	3 : dest[63:0] := QNAN_Indefinite
        	4 : dest[63:0] := -INF
        	5 : dest[63:0] := +INF
        	6 : dest[63:0] := tsrc.sign? -INF : +INF
        	7 : dest[63:0] := -0
        	8 : dest[63:0] := +0
        	9 : dest[63:0] := -1
        	10: dest[63:0] := +1
        	11: dest[63:0] := 1/2
        	12: dest[63:0] := 90.0
        	13: dest[63:0] := PI/2
        	14: dest[63:0] := MAX_FLOAT
        	15: dest[63:0] := -MAX_FLOAT
        	ESAC
        	
        	CASE(tsrc[31:0]) OF
        	ZERO_VALUE_TOKEN:
        		IF (imm8[0]) #ZE; FI
        	ZERO_VALUE_TOKEN:
        		IF (imm8[1]) #IE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[2]) #ZE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[3]) #IE; FI
        	SNAN_TOKEN:
        		IF (imm8[4]) #IE; FI
        	NEG_INF_TOKEN:
        		IF (imm8[5]) #IE; FI
        	NEG_VALUE_TOKEN:
        		IF (imm8[6]) #IE; FI
        	POS_INF_TOKEN:
        		IF (imm8[7]) #IE; FI
        	ESAC
        	RETURN dest[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fixupimm_ps
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b, 
    __m256i c, 
    int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_fixupimm_ps(__m256 a, __m256 b, __m256i c,
                              int imm8)

.. admonition:: Intel Description

    Fix up packed single-precision (32-bit) floating-point elements in "a" and "b" using packed 32-bit integers in "c", and store the results in "dst". "imm8" is used to set the required flags reporting.

.. admonition:: Community Note [Fix up Notes]

    The phrase 'Fix Up' in this context means to apply your desire method of error detection and correction or flagging. For example, make a number NAN if it fulfils a certain criteria

.. admonition:: See Also [Fix up Notes]

    `A stackoverflow explanation of Fix Up <https://stackoverflow.com/questions/30213615/what-is-meant-by-fixing-up-floats>`_

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        enum TOKEN_TYPE {
        	QNAN_TOKEN := 0, \
        	SNAN_TOKEN := 1, \
        	ZERO_VALUE_TOKEN := 2, \
        	ONE_VALUE_TOKEN := 3, \
        	NEG_INF_TOKEN := 4, \
        	POS_INF_TOKEN := 5, \
        	NEG_VALUE_TOKEN := 6, \
        	POS_VALUE_TOKEN := 7
        }
        DEFINE FIXUPIMMPD(src1[31:0], src2[31:0], src3[31:0], imm8[7:0]) {
        	tsrc[31:0] := ((src2[30:23] == 0) AND (MXCSR.DAZ == 1)) ? 0.0 : src2[31:0]
        	CASE(tsrc[31:0]) OF
        	QNAN_TOKEN:j := 0
        	SNAN_TOKEN:j := 1
        	ZERO_VALUE_TOKEN: j := 2
        	ONE_VALUE_TOKEN: j := 3
        	NEG_INF_TOKEN: j := 4
        	POS_INF_TOKEN: j := 5
        	NEG_VALUE_TOKEN: j := 6
        	POS_VALUE_TOKEN: j := 7
        	ESAC
        	
        	token_response[3:0] := src3[3+4*j:4*j]
        	
        	CASE(token_response[3:0]) OF
        	0 : dest[31:0] := src1[31:0]
        	1 : dest[31:0] := tsrc[31:0]
        	2 : dest[31:0] := QNaN(tsrc[31:0])
        	3 : dest[31:0] := QNAN_Indefinite
        	4 : dest[31:0] := -INF
        	5 : dest[31:0] := +INF
        	6 : dest[31:0] := tsrc.sign? -INF : +INF
        	7 : dest[31:0] := -0
        	8 : dest[31:0] := +0
        	9 : dest[31:0] := -1
        	10: dest[31:0] := +1
        	11: dest[31:0] := 1/2
        	12: dest[31:0] := 90.0
        	13: dest[31:0] := PI/2
        	14: dest[31:0] := MAX_FLOAT
        	15: dest[31:0] := -MAX_FLOAT
        	ESAC
        	
        	CASE(tsrc[31:0]) OF
        	ZERO_VALUE_TOKEN:
        		IF (imm8[0]) #ZE; FI
        	ZERO_VALUE_TOKEN:
        		IF (imm8[1]) #IE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[2]) #ZE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[3]) #IE; FI
        	SNAN_TOKEN:
        		IF (imm8[4]) #IE; FI
        	NEG_INF_TOKEN:
        		IF (imm8[5]) #IE; FI
        	NEG_VALUE_TOKEN:
        		IF (imm8[6]) #IE; FI
        	POS_INF_TOKEN:
        		IF (imm8[7]) #IE; FI
        	ESAC
        	RETURN dest[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_fixupimm_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __mmask8 k, 
    __m256 b, 
    __m256i c, 
    int imm8
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_mask_fixupimm_ps(__m256 a, __mmask8 k,
                                   __m256 b, __m256i c,
                                   int imm8)

.. admonition:: Intel Description

    Fix up packed single-precision (32-bit) floating-point elements in "a" and "b" using packed 32-bit integers in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). "imm8" is used to set the required flags reporting.

.. admonition:: Community Note [Fix up Notes]

    The phrase 'Fix Up' in this context means to apply your desire method of error detection and correction or flagging. For example, make a number NAN if it fulfils a certain criteria

.. admonition:: See Also [Fix up Notes]

    `A stackoverflow explanation of Fix Up <https://stackoverflow.com/questions/30213615/what-is-meant-by-fixing-up-floats>`_

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        enum TOKEN_TYPE {
        	QNAN_TOKEN := 0, \
        	SNAN_TOKEN := 1, \
        	ZERO_VALUE_TOKEN := 2, \
        	ONE_VALUE_TOKEN := 3, \
        	NEG_INF_TOKEN := 4, \
        	POS_INF_TOKEN := 5, \
        	NEG_VALUE_TOKEN := 6, \
        	POS_VALUE_TOKEN := 7
        }
        DEFINE FIXUPIMMPD(src1[31:0], src2[31:0], src3[31:0], imm8[7:0]) {
        	tsrc[31:0] := ((src2[30:23] == 0) AND (MXCSR.DAZ == 1)) ? 0.0 : src2[31:0]
        	CASE(tsrc[31:0]) OF
        	QNAN_TOKEN:j := 0
        	SNAN_TOKEN:j := 1
        	ZERO_VALUE_TOKEN: j := 2
        	ONE_VALUE_TOKEN: j := 3
        	NEG_INF_TOKEN: j := 4
        	POS_INF_TOKEN: j := 5
        	NEG_VALUE_TOKEN: j := 6
        	POS_VALUE_TOKEN: j := 7
        	ESAC
        	
        	token_response[3:0] := src3[3+4*j:4*j]
        	
        	CASE(token_response[3:0]) OF
        	0 : dest[31:0] := src1[31:0]
        	1 : dest[31:0] := tsrc[31:0]
        	2 : dest[31:0] := QNaN(tsrc[31:0])
        	3 : dest[31:0] := QNAN_Indefinite
        	4 : dest[31:0] := -INF
        	5 : dest[31:0] := +INF
        	6 : dest[31:0] := tsrc.sign? -INF : +INF
        	7 : dest[31:0] := -0
        	8 : dest[31:0] := +0
        	9 : dest[31:0] := -1
        	10: dest[31:0] := +1
        	11: dest[31:0] := 1/2
        	12: dest[31:0] := 90.0
        	13: dest[31:0] := PI/2
        	14: dest[31:0] := MAX_FLOAT
        	15: dest[31:0] := -MAX_FLOAT
        	ESAC
        	
        	CASE(tsrc[31:0]) OF
        	ZERO_VALUE_TOKEN:
        		IF (imm8[0]) #ZE; FI
        	ZERO_VALUE_TOKEN:
        		IF (imm8[1]) #IE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[2]) #ZE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[3]) #IE; FI
        	SNAN_TOKEN:
        		IF (imm8[4]) #IE; FI
        	NEG_INF_TOKEN:
        		IF (imm8[5]) #IE; FI
        	NEG_VALUE_TOKEN:
        		IF (imm8[6]) #IE; FI
        	POS_INF_TOKEN:
        		IF (imm8[7]) #IE; FI
        	ESAC
        	RETURN dest[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_fixupimm_ps
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b, 
    __m256i c, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_maskz_fixupimm_ps(__mmask8 k, __m256 a,
                                    __m256 b, __m256i c,
                                    int imm8)

.. admonition:: Intel Description

    Fix up packed single-precision (32-bit) floating-point elements in "a" and "b" using packed 32-bit integers in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). "imm8" is used to set the required flags reporting.

.. admonition:: Community Note [Fix up Notes]

    The phrase 'Fix Up' in this context means to apply your desire method of error detection and correction or flagging. For example, make a number NAN if it fulfils a certain criteria

.. admonition:: See Also [Fix up Notes]

    `A stackoverflow explanation of Fix Up <https://stackoverflow.com/questions/30213615/what-is-meant-by-fixing-up-floats>`_

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        enum TOKEN_TYPE {
        	QNAN_TOKEN := 0, \
        	SNAN_TOKEN := 1, \
        	ZERO_VALUE_TOKEN := 2, \
        	ONE_VALUE_TOKEN := 3, \
        	NEG_INF_TOKEN := 4, \
        	POS_INF_TOKEN := 5, \
        	NEG_VALUE_TOKEN := 6, \
        	POS_VALUE_TOKEN := 7
        }
        DEFINE FIXUPIMMPD(src1[31:0], src2[31:0], src3[31:0], imm8[7:0]) {
        	tsrc[31:0] := ((src2[30:23] == 0) AND (MXCSR.DAZ == 1)) ? 0.0 : src2[31:0]
        	CASE(tsrc[31:0]) OF
        	QNAN_TOKEN:j := 0
        	SNAN_TOKEN:j := 1
        	ZERO_VALUE_TOKEN: j := 2
        	ONE_VALUE_TOKEN: j := 3
        	NEG_INF_TOKEN: j := 4
        	POS_INF_TOKEN: j := 5
        	NEG_VALUE_TOKEN: j := 6
        	POS_VALUE_TOKEN: j := 7
        	ESAC
        	
        	token_response[3:0] := src3[3+4*j:4*j]
        	
        	CASE(token_response[3:0]) OF
        	0 : dest[31:0] := src1[31:0]
        	1 : dest[31:0] := tsrc[31:0]
        	2 : dest[31:0] := QNaN(tsrc[31:0])
        	3 : dest[31:0] := QNAN_Indefinite
        	4 : dest[31:0] := -INF
        	5 : dest[31:0] := +INF
        	6 : dest[31:0] := tsrc.sign? -INF : +INF
        	7 : dest[31:0] := -0
        	8 : dest[31:0] := +0
        	9 : dest[31:0] := -1
        	10: dest[31:0] := +1
        	11: dest[31:0] := 1/2
        	12: dest[31:0] := 90.0
        	13: dest[31:0] := PI/2
        	14: dest[31:0] := MAX_FLOAT
        	15: dest[31:0] := -MAX_FLOAT
        	ESAC
        	
        	CASE(tsrc[31:0]) OF
        	ZERO_VALUE_TOKEN:
        		IF (imm8[0]) #ZE; FI
        	ZERO_VALUE_TOKEN:
        		IF (imm8[1]) #IE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[2]) #ZE; FI
        	ONE_VALUE_TOKEN:
        		IF (imm8[3]) #IE; FI
        	SNAN_TOKEN:
        		IF (imm8[4]) #IE; FI
        	NEG_INF_TOKEN:
        		IF (imm8[5]) #IE; FI
        	NEG_VALUE_TOKEN:
        		IF (imm8[6]) #IE; FI
        	POS_INF_TOKEN:
        		IF (imm8[7]) #IE; FI
        	ESAC
        	RETURN dest[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_getexp_pd
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_getexp_pd(__m256d a);

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_getexp_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_mask_getexp_pd(__m256d src, __mmask8 k,
                                  __m256d a)

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_getexp_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_maskz_getexp_pd(__mmask8 k, __m256d a);

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_getexp_ps
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_getexp_ps(__m256 a);

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_getexp_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_mask_getexp_ps(__m256 src, __mmask8 k,
                                 __m256 a)

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_getexp_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_getexp_ps(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_getmant_pd
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    FP64 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m256d _mm256_getmant_pd(__m256d a,
                              _MM_MANTISSA_NORM_ENUM interv,
                              _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_getmant_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m256d _mm256_mask_getmant_pd(
        __m256d src, __mmask8 k, __m256d a,
        _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_getmant_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m256d _mm256_maskz_getmant_pd(
        __mmask8 k, __m256d a, _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_getmant_ps
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    FP32 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m256 _mm256_getmant_ps(__m256 a,
                             _MM_MANTISSA_NORM_ENUM interv,
                             _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_getmant_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m256 _mm256_mask_getmant_ps(__m256 src, __mmask8 k,
                                  __m256 a,
                                  _MM_MANTISSA_NORM_ENUM interv,
                                  _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_getmant_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m256 _mm256_maskz_getmant_ps(
        __mmask8 k, __m256 a, _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_insertf32x4
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m128 b, 
    int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_insertf32x4(__m256 a, __m128 b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: dst[127:0] := b[127:0]
        1: dst[255:128] := b[127:0]
        ESAC
        dst[MAX:256] := 0
        	

_mm256_mask_insertf32x4
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m128 b, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_mask_insertf32x4(__m256 src, __mmask8 k,
                                   __m256 a, __m128 b,
                                   int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_insertf32x4
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m128 b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_maskz_insertf32x4(__mmask8 k, __m256 a,
                                    __m128 b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_inserti32x4
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_inserti32x4(__m256i a, __m128i b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 128 bits (composed of 4 packed 32-bit integers) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: dst[127:0] := b[127:0]
        1: dst[255:128] := b[127:0]
        ESAC
        dst[MAX:256] := 0
        	

_mm256_mask_inserti32x4
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_inserti32x4(__m256i src, __mmask8 k,
                                    __m256i a, __m128i b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 4 packed 32-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_inserti32x4
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_inserti32x4(__mmask8 k, __m256i a,
                                     __m128i b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 4 packed 32-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0]
        CASE (imm8[0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        ESAC
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_blend_epi32
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask_blend_epi32(__mmask8 k, __m256i a,
                                    __m256i b)

.. admonition:: Intel Description

    Blend packed 32-bit integers from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := b[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_blend_epi64
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask_blend_epi64(__mmask8 k, __m256i a,
                                    __m256i b)

.. admonition:: Intel Description

    Blend packed 64-bit integers from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := b[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcastd_epi32
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_mask_broadcastd_epi32(__m256i src,
                                         __mmask8 k, __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 32-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcastd_epi32
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_broadcastd_epi32(__mmask8 k,
                                          __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 32-bit integer from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_broadcastq_epi64
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_mask_broadcastq_epi64(__m256i src,
                                         __mmask8 k, __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 64-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_broadcastq_epi64
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_maskz_broadcastq_epi64(__mmask8 k,
                                          __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 64-bit integer from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_compress_epi32
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
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

    __m256i _mm256_mask_compress_epi32(__m256i src, __mmask8 k,
                                       __m256i a)

.. admonition:: Intel Description

    Contiguously store the active 32-bit integers in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := 0
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        dst[255:m] := src[255:m]
        dst[MAX:256] := 0
        	

_mm256_maskz_compress_epi32
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_compress_epi32(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Contiguously store the active 32-bit integers in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := 0
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        dst[255:m] := 0
        dst[MAX:256] := 0
        	

_mm256_mask_compress_epi64
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
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

    __m256i _mm256_mask_compress_epi64(__m256i src, __mmask8 k,
                                       __m256i a)

.. admonition:: Intel Description

    Contiguously store the active 64-bit integers in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := 0
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        dst[255:m] := src[255:m]
        dst[MAX:256] := 0
        	

_mm256_maskz_compress_epi64
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_maskz_compress_epi64(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Contiguously store the active 64-bit integers in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := 0
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        dst[255:m] := 0
        dst[MAX:256] := 0
        	

_mm256_mask_permutexvar_epi32
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i idx, 
    __m256i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 idx, 
    UI32 a

.. code-block:: C

    __m256i _mm256_mask_permutexvar_epi32(__m256i src,
                                          __mmask8 k,
                                          __m256i idx,
                                          __m256i a)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	id := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutexvar_epi32
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i idx, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI32 idx, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_permutexvar_epi32(__mmask8 k,
                                           __m256i idx,
                                           __m256i a)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	id := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutexvar_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i idx, 
    __m256i a
:Param ETypes:
    UI32 idx, 
    UI32 a

.. code-block:: C

    __m256i _mm256_permutexvar_epi32(__m256i idx, __m256i a);

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	id := idx[i+2:i]*32
        	dst[i+31:i] := a[id+31:id]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask2_permutex2var_epi32
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i idx, 
    __mmask8 k, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 idx, 
    MASK k, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask2_permutex2var_epi32(__m256i a,
                                            __m256i idx,
                                            __mmask8 k,
                                            __m256i b)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	off := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := idx[i+3] ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := idx[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutex2var_epi32
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __mmask8 k, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    UI32 a, 
    MASK k, 
    UI32 idx, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask_permutex2var_epi32(__m256i a,
                                           __mmask8 k,
                                           __m256i idx,
                                           __m256i b)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	off := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := idx[i+3] ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutex2var_epi32
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 idx, 
    UI32 b

.. code-block:: C

    __m256i _mm256_maskz_permutex2var_epi32(__mmask8 k,
                                            __m256i a,
                                            __m256i idx,
                                            __m256i b)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	off := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := (idx[i+3]) ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutex2var_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 idx, 
    UI32 b

.. code-block:: C

    __m256i _mm256_permutex2var_epi32(__m256i a, __m256i idx,
                                      __m256i b)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	off := idx[i+2:i]*32
        	dst[i+31:i] := idx[i+3] ? b[off+31:off] : a[off+31:off]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask2_permutex2var_pd
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256i idx, 
    __mmask8 k, 
    __m256d b
:Param ETypes:
    FP64 a, 
    UI64 idx, 
    MASK k, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask2_permutex2var_pd(__m256d a, __m256i idx,
                                         __mmask8 k, __m256d b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	off := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := idx[i+2] ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := idx[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutex2var_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __mmask8 k, 
    __m256i idx, 
    __m256d b
:Param ETypes:
    FP64 a, 
    MASK k, 
    UI64 idx, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_permutex2var_pd(__m256d a, __mmask8 k,
                                        __m256i idx, __m256d b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	off := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := idx[i+2] ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutex2var_pd
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256i idx, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    UI64 idx, 
    FP64 b

.. code-block:: C

    __m256d _mm256_maskz_permutex2var_pd(__mmask8 k, __m256d a,
                                         __m256i idx,
                                         __m256d b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	off := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := (idx[i+2]) ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutex2var_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256i idx, 
    __m256d b
:Param ETypes:
    FP64 a, 
    UI64 idx, 
    FP64 b

.. code-block:: C

    __m256d _mm256_permutex2var_pd(__m256d a, __m256i idx,
                                   __m256d b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	off := idx[i+1:i]*64
        	dst[i+63:i] := idx[i+2] ? b[off+63:off] : a[off+63:off]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask2_permutex2var_ps
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256i idx, 
    __mmask8 k, 
    __m256 b
:Param ETypes:
    FP32 a, 
    UI32 idx, 
    MASK k, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask2_permutex2var_ps(__m256 a, __m256i idx,
                                        __mmask8 k, __m256 b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	off := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := idx[i+3] ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := idx[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutex2var_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __mmask8 k, 
    __m256i idx, 
    __m256 b
:Param ETypes:
    FP32 a, 
    MASK k, 
    UI32 idx, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_permutex2var_ps(__m256 a, __mmask8 k,                                   __m256i idx, __m256 b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	off := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := idx[i+3] ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutex2var_ps
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256i idx, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    UI32 idx, 
    FP32 b

.. code-block:: C

    __m256 _mm256_maskz_permutex2var_ps(__mmask8 k, __m256 a,
                                        __m256i idx, __m256 b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	off := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := (idx[i+3]) ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutex2var_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256i idx, 
    __m256 b
:Param ETypes:
    FP32 a, 
    UI32 idx, 
    FP32 b

.. code-block:: C

    __m256 _mm256_permutex2var_ps(__m256 a, __m256i idx,
                                  __m256 b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	off := idx[i+2:i]*32
        	dst[i+31:i] := idx[i+3] ? b[off+31:off] : a[off+31:off]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask2_permutex2var_epi64
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i idx, 
    __mmask8 k, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 idx, 
    MASK k, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask2_permutex2var_epi64(__m256i a,
                                            __m256i idx,
                                            __mmask8 k,
                                            __m256i b)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	off := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := idx[i+2] ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := idx[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutex2var_epi64
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __mmask8 k, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    UI64 a, 
    MASK k, 
    UI64 idx, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask_permutex2var_epi64(__m256i a,
                                           __mmask8 k,
                                           __m256i idx,
                                           __m256i b)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	off := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := idx[i+2] ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutex2var_epi64
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 idx, 
    UI64 b

.. code-block:: C

    __m256i _mm256_maskz_permutex2var_epi64(__mmask8 k,
                                            __m256i a,
                                            __m256i idx,
                                            __m256i b)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	off := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := (idx[i+2]) ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutex2var_epi64
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i idx, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 idx, 
    UI64 b

.. code-block:: C

    __m256i _mm256_permutex2var_epi64(__m256i a, __m256i idx,
                                      __m256i b)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	off := idx[i+1:i]*64
        	dst[i+63:i] := idx[i+2] ? b[off+63:off] : a[off+63:off]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permute_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    const int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_permute_pd(__m256d src, __mmask8 k,
                                   __m256d a, const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF (imm8[0] == 0) tmp_dst[63:0] := a[63:0]; FI
        IF (imm8[0] == 1) tmp_dst[63:0] := a[127:64]; FI
        IF (imm8[1] == 0) tmp_dst[127:64] := a[63:0]; FI
        IF (imm8[1] == 1) tmp_dst[127:64] := a[127:64]; FI
        IF (imm8[2] == 0) tmp_dst[191:128] := a[191:128]; FI
        IF (imm8[2] == 1) tmp_dst[191:128] := a[255:192]; FI
        IF (imm8[3] == 0) tmp_dst[255:192] := a[191:128]; FI
        IF (imm8[3] == 1) tmp_dst[255:192] := a[255:192]; FI
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutevar_pd
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256i b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    UI64 b

.. code-block:: C

    __m256d _mm256_mask_permutevar_pd(__m256d src, __mmask8 k,
                                      __m256d a, __m256i b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 128-bit lanes using the control in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF (b[1] == 0) tmp_dst[63:0] := a[63:0]; FI
        IF (b[1] == 1) tmp_dst[63:0] := a[127:64]; FI
        IF (b[65] == 0) tmp_dst[127:64] := a[63:0]; FI
        IF (b[65] == 1) tmp_dst[127:64] := a[127:64]; FI
        IF (b[129] == 0) tmp_dst[191:128] := a[191:128]; FI
        IF (b[129] == 1) tmp_dst[191:128] := a[255:192]; FI
        IF (b[193] == 0) tmp_dst[255:192] := a[191:128]; FI
        IF (b[193] == 1) tmp_dst[255:192] := a[255:192]; FI
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permute_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_permute_pd(__mmask8 k, __m256d a,
                                    const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF (imm8[0] == 0) tmp_dst[63:0] := a[63:0]; FI
        IF (imm8[0] == 1) tmp_dst[63:0] := a[127:64]; FI
        IF (imm8[1] == 0) tmp_dst[127:64] := a[63:0]; FI
        IF (imm8[1] == 1) tmp_dst[127:64] := a[127:64]; FI
        IF (imm8[2] == 0) tmp_dst[191:128] := a[191:128]; FI
        IF (imm8[2] == 1) tmp_dst[191:128] := a[255:192]; FI
        IF (imm8[3] == 0) tmp_dst[255:192] := a[191:128]; FI
        IF (imm8[3] == 1) tmp_dst[255:192] := a[255:192]; FI
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutevar_pd
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256i b
:Param ETypes:
    MASK k, 
    FP64 a, 
    UI64 b

.. code-block:: C

    __m256d _mm256_maskz_permutevar_pd(__mmask8 k, __m256d a,
                                       __m256i b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 128-bit lanes using the control in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF (b[1] == 0) tmp_dst[63:0] := a[63:0]; FI
        IF (b[1] == 1) tmp_dst[63:0] := a[127:64]; FI
        IF (b[65] == 0) tmp_dst[127:64] := a[63:0]; FI
        IF (b[65] == 1) tmp_dst[127:64] := a[127:64]; FI
        IF (b[129] == 0) tmp_dst[191:128] := a[191:128]; FI
        IF (b[129] == 1) tmp_dst[191:128] := a[255:192]; FI
        IF (b[193] == 0) tmp_dst[255:192] := a[191:128]; FI
        IF (b[193] == 1) tmp_dst[255:192] := a[255:192]; FI
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permute_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    const int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_mask_permute_ps(__m256 src, __mmask8 k,
                                  __m256 a, const int imm8)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[31:0] := src[31:0]
        	1:	tmp[31:0] := src[63:32]
        	2:	tmp[31:0] := src[95:64]
        	3:	tmp[31:0] := src[127:96]
        	ESAC
        	RETURN tmp[31:0]
        }
        tmp_dst[31:0] := SELECT4(a[127:0], imm8[1:0])
        tmp_dst[63:32] := SELECT4(a[127:0], imm8[3:2])
        tmp_dst[95:64] := SELECT4(a[127:0], imm8[5:4])
        tmp_dst[127:96] := SELECT4(a[127:0], imm8[7:6])
        tmp_dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        tmp_dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        tmp_dst[223:192] := SELECT4(a[255:128], imm8[5:4])
        tmp_dst[255:224] := SELECT4(a[255:128], imm8[7:6])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutevar_ps
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256i b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    UI32 b

.. code-block:: C

    __m256 _mm256_mask_permutevar_ps(__m256 src, __mmask8 k,
                                     __m256 a, __m256i b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[31:0] := src[31:0]
        	1:	tmp[31:0] := src[63:32]
        	2:	tmp[31:0] := src[95:64]
        	3:	tmp[31:0] := src[127:96]
        	ESAC
        	RETURN tmp[31:0]
        }
        tmp_dst[31:0] := SELECT4(a[127:0], b[1:0])
        tmp_dst[63:32] := SELECT4(a[127:0], b[33:32])
        tmp_dst[95:64] := SELECT4(a[127:0], b[65:64])
        tmp_dst[127:96] := SELECT4(a[127:0], b[97:96])
        tmp_dst[159:128] := SELECT4(a[255:128], b[129:128])
        tmp_dst[191:160] := SELECT4(a[255:128], b[161:160])
        tmp_dst[223:192] := SELECT4(a[255:128], b[193:192])
        tmp_dst[255:224] := SELECT4(a[255:128], b[225:224])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permute_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_maskz_permute_ps(__mmask8 k, __m256 a,
                                   const int imm8)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[31:0] := src[31:0]
        	1:	tmp[31:0] := src[63:32]
        	2:	tmp[31:0] := src[95:64]
        	3:	tmp[31:0] := src[127:96]
        	ESAC
        	RETURN tmp[31:0]
        }
        tmp_dst[31:0] := SELECT4(a[127:0], imm8[1:0])
        tmp_dst[63:32] := SELECT4(a[127:0], imm8[3:2])
        tmp_dst[95:64] := SELECT4(a[127:0], imm8[5:4])
        tmp_dst[127:96] := SELECT4(a[127:0], imm8[7:6])
        tmp_dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        tmp_dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        tmp_dst[223:192] := SELECT4(a[255:128], imm8[5:4])
        tmp_dst[255:224] := SELECT4(a[255:128], imm8[7:6])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutevar_ps
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256i b
:Param ETypes:
    MASK k, 
    FP32 a, 
    UI32 b

.. code-block:: C

    __m256 _mm256_maskz_permutevar_ps(__mmask8 k, __m256 a,
                                      __m256i b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[31:0] := src[31:0]
        	1:	tmp[31:0] := src[63:32]
        	2:	tmp[31:0] := src[95:64]
        	3:	tmp[31:0] := src[127:96]
        	ESAC
        	RETURN tmp[31:0]
        }
        tmp_dst[31:0] := SELECT4(a[127:0], b[1:0])
        tmp_dst[63:32] := SELECT4(a[127:0], b[33:32])
        tmp_dst[95:64] := SELECT4(a[127:0], b[65:64])
        tmp_dst[127:96] := SELECT4(a[127:0], b[97:96])
        tmp_dst[159:128] := SELECT4(a[255:128], b[129:128])
        tmp_dst[191:160] := SELECT4(a[255:128], b[161:160])
        tmp_dst[223:192] := SELECT4(a[255:128], b[193:192])
        tmp_dst[255:224] := SELECT4(a[255:128], b[225:224])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutex_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_permutex_pd(__m256d src, __mmask8 k,
                                    __m256d a, int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[63:0] := src[63:0]
        	1:	tmp[63:0] := src[127:64]
        	2:	tmp[63:0] := src[191:128]
        	3:	tmp[63:0] := src[255:192]
        	ESAC
        	RETURN tmp[63:0]
        }
        tmp_dst[63:0] := SELECT4(a[255:0], imm8[1:0])
        tmp_dst[127:64] := SELECT4(a[255:0], imm8[3:2])
        tmp_dst[191:128] := SELECT4(a[255:0], imm8[5:4])
        tmp_dst[255:192] := SELECT4(a[255:0], imm8[7:6])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutexvar_pd
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256i idx, 
    __m256d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    UI64 idx, 
    FP64 a

.. code-block:: C

    __m256d _mm256_mask_permutexvar_pd(__m256d src, __mmask8 k,
                                       __m256i idx, __m256d a)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	id := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := a[id+63:id]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutex_pd
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_permutex_pd(__mmask8 k, __m256d a,
                                     int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[63:0] := src[63:0]
        	1:	tmp[63:0] := src[127:64]
        	2:	tmp[63:0] := src[191:128]
        	3:	tmp[63:0] := src[255:192]
        	ESAC
        	RETURN tmp[63:0]
        }
        tmp_dst[63:0] := SELECT4(a[255:0], imm8[1:0])
        tmp_dst[127:64] := SELECT4(a[255:0], imm8[3:2])
        tmp_dst[191:128] := SELECT4(a[255:0], imm8[5:4])
        tmp_dst[255:192] := SELECT4(a[255:0], imm8[7:6])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutexvar_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256i idx, 
    __m256d a
:Param ETypes:
    MASK k, 
    UI64 idx, 
    FP64 a

.. code-block:: C

    __m256d _mm256_maskz_permutexvar_pd(__mmask8 k, __m256i idx,
                                        __m256d a)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	id := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := a[id+63:id]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutex_pd
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_permutex_pd(__m256d a, int imm8);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the control in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[63:0] := src[63:0]
        	1:	tmp[63:0] := src[127:64]
        	2:	tmp[63:0] := src[191:128]
        	3:	tmp[63:0] := src[255:192]
        	ESAC
        	RETURN tmp[63:0]
        }
        dst[63:0] := SELECT4(a[255:0], imm8[1:0])
        dst[127:64] := SELECT4(a[255:0], imm8[3:2])
        dst[191:128] := SELECT4(a[255:0], imm8[5:4])
        dst[255:192] := SELECT4(a[255:0], imm8[7:6])
        dst[MAX:256] := 0
        	

_mm256_permutexvar_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256i idx, 
    __m256d a
:Param ETypes:
    UI64 idx, 
    FP64 a

.. code-block:: C

    __m256d _mm256_permutexvar_pd(__m256i idx, __m256d a);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	id := idx[i+1:i]*64
        	dst[i+63:i] := a[id+63:id]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutexvar_ps
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256i idx, 
    __m256 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    UI32 idx, 
    FP32 a

.. code-block:: C

    __m256 _mm256_mask_permutexvar_ps(__m256 src, __mmask8 k,
                                      __m256i idx, __m256 a)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	id := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutexvar_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256i idx, 
    __m256 a
:Param ETypes:
    MASK k, 
    UI32 idx, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_permutexvar_ps(__mmask8 k, __m256i idx,
                                       __m256 a)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	id := idx[i+2:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutexvar_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256i idx, 
    __m256 a
:Param ETypes:
    UI32 idx, 
    FP32 a

.. code-block:: C

    __m256 _mm256_permutexvar_ps(__m256i idx, __m256 a);

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" across lanes using the corresponding index in "idx".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	id := idx[i+2:i]*32
        	dst[i+31:i] := a[id+31:id]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutex_epi64
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    const int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_permutex_epi64(__m256i src, __mmask8 k,
                                       __m256i a,
                                       const int imm8)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[63:0] := src[63:0]
        	1:	tmp[63:0] := src[127:64]
        	2:	tmp[63:0] := src[191:128]
        	3:	tmp[63:0] := src[255:192]
        	ESAC
        	RETURN tmp[63:0]
        }
        tmp_dst[63:0] := SELECT4(a[255:0], imm8[1:0])
        tmp_dst[127:64] := SELECT4(a[255:0], imm8[3:2])
        tmp_dst[191:128] := SELECT4(a[255:0], imm8[5:4])
        tmp_dst[255:192] := SELECT4(a[255:0], imm8[7:6])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_permutexvar_epi64
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i idx, 
    __m256i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 idx, 
    UI64 a

.. code-block:: C

    __m256i _mm256_mask_permutexvar_epi64(__m256i src,
                                          __mmask8 k,
                                          __m256i idx,
                                          __m256i a)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	id := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := a[id+63:id]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutex_epi64
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_permutex_epi64(__mmask8 k, __m256i a,
                                        const int imm8)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[63:0] := src[63:0]
        	1:	tmp[63:0] := src[127:64]
        	2:	tmp[63:0] := src[191:128]
        	3:	tmp[63:0] := src[255:192]
        	ESAC
        	RETURN tmp[63:0]
        }
        tmp_dst[63:0] := SELECT4(a[255:0], imm8[1:0])
        tmp_dst[127:64] := SELECT4(a[255:0], imm8[3:2])
        tmp_dst[191:128] := SELECT4(a[255:0], imm8[5:4])
        tmp_dst[255:192] := SELECT4(a[255:0], imm8[7:6])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_permutexvar_epi64
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i idx, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI64 idx, 
    UI64 a

.. code-block:: C

    __m256i _mm256_maskz_permutexvar_epi64(__mmask8 k,
                                           __m256i idx,
                                           __m256i a)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	id := idx[i+1:i]*64
        	IF k[j]
        		dst[i+63:i] := a[id+63:id]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutex_epi64
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    const int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_permutex_epi64(__m256i a, const int imm8);

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes using the control in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[63:0] := src[63:0]
        	1:	tmp[63:0] := src[127:64]
        	2:	tmp[63:0] := src[191:128]
        	3:	tmp[63:0] := src[255:192]
        	ESAC
        	RETURN tmp[63:0]
        }
        dst[63:0] := SELECT4(a[255:0], imm8[1:0])
        dst[127:64] := SELECT4(a[255:0], imm8[3:2])
        dst[191:128] := SELECT4(a[255:0], imm8[5:4])
        dst[255:192] := SELECT4(a[255:0], imm8[7:6])
        dst[MAX:256] := 0
        	

_mm256_permutexvar_epi64
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i idx, 
    __m256i a
:Param ETypes:
    UI64 idx, 
    UI64 a

.. code-block:: C

    __m256i _mm256_permutexvar_epi64(__m256i idx, __m256i a);

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	id := idx[i+1:i]*64
        	dst[i+63:i] := a[id+63:id]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_expand_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
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

    __m256i _mm256_mask_expand_epi32(__m256i src, __mmask8 k,
                                     __m256i a)

.. admonition:: Intel Description

    Load contiguous active 32-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[m+31:m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_expand_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_expand_epi32(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Load contiguous active 32-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[m+31:m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_expand_epi64
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
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

    __m256i _mm256_mask_expand_epi64(__m256i src, __mmask8 k,
                                     __m256i a)

.. admonition:: Intel Description

    Load contiguous active 64-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[m+63:m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_expand_epi64
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_maskz_expand_epi64(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Load contiguous active 64-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[m+63:m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_shuffle_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    _MM_PERM_ENUM imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_shuffle_epi32(__m256i src, __mmask8 k,
                                      __m256i a,
                                      _MM_PERM_ENUM imm8)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[31:0] := src[31:0]
        	1:	tmp[31:0] := src[63:32]
        	2:	tmp[31:0] := src[95:64]
        	3:	tmp[31:0] := src[127:96]
        	ESAC
        	RETURN tmp[31:0]
        }
        tmp_dst[31:0] := SELECT4(a[127:0], imm8[1:0])
        tmp_dst[63:32] := SELECT4(a[127:0], imm8[3:2])
        tmp_dst[95:64] := SELECT4(a[127:0], imm8[5:4])
        tmp_dst[127:96] := SELECT4(a[127:0], imm8[7:6])
        tmp_dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        tmp_dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        tmp_dst[223:192] := SELECT4(a[255:128], imm8[5:4])
        tmp_dst[255:224] := SELECT4(a[255:128], imm8[7:6])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shuffle_epi32
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    _MM_PERM_ENUM imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_shuffle_epi32(__mmask8 k, __m256i a,
                                       _MM_PERM_ENUM imm8)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[31:0] := src[31:0]
        	1:	tmp[31:0] := src[63:32]
        	2:	tmp[31:0] := src[95:64]
        	3:	tmp[31:0] := src[127:96]
        	ESAC
        	RETURN tmp[31:0]
        }
        tmp_dst[31:0] := SELECT4(a[127:0], imm8[1:0])
        tmp_dst[63:32] := SELECT4(a[127:0], imm8[3:2])
        tmp_dst[95:64] := SELECT4(a[127:0], imm8[5:4])
        tmp_dst[127:96] := SELECT4(a[127:0], imm8[7:6])
        tmp_dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        tmp_dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        tmp_dst[223:192] := SELECT4(a[255:128], imm8[5:4])
        tmp_dst[255:224] := SELECT4(a[255:128], imm8[7:6])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpackhi_epi32
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask_unpackhi_epi32(__m256i src, __mmask8 k,
                                       __m256i a, __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[95:64] 
        	dst[63:32] := src2[95:64] 
        	dst[95:64] := src1[127:96] 
        	dst[127:96] := src2[127:96] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_DWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_DWORDS(a[255:128], b[255:128])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpackhi_epi32
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_maskz_unpackhi_epi32(__mmask8 k, __m256i a,
                                        __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[95:64] 
        	dst[63:32] := src2[95:64] 
        	dst[95:64] := src1[127:96] 
        	dst[127:96] := src2[127:96] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_DWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_DWORDS(a[255:128], b[255:128])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpackhi_epi64
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask_unpackhi_epi64(__m256i src, __mmask8 k,
                                       __m256i a, __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 64-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[127:64] 
        	dst[127:64] := src2[127:64] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_QWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_QWORDS(a[255:128], b[255:128])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpackhi_epi64
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_maskz_unpackhi_epi64(__mmask8 k, __m256i a,
                                        __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 64-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[127:64] 
        	dst[127:64] := src2[127:64] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_QWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_QWORDS(a[255:128], b[255:128])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpacklo_epi32
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask_unpacklo_epi32(__m256i src, __mmask8 k,
                                       __m256i a, __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[31:0] 
        	dst[63:32] := src2[31:0] 
        	dst[95:64] := src1[63:32] 
        	dst[127:96] := src2[63:32] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_DWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_DWORDS(a[255:128], b[255:128])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpacklo_epi32
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_maskz_unpacklo_epi32(__mmask8 k, __m256i a,
                                        __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[31:0] 
        	dst[63:32] := src2[31:0] 
        	dst[95:64] := src1[63:32] 
        	dst[127:96] := src2[63:32] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_DWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_DWORDS(a[255:128], b[255:128])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpacklo_epi64
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask_unpacklo_epi64(__m256i src, __mmask8 k,
                                       __m256i a, __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 64-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[63:0] 
        	dst[127:64] := src2[63:0] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_QWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_QWORDS(a[255:128], b[255:128])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpacklo_epi64
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_maskz_unpacklo_epi64(__mmask8 k, __m256i a,
                                        __m256i b)

.. admonition:: Intel Description

    Unpack and interleave 64-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[63:0] 
        	dst[127:64] := src2[63:0] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_QWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_QWORDS(a[255:128], b[255:128])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_roundscale_pd
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_roundscale_pd(__m256d src, __mmask8 k,
                                      __m256d a, int imm8)

.. admonition:: Intel Description

    Round packed double-precision (64-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP64(src1[63:0], imm8[7:0]) {
        	m[63:0] := FP64(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[63:0] := POW(2.0, -m) * ROUND(POW(2.0, m) * src1[63:0], imm8[3:0])
        	IF IsInf(tmp[63:0])
        		tmp[63:0] := src1[63:0]
        	FI
        	RETURN tmp[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_roundscale_pd
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_roundscale_pd(__mmask8 k, __m256d a,
                                       int imm8)

.. admonition:: Intel Description

    Round packed double-precision (64-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP64(src1[63:0], imm8[7:0]) {
        	m[63:0] := FP64(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[63:0] := POW(2.0, -m) * ROUND(POW(2.0, m) * src1[63:0], imm8[3:0])
        	IF IsInf(tmp[63:0])
        		tmp[63:0] := src1[63:0]
        	FI
        	RETURN tmp[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_roundscale_pd
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_roundscale_pd(__m256d a, int imm8);

.. admonition:: Intel Description

    Round packed double-precision (64-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP64(src1[63:0], imm8[7:0]) {
        	m[63:0] := FP64(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[63:0] := POW(2.0, -m) * ROUND(POW(2.0, m) * src1[63:0], imm8[3:0])
        	IF IsInf(tmp[63:0])
        		tmp[63:0] := src1[63:0]
        	FI
        	RETURN tmp[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_roundscale_ps
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_mask_roundscale_ps(__m256 src, __mmask8 k,
                                     __m256 a, int imm8)

.. admonition:: Intel Description

    Round packed single-precision (32-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP32(src1[31:0], imm8[7:0]) {
        	m[31:0] := FP32(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[31:0] := POW(FP32(2.0), -m) * ROUND(POW(FP32(2.0), m) * src1[31:0], imm8[3:0])
        	IF IsInf(tmp[31:0])
        		tmp[31:0] := src1[31:0]
        	FI
        	RETURN tmp[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_roundscale_ps
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_maskz_roundscale_ps(__mmask8 k, __m256 a,
                                      int imm8)

.. admonition:: Intel Description

    Round packed single-precision (32-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP32(src1[31:0], imm8[7:0]) {
        	m[31:0] := FP32(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[31:0] := POW(FP32(2.0), -m) * ROUND(POW(FP32(2.0), m) * src1[31:0], imm8[3:0])
        	IF IsInf(tmp[31:0])
        		tmp[31:0] := src1[31:0]
        	FI
        	RETURN tmp[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_roundscale_ps
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_roundscale_ps(__m256 a, int imm8);

.. admonition:: Intel Description

    Round packed single-precision (32-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP32(src1[31:0], imm8[7:0]) {
        	m[31:0] := FP32(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[31:0] := POW(FP32(2.0), -m) * ROUND(POW(FP32(2.0), m) * src1[31:0], imm8[3:0])
        	IF IsInf(tmp[31:0])
        		tmp[31:0] := src1[31:0]
        	FI
        	RETURN tmp[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_scalef_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_scalef_pd(__m256d src, __mmask8 k,
                                  __m256d a, __m256d b)

.. admonition:: Intel Description

    Scale the packed double-precision (64-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE SCALE(src1, src2) {
        	IF (src2 == NaN)
        		IF (src2 == SNaN)
        			RETURN QNAN(src2)
        		FI
        	ELSE IF (src1 == NaN)
        		IF (src1 == SNaN)
        			RETURN QNAN(src1)
        		FI
        		IF (src2 != INF)
        			RETURN QNAN(src1)
        		FI
        	ELSE
        		tmp_src2 := src2
        		tmp_src1 := src1
        		IF (IS_DENORMAL(src2) AND MXCSR.DAZ)
        			tmp_src2 := 0
        		FI
        		IF (IS_DENORMAL(src1) AND MXCSR.DAZ)
        			tmp_src1 := 0
        		FI
        	FI
        	dst[63:0] := tmp_src1[63:0] * POW(2.0, FLOOR(tmp_src2[63:0]))
        	RETURN dst[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_scalef_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_maskz_scalef_pd(__mmask8 k, __m256d a,
                                   __m256d b)

.. admonition:: Intel Description

    Scale the packed double-precision (64-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE SCALE(src1, src2) {
        	IF (src2 == NaN)
        		IF (src2 == SNaN)
        			RETURN QNAN(src2)
        		FI
        	ELSE IF (src1 == NaN)
        		IF (src1 == SNaN)
        			RETURN QNAN(src1)
        		FI
        		IF (src2 != INF)
        			RETURN QNAN(src1)
        		FI
        	ELSE
        		tmp_src2 := src2
        		tmp_src1 := src1
        		IF (IS_DENORMAL(src2) AND MXCSR.DAZ)
        			tmp_src2 := 0
        		FI
        		IF (IS_DENORMAL(src1) AND MXCSR.DAZ)
        			tmp_src1 := 0
        		FI
        	FI
        	dst[63:0] := tmp_src1[63:0] * POW(2.0, FLOOR(tmp_src2[63:0]))
        	RETURN dst[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_scalef_pd
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_scalef_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Scale the packed double-precision (64-bit) floating-point elements in "a" using values from "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE SCALE(src1, src2) {
        	IF (src2 == NaN)
        		IF (src2 == SNaN)
        			RETURN QNAN(src2)
        		FI
        	ELSE IF (src1 == NaN)
        		IF (src1 == SNaN)
        			RETURN QNAN(src1)
        		FI
        		IF (src2 != INF)
        			RETURN QNAN(src1)
        		FI
        	ELSE
        		tmp_src2 := src2
        		tmp_src1 := src1
        		IF (IS_DENORMAL(src2) AND MXCSR.DAZ)
        			tmp_src2 := 0
        		FI
        		IF (IS_DENORMAL(src1) AND MXCSR.DAZ)
        			tmp_src1 := 0
        		FI
        	FI
        	dst[63:0] := tmp_src1[63:0] * POW(2.0, FLOOR(tmp_src2[63:0]))
        	RETURN dst[63:0]
        }
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_scalef_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_scalef_ps(__m256 src, __mmask8 k,
                                 __m256 a, __m256 b)

.. admonition:: Intel Description

    Scale the packed single-precision (32-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE SCALE(src1, src2) {
        	IF (src2 == NaN)
        		IF (src2 == SNaN)
        			RETURN QNAN(src2)
        		FI
        	ELSE IF (src1 == NaN)
        		IF (src1 == SNaN)
        			RETURN QNAN(src1)
        		FI
        		IF (src2 != INF)
        			RETURN QNAN(src1)
        		FI
        	ELSE
        		tmp_src2 := src2
        		tmp_src1 := src1
        		IF (IS_DENORMAL(src2) AND MXCSR.DAZ)
        			tmp_src2 := 0
        		FI
        		IF (IS_DENORMAL(src1) AND MXCSR.DAZ)
        			tmp_src1 := 0
        		FI
        	FI
        	dst[31:0] := tmp_src1[31:0] * POW(2.0, FLOOR(tmp_src2[31:0]))
        	RETURN dst[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_scalef_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_maskz_scalef_ps(__mmask8 k, __m256 a,
                                  __m256 b)

.. admonition:: Intel Description

    Scale the packed single-precision (32-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE SCALE(src1, src2) {
        	IF (src2 == NaN)
        		IF (src2 == SNaN)
        			RETURN QNAN(src2)
        		FI
        	ELSE IF (src1 == NaN)
        		IF (src1 == SNaN)
        			RETURN QNAN(src1)
        		FI
        		IF (src2 != INF)
        			RETURN QNAN(src1)
        		FI
        	ELSE
        		tmp_src2 := src2
        		tmp_src1 := src1
        		IF (IS_DENORMAL(src2) AND MXCSR.DAZ)
        			tmp_src2 := 0
        		FI
        		IF (IS_DENORMAL(src1) AND MXCSR.DAZ)
        			tmp_src1 := 0
        		FI
        	FI
        	dst[31:0] := tmp_src1[31:0] * POW(2.0, FLOOR(tmp_src2[31:0]))
        	RETURN dst[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_scalef_ps
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_scalef_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Scale the packed single-precision (32-bit) floating-point elements in "a" using values from "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE SCALE(src1, src2) {
        	IF (src2 == NaN)
        		IF (src2 == SNaN)
        			RETURN QNAN(src2)
        		FI
        	ELSE IF (src1 == NaN)
        		IF (src1 == SNaN)
        			RETURN QNAN(src1)
        		FI
        		IF (src2 != INF)
        			RETURN QNAN(src1)
        		FI
        	ELSE
        		tmp_src2 := src2
        		tmp_src1 := src1
        		IF (IS_DENORMAL(src2) AND MXCSR.DAZ)
        			tmp_src2 := 0
        		FI
        		IF (IS_DENORMAL(src1) AND MXCSR.DAZ)
        			tmp_src1 := 0
        		FI
        	FI
        	dst[31:0] := tmp_src1[31:0] * POW(2.0, FLOOR(tmp_src2[31:0]))
        	RETURN dst[31:0]
        }
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_shuffle_f32x4
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b, 
    const int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_mask_shuffle_f32x4(__m256 src, __mmask8 k,
                                     __m256 a, __m256 b,
                                     const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 single-precision (32-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst.m128[0] := a.m128[imm8[0]]
        tmp_dst.m128[1] := b.m128[imm8[1]]
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shuffle_f32x4
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_maskz_shuffle_f32x4(__mmask8 k, __m256 a,
                                      __m256 b, const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 single-precision (32-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst.m128[0] := a.m128[imm8[0]]
        tmp_dst.m128[1] := b.m128[imm8[1]]
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_shuffle_f32x4
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
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

    __m256 _mm256_shuffle_f32x4(__m256 a, __m256 b,
                                const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 single-precision (32-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.m128[0] := a.m128[imm8[0]]
        dst.m128[1] := b.m128[imm8[1]]
        dst[MAX:256] := 0
        	

_mm256_mask_shuffle_f64x2
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b, 
    const int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_shuffle_f64x2(__m256d src, __mmask8 k,
                                      __m256d a, __m256d b,
                                      const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 double-precision (64-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst.m128[0] := a.m128[imm8[0]]
        tmp_dst.m128[1] := b.m128[imm8[1]]
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shuffle_f64x2
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_shuffle_f64x2(__mmask8 k, __m256d a,
                                       __m256d b,
                                       const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 double-precision (64-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst.m128[0] := a.m128[imm8[0]]
        tmp_dst.m128[1] := b.m128[imm8[1]]
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_shuffle_f64x2
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
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

    __m256d _mm256_shuffle_f64x2(__m256d a, __m256d b,
                                 const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 double-precision (64-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.m128[0] := a.m128[imm8[0]]
        dst.m128[1] := b.m128[imm8[1]]
        dst[MAX:256] := 0
        	

_mm256_mask_shuffle_i32x4
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_shuffle_i32x4(__m256i src, __mmask8 k,
                                      __m256i a, __m256i b,
                                      const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 32-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst.m128[0] := a.m128[imm8[0]]
        tmp_dst.m128[1] := b.m128[imm8[1]]
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shuffle_i32x4
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_shuffle_i32x4(__mmask8 k, __m256i a,
                                       __m256i b,
                                       const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 32-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst.m128[0] := a.m128[imm8[0]]
        tmp_dst.m128[1] := b.m128[imm8[1]]
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_shuffle_i32x4
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_shuffle_i32x4(__m256i a, __m256i b,
                                 const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 32-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.m128[0] := a.m128[imm8[0]]
        dst.m128[1] := b.m128[imm8[1]]
        dst[MAX:256] := 0
        	

_mm256_mask_shuffle_i64x2
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_shuffle_i64x2(__m256i src, __mmask8 k,
                                      __m256i a, __m256i b,
                                      const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 64-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst.m128[0] := a.m128[imm8[0]]
        tmp_dst.m128[1] := b.m128[imm8[1]]
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shuffle_i64x2
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_shuffle_i64x2(__mmask8 k, __m256i a,
                                       __m256i b,
                                       const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 64-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst.m128[0] := a.m128[imm8[0]]
        tmp_dst.m128[1] := b.m128[imm8[1]]
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_shuffle_i64x2
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    const int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_shuffle_i64x2(__m256i a, __m256i b,
                                 const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 64-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.m128[0] := a.m128[imm8[0]]
        dst.m128[1] := b.m128[imm8[1]]
        dst[MAX:256] := 0
        	

_mm256_mask_shuffle_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b, 
    const int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_mask_shuffle_pd(__m256d src, __mmask8 k,
                                   __m256d a, __m256d b,
                                   const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements within 128-bit lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[63:0] := (imm8[0] == 0) ? a[63:0] : a[127:64]
        tmp_dst[127:64] := (imm8[1] == 0) ? b[63:0] : b[127:64]
        tmp_dst[191:128] := (imm8[2] == 0) ? a[191:128] : a[255:192]
        tmp_dst[255:192] := (imm8[3] == 0) ? b[191:128] : b[255:192]
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shuffle_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m256d _mm256_maskz_shuffle_pd(__mmask8 k, __m256d a,
                                    __m256d b, const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements within 128-bit lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[63:0] := (imm8[0] == 0) ? a[63:0] : a[127:64]
        tmp_dst[127:64] := (imm8[1] == 0) ? b[63:0] : b[127:64]
        tmp_dst[191:128] := (imm8[2] == 0) ? a[191:128] : a[255:192]
        tmp_dst[255:192] := (imm8[3] == 0) ? b[191:128] : b[255:192]
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_shuffle_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b, 
    const int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_mask_shuffle_ps(__m256 src, __mmask8 k,
                                  __m256 a, __m256 b,
                                  const int imm8)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[31:0] := src[31:0]
        	1:	tmp[31:0] := src[63:32]
        	2:	tmp[31:0] := src[95:64]
        	3:	tmp[31:0] := src[127:96]
        	ESAC
        	RETURN tmp[31:0]
        }
        tmp_dst[31:0] := SELECT4(a[127:0], imm8[1:0])
        tmp_dst[63:32] := SELECT4(a[127:0], imm8[3:2])
        tmp_dst[95:64] := SELECT4(b[127:0], imm8[5:4])
        tmp_dst[127:96] := SELECT4(b[127:0], imm8[7:6])
        tmp_dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        tmp_dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        tmp_dst[223:192] := SELECT4(b[255:128], imm8[5:4])
        tmp_dst[255:224] := SELECT4(b[255:128], imm8[7:6])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_shuffle_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m256 _mm256_maskz_shuffle_ps(__mmask8 k, __m256 a,
                                   __m256 b, const int imm8)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[31:0] := src[31:0]
        	1:	tmp[31:0] := src[63:32]
        	2:	tmp[31:0] := src[95:64]
        	3:	tmp[31:0] := src[127:96]
        	ESAC
        	RETURN tmp[31:0]
        }
        tmp_dst[31:0] := SELECT4(a[127:0], imm8[1:0])
        tmp_dst[63:32] := SELECT4(a[127:0], imm8[3:2])
        tmp_dst[95:64] := SELECT4(b[127:0], imm8[5:4])
        tmp_dst[127:96] := SELECT4(b[127:0], imm8[7:6])
        tmp_dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        tmp_dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        tmp_dst[223:192] := SELECT4(b[255:128], imm8[5:4])
        tmp_dst[255:224] := SELECT4(b[255:128], imm8[7:6])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpackhi_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_unpackhi_pd(__m256d src, __mmask8 k,
                                    __m256d a, __m256d b)

.. admonition:: Intel Description

    Unpack and interleave double-precision (64-bit) floating-point elements from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[127:64] 
        	dst[127:64] := src2[127:64] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_QWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_QWORDS(a[255:128], b[255:128])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpackhi_pd
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_maskz_unpackhi_pd(__mmask8 k, __m256d a,
                                     __m256d b)

.. admonition:: Intel Description

    Unpack and interleave double-precision (64-bit) floating-point elements from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[127:64] 
        	dst[127:64] := src2[127:64] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_QWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_QWORDS(a[255:128], b[255:128])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpackhi_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_unpackhi_ps(__m256 src, __mmask8 k,
                                   __m256 a, __m256 b)

.. admonition:: Intel Description

    Unpack and interleave single-precision (32-bit) floating-point elements from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[95:64] 
        	dst[63:32] := src2[95:64] 
        	dst[95:64] := src1[127:96] 
        	dst[127:96] := src2[127:96] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_DWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_DWORDS(a[255:128], b[255:128])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpackhi_ps
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_maskz_unpackhi_ps(__mmask8 k, __m256 a,
                                    __m256 b)

.. admonition:: Intel Description

    Unpack and interleave single-precision (32-bit) floating-point elements from the high half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[95:64] 
        	dst[63:32] := src2[95:64] 
        	dst[95:64] := src1[127:96] 
        	dst[127:96] := src2[127:96] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_HIGH_DWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_HIGH_DWORDS(a[255:128], b[255:128])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpacklo_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_unpacklo_pd(__m256d src, __mmask8 k,
                                    __m256d a, __m256d b)

.. admonition:: Intel Description

    Unpack and interleave double-precision (64-bit) floating-point elements from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[63:0] 
        	dst[127:64] := src2[63:0] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_QWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_QWORDS(a[255:128], b[255:128])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpacklo_pd
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_maskz_unpacklo_pd(__mmask8 k, __m256d a,
                                     __m256d b)

.. admonition:: Intel Description

    Unpack and interleave double-precision (64-bit) floating-point elements from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[63:0] 
        	dst[127:64] := src2[63:0] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_QWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_QWORDS(a[255:128], b[255:128])
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_unpacklo_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_unpacklo_ps(__m256 src, __mmask8 k,
                                   __m256 a, __m256 b)

.. admonition:: Intel Description

    Unpack and interleave single-precision (32-bit) floating-point elements from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[31:0] 
        	dst[63:32] := src2[31:0] 
        	dst[95:64] := src1[63:32] 
        	dst[127:96] := src2[63:32] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_DWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_DWORDS(a[255:128], b[255:128])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_unpacklo_ps
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_maskz_unpacklo_ps(__mmask8 k, __m256 a,
                                    __m256 b)

.. admonition:: Intel Description

    Unpack and interleave single-precision (32-bit) floating-point elements from the low half of each 128-bit lane in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[31:0] 
        	dst[63:32] := src2[31:0] 
        	dst[95:64] := src1[63:32] 
        	dst[127:96] := src2[63:32] 
        	RETURN dst[127:0]
        }
        tmp_dst[127:0] := INTERLEAVE_DWORDS(a[127:0], b[127:0])
        tmp_dst[255:128] := INTERLEAVE_DWORDS(a[255:128], b[255:128])
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_roundscale_ph
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a, 
    int imm8
:Param ETypes:
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m256h _mm256_roundscale_ph(__m256h a, int imm8);

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP16(src.fp16, imm8[7:0]) {
        	m.fp16 := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp.fp16 := POW(FP16(2.0), -m) * ROUND(POW(FP16(2.0), m) * src.fp16, imm8[3:0])
        	RETURN tmp.fp16
        }
        FOR i := 0 to 15
        	dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        ENDFOR
        dest[MAX:256] := 0
        	

_mm256_mask_roundscale_ph
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m256h a, 
    int imm8
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m256h _mm256_mask_roundscale_ph(__m256h src, __mmask16 k,
                                      __m256h a, int imm8)

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP16(src.fp16, imm8[7:0]) {
        	m.fp16 := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp.fp16 := POW(FP16(2.0), -m) * ROUND(POW(FP16(2.0), m) * src.fp16, imm8[3:0])
        	RETURN tmp.fp16
        }
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dest[MAX:256] := 0
        	

_mm256_maskz_roundscale_ph
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m256h a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m256h _mm256_maskz_roundscale_ph(__mmask16 k, __m256h a,
                                       int imm8)

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP16(src.fp16, imm8[7:0]) {
        	m.fp16 := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp.fp16 := POW(FP16(2.0), -m) * ROUND(POW(FP16(2.0), m) * src.fp16, imm8[3:0])
        	RETURN tmp.fp16
        }
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dest[MAX:256] := 0
        	

_mm256_getexp_ph
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_getexp_ph(__m256h a);

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 15
        	dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_getexp_ph
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m256h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m256h _mm256_mask_getexp_ph(__m256h src, __mmask16 k,
                                  __m256h a)

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_getexp_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m256h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m256h _mm256_maskz_getexp_ph(__mmask16 k, __m256h a);

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_getmant_ph
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign
:Param ETypes:
    FP16 a, 
    IMM norm, 
    IMM sign

.. code-block:: C

    __m256h _mm256_getmant_ph(__m256h a,
                              _MM_MANTISSA_NORM_ENUM norm,
                              _MM_MANTISSA_SIGN_ENUM sign)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    		[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 15
        	dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_getmant_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m256h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM norm, 
    IMM sign

.. code-block:: C

    __m256h _mm256_mask_getmant_ph(__m256h src, __mmask16 k,
                                   __m256h a,
                                   _MM_MANTISSA_NORM_ENUM norm,
                                   _MM_MANTISSA_SIGN_ENUM sign)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    		[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 15
        	IF k[i]
        		dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_getmant_ph
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m256h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM norm, 
    IMM sign

.. code-block:: C

    __m256h _mm256_maskz_getmant_ph(
        __mmask16 k, __m256h a, _MM_MANTISSA_NORM_ENUM norm,
        _MM_MANTISSA_SIGN_ENUM sign)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    		[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 15
        	IF k[i]
        		dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_reduce_ph
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a, 
    int imm8
:Param ETypes:
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m256h _mm256_reduce_ph(__m256h a, int imm8);

.. admonition:: Intel Description

    Extract the reduced argument of packed half-precision (16-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        FOR i := 0 to 15
        	dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_reduce_ph
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m256h a, 
    int imm8
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m256h _mm256_mask_reduce_ph(__m256h src, __mmask16 k,
                                  __m256h a, int imm8)

.. admonition:: Intel Description

    Extract the reduced argument of packed half-precision (16-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_reduce_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m256h a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m256h _mm256_maskz_reduce_ph(__mmask16 k, __m256h a,
                                   int imm8)

.. admonition:: Intel Description

    Extract the reduced argument of packed half-precision (16-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE ReduceArgumentFP16(src[15:0], imm8[7:0]) {
        	m[15:0] := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp[15:0] := POW(2.0, FP16(-m)) * ROUND(POW(2.0, FP16(m)) * src[15:0], imm8[3:0])
        	tmp[15:0] := src[15:0] - tmp[15:0]
        	IF IsInf(tmp[15:0])
        		tmp[15:0] := FP16(0.0)
        	FI
        	RETURN tmp[15:0]
        }
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_scalef_ph
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a, 
    __m256h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_scalef_ph(__m256h a, __m256h b);

.. admonition:: Intel Description

    Scale the packed half-precision (16-bit) floating-point elements in "a" using values from "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE ScaleFP16(src1, src2) {
        	denormal1 := (a.exp == 0) and (a.fraction != 0)
        	denormal2 := (b.exp == 0) and (b.fraction != 0)
        	tmp1 := src1
        	tmp2 := src2
        	IF MXCSR.DAZ
        		IF denormal1
        			tmp1 := 0
        		FI
        		IF denormal2
        			tmp2 := 0
        		FI
        	FI
        	RETURN tmp1 * POW(2.0, FLOOR(tmp2))
        }
        FOR i := 0 to 15
        	dst.fp16[i] := ScaleFP16(a.fp16[i], b.fp16[i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_scalef_ph
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h src, 
    __mmask16 k, 
    __m256h a, 
    __m256h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_mask_scalef_ph(__m256h src, __mmask16 k,
                                  __m256h a, __m256h b)

.. admonition:: Intel Description

    Scale the packed half-precision (16-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE ScaleFP16(src1, src2) {
        	denormal1 := (a.exp == 0) and (a.fraction != 0)
        	denormal2 := (b.exp == 0) and (b.fraction != 0)
        	tmp1 := src1
        	tmp2 := src2
        	IF MXCSR.DAZ
        		IF denormal1
        			tmp1 := 0
        		FI
        		IF denormal2
        			tmp2 := 0
        		FI
        	FI
        	RETURN tmp1 * POW(2.0, FLOOR(tmp2))
        }
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[i] := ScaleFP16(a.fp16[i], b.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_scalef_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m256h a, 
    __m256h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_maskz_scalef_ph(__mmask16 k, __m256h a,
                                   __m256h b)

.. admonition:: Intel Description

    Scale the packed half-precision (16-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEFINE ScaleFP16(src1, src2) {
        	denormal1 := (a.exp == 0) and (a.fraction != 0)
        	denormal2 := (b.exp == 0) and (b.fraction != 0)
        	tmp1 := src1
        	tmp2 := src2
        	IF MXCSR.DAZ
        		IF denormal1
        			tmp1 := 0
        		FI
        		IF denormal2
        			tmp2 := 0
        		FI
        	FI
        	RETURN tmp1 * POW(2.0, FLOOR(tmp2))
        }
        FOR i := 0 to 15
        	IF k[i]
        		dst.fp16[i] := ScaleFP16(a.fp16[i], b.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_fpclass_ph_mask
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __m256h a, 
    int imm8
:Param ETypes:
    FP16 a, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm256_fpclass_ph_mask(__m256h a, int imm8);

.. admonition:: Intel Description

    Test packed half-precision (16-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k".
    			[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 15
        	k[i] := CheckFPClass_FP16(a.fp16[i], imm8[7:0])
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_mask_fpclass_ph_mask
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m256h a, 
    int imm8
:Param ETypes:
    MASK k1, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm256_mask_fpclass_ph_mask(__mmask16 k1,
                                          __m256h a, int imm8)

.. admonition:: Intel Description

    Test packed half-precision (16-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).
    		[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 15
        	IF k1[i]
        		k[i] := CheckFPClass_FP16(a.fp16[i], imm8[7:0])
        	ELSE
        		k[i] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm256_permutex2var_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256h a, 
    __m256i idx, 
    __m256h b
:Param ETypes:
    FP16 a, 
    UI16 idx, 
    FP16 b

.. code-block:: C

    __m256h _mm256_permutex2var_ph(__m256h a, __m256i idx,
                                   __m256h b)

.. admonition:: Intel Description

    Shuffle half-precision (16-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	off := idx[i+3:i]
        	dst.fp16[j] := idx[i+4] ? b.fp16[off] : a.fp16[off]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_blend_ph
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __mmask16 k, 
    __m256h a, 
    __m256h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m256h _mm256_mask_blend_ph(__mmask16 k, __m256h a,
                                 __m256h b)

.. admonition:: Intel Description

    Blend packed half-precision (16-bit) floating-point elements from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	IF k[j]
        		dst.fp16[j] := b.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_permutexvar_ph
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    __m256i idx, 
    __m256h a
:Param ETypes:
    UI16 idx, 
    FP16 a

.. code-block:: C

    __m256h _mm256_permutexvar_ph(__m256i idx, __m256h a);

.. admonition:: Intel Description

    Shuffle half-precision (16-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	id := idx[i+3:i]
        	dst.fp16[j] := a.fp16[id]
        ENDFOR
        dst[MAX:256] := 0
        	

