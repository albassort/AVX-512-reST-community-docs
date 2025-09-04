AVX-512-Miscellaneous-ZMM
=========================

_mm512_kunpackd
---------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask64
:Param Types:
    __mmask64 a, 
    __mmask64 b
:Param ETypes:
    MASK a, 
    MASK b

.. code-block:: C

    __mmask64 _mm512_kunpackd(__mmask64 a, __mmask64 b);

.. admonition:: Intel Description

    Unpack and interleave 32 bits from masks "a" and "b", and store the 64-bit result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := b[31:0]
        dst[63:32] := a[31:0]
        dst[MAX:64] := 0
        	

_mm512_kunpackw
---------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 a, 
    __mmask32 b
:Param ETypes:
    MASK a, 
    MASK b

.. code-block:: C

    __mmask32 _mm512_kunpackw(__mmask32 a, __mmask32 b);

.. admonition:: Intel Description

    Unpack and interleave 16 bits from masks "a" and "b", and store the 32-bit result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := b[15:0]
        dst[31:16] := a[15:0]
        dst[MAX:32] := 0
        	

_mm512_dbsad_epu8
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_dbsad_epu8(__m512i a, __m512i b, int imm8);

.. admonition:: Intel Description

    Compute the sum of absolute differences (SADs) of quadruplets of unsigned 8-bit integers in "a" compared to those in "b", and store the 16-bit results in "dst".
    	Four SADs are performed on four 8-bit quadruplets for each 64-bit lane. The first two SADs use the lower 8-bit quadruplet of the lane from "a", and the last two SADs use the uppper 8-bit quadruplet of the lane from "a". Quadruplets from "b" are selected from within 128-bit lanes according to the control in "imm8", and each SAD in each 64-bit lane uses the selected quadruplet at 8-bit offsets.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 3
        	tmp.m128[i].dword[0] := b.m128[i].dword[ imm8[1:0] ]
        	tmp.m128[i].dword[1] := b.m128[i].dword[ imm8[3:2] ]
        	tmp.m128[i].dword[2] := b.m128[i].dword[ imm8[5:4] ]
        	tmp.m128[i].dword[3] := b.m128[i].dword[ imm8[7:6] ]
        ENDFOR
        FOR j := 0 to 7
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
        dst[MAX:512] := 0
        	

_mm512_mask_dbsad_epu8
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_dbsad_epu8(__m512i src, __mmask32 k,
                                   __m512i a, __m512i b,
                                   int imm8)

.. admonition:: Intel Description

    Compute the sum of absolute differences (SADs) of quadruplets of unsigned 8-bit integers in "a" compared to those in "b", and store the 16-bit results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	Four SADs are performed on four 8-bit quadruplets for each 64-bit lane. The first two SADs use the lower 8-bit quadruplet of the lane from "a", and the last two SADs use the uppper 8-bit quadruplet of the lane from "a". Quadruplets from "b" are selected from within 128-bit lanes according to the control in "imm8", and each SAD in each 64-bit lane uses the selected quadruplet at 8-bit offsets.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 3
        	tmp.m128[i].dword[0] := b.m128[i].dword[ imm8[1:0] ]
        	tmp.m128[i].dword[1] := b.m128[i].dword[ imm8[3:2] ]
        	tmp.m128[i].dword[2] := b.m128[i].dword[ imm8[5:4] ]
        	tmp.m128[i].dword[3] := b.m128[i].dword[ imm8[7:6] ]
        ENDFOR
        FOR j := 0 to 7
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
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_dbsad_epu8
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_dbsad_epu8(__mmask32 k, __m512i a,
                                    __m512i b, int imm8)

.. admonition:: Intel Description

    Compute the sum of absolute differences (SADs) of quadruplets of unsigned 8-bit integers in "a" compared to those in "b", and store the 16-bit results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	Four SADs are performed on four 8-bit quadruplets for each 64-bit lane. The first two SADs use the lower 8-bit quadruplet of the lane from "a", and the last two SADs use the uppper 8-bit quadruplet of the lane from "a". Quadruplets from "b" are selected from within 128-bit lanes according to the control in "imm8", and each SAD in each 64-bit lane uses the selected quadruplet at 8-bit offsets.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 3
        	tmp.m128[i].dword[0] := b.m128[i].dword[ imm8[1:0] ]
        	tmp.m128[i].dword[1] := b.m128[i].dword[ imm8[3:2] ]
        	tmp.m128[i].dword[2] := b.m128[i].dword[ imm8[5:4] ]
        	tmp.m128[i].dword[3] := b.m128[i].dword[ imm8[7:6] ]
        ENDFOR
        FOR j := 0 to 7
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
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_alignr_epi8
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_alignr_epi8(__m512i a, __m512i b,
                               const int imm8)

.. admonition:: Intel Description

    Concatenate pairs of 16-byte blocks in "a" and "b" into a 32-byte temporary result, shift the result right by "imm8" bytes, and store the low 16 bytes in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*128
        	tmp[255:0] := ((a[i+127:i] << 128)[255:0] OR b[i+127:i]) >> (imm8*8)
        	dst[i+127:i] := tmp[127:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_alignr_epi8
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_alignr_epi8(__m512i src, __mmask64 k,
                                    __m512i a, __m512i b,
                                    const int imm8)

.. admonition:: Intel Description

    Concatenate pairs of 16-byte blocks in "a" and "b" into a 32-byte temporary result, shift the result right by "imm8" bytes, and store the low 16 bytes in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*128
        	tmp[255:0] := ((a[i+127:i] << 128)[255:0] OR b[i+127:i]) >> (imm8*8)
        	tmp_dst[i+127:i] := tmp[127:0]
        ENDFOR
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_alignr_epi8
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_alignr_epi8(__mmask64 k, __m512i a,
                                     __m512i b, const int imm8)

.. admonition:: Intel Description

    Concatenate pairs of 16-byte blocks in "a" and "b" into a 32-byte temporary result, shift the result right by "imm8" bytes, and store the low 16 bytes in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*128
        	tmp[255:0] := ((a[i+127:i] << 128)[255:0] OR b[i+127:i]) >> (imm8*8)
        	tmp_dst[i+127:i] := tmp[127:0]
        ENDFOR
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_blend_epi8
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_mask_blend_epi8(__mmask64 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Blend packed 8-bit integers from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := b[i+7:i]
        	ELSE
        		dst[i+7:i] := a[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_blend_epi16
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_blend_epi16(__mmask32 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Blend packed 16-bit integers from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := b[i+15:i]
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcastb_epi8
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m512i _mm512_broadcastb_epi8(__m128i a);

.. admonition:: Intel Description

    Broadcast the low packed 8-bit integer from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	dst[i+7:i] := a[7:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcastb_epi8
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_mask_broadcastb_epi8(__m512i src,
                                        __mmask64 k, __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 8-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[7:0]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcastb_epi8
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_maskz_broadcastb_epi8(__mmask64 k,
                                         __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 8-bit integer from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[7:0]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcastw_epi16
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m512i _mm512_broadcastw_epi16(__m128i a);

.. admonition:: Intel Description

    Broadcast the low packed 16-bit integer from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := a[15:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcastw_epi16
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_mask_broadcastw_epi16(__m512i src,
                                         __mmask32 k,
                                         __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 16-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[15:0]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcastw_epi16
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_maskz_broadcastw_epi16(__mmask32 k,
                                          __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 16-bit integer from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[15:0]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask2_permutex2var_epi16
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i idx, 
    __mmask32 k, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 idx, 
    MASK k, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask2_permutex2var_epi16(__m512i a,
                                            __m512i idx,
                                            __mmask32 k,
                                            __m512i b)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		off := 16*idx[i+4:i]
        		dst[i+15:i] := idx[i+5] ? b[off+15:off] : a[off+15:off]
        	ELSE
        		dst[i+15:i] := idx[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutex2var_epi16
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask32 k, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    UI16 a, 
    MASK k, 
    UI16 idx, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_permutex2var_epi16(__m512i a,
                                           __mmask32 k,
                                           __m512i idx,
                                           __m512i b)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		off := 16*idx[i+4:i]
        		dst[i+15:i] := idx[i+5] ? b[off+15:off] : a[off+15:off]
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutex2var_epi16
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 idx, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_permutex2var_epi16(__mmask32 k,
                                            __m512i a,
                                            __m512i idx,
                                            __m512i b)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		off := 16*idx[i+4:i]
        		dst[i+15:i] := idx[i+5] ? b[off+15:off] : a[off+15:off]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutex2var_epi16
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 idx, 
    UI16 b

.. code-block:: C

    __m512i _mm512_permutex2var_epi16(__m512i a, __m512i idx,
                                      __m512i b)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	off := 16*idx[i+4:i]
        	dst[i+15:i] := idx[i+5] ? b[off+15:off] : a[off+15:off]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutexvar_epi16
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 idx, 
    UI16 a

.. code-block:: C

    __m512i _mm512_mask_permutexvar_epi16(__m512i src,
                                          __mmask32 k,
                                          __m512i idx,
                                          __m512i a)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	id := idx[i+4:i]*16
        	IF k[j]
        		dst[i+15:i] := a[id+15:id]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutexvar_epi16
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI16 idx, 
    UI16 a

.. code-block:: C

    __m512i _mm512_maskz_permutexvar_epi16(__mmask32 k,
                                           __m512i idx,
                                           __m512i a)

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	id := idx[i+4:i]*16
        	IF k[j]
        		dst[i+15:i] := a[id+15:id]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutexvar_epi16
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI16 idx, 
    UI16 a

.. code-block:: C

    __m512i _mm512_permutexvar_epi16(__m512i idx, __m512i a);

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	id := idx[i+4:i]*16
        	dst[i+15:i] := a[id+15:id]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_movepi8_mask
-------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask64
:Param Types:
    __m512i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __mmask64 _mm512_movepi8_mask(__m512i a);

.. admonition:: Intel Description

    Set each bit of mask register "k" based on the most significant bit of the corresponding packed 8-bit integer in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF a[i+7]
        		k[j] := 1
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:64] := 0
        	

_mm512_movm_epi8
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m512i _mm512_movm_epi8(__mmask64 k);

.. admonition:: Intel Description

    Set each packed 8-bit integer in "dst" to all ones or all zeros based on the value of the corresponding bit in "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := 0xFF
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_movm_epi16
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m512i _mm512_movm_epi16(__mmask32 k);

.. admonition:: Intel Description

    Set each packed 16-bit integer in "dst" to all ones or all zeros based on the value of the corresponding bit in "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := 0xFFFF
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_movepi16_mask
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask32
:Param Types:
    __m512i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __mmask32 _mm512_movepi16_mask(__m512i a);

.. admonition:: Intel Description

    Set each bit of mask register "k" based on the most significant bit of the corresponding packed 16-bit integer in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF a[i+15]
        		k[j] := 1
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm512_sad_epu8
---------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_sad_epu8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the absolute differences of packed unsigned 8-bit integers in "a" and "b", then horizontally sum each consecutive 8 differences to produce eight unsigned 16-bit integers, and pack these unsigned 16-bit integers in the low 16 bits of 64-bit elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	tmp[i+7:i] := ABS(a[i+7:i] - b[i+7:i])
        ENDFOR
        FOR j := 0 to 7
        	i := j*64
        	dst[i+15:i] := tmp[i+7:i] + tmp[i+15:i+8] + tmp[i+23:i+16] + tmp[i+31:i+24] + \
        	               tmp[i+39:i+32] + tmp[i+47:i+40] + tmp[i+55:i+48] + tmp[i+63:i+56]
        	dst[i+63:i+16] := 0
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shufflehi_epi16
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shufflehi_epi16(__m512i src,
                                        __mmask32 k, __m512i a,
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
        tmp_dst[319:256] := a[319:256]
        tmp_dst[335:320] := (a >> (imm8[1:0] * 16))[335:320]
        tmp_dst[351:336] := (a >> (imm8[3:2] * 16))[335:320]
        tmp_dst[367:352] := (a >> (imm8[5:4] * 16))[335:320]
        tmp_dst[383:368] := (a >> (imm8[7:6] * 16))[335:320]
        tmp_dst[447:384] := a[447:384]
        tmp_dst[463:448] := (a >> (imm8[1:0] * 16))[463:448]
        tmp_dst[479:464] := (a >> (imm8[3:2] * 16))[463:448]
        tmp_dst[495:480] := (a >> (imm8[5:4] * 16))[463:448]
        tmp_dst[511:496] := (a >> (imm8[7:6] * 16))[463:448]
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shufflehi_epi16
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shufflehi_epi16(__mmask32 k, __m512i a,
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
        tmp_dst[319:256] := a[319:256]
        tmp_dst[335:320] := (a >> (imm8[1:0] * 16))[335:320]
        tmp_dst[351:336] := (a >> (imm8[3:2] * 16))[335:320]
        tmp_dst[367:352] := (a >> (imm8[5:4] * 16))[335:320]
        tmp_dst[383:368] := (a >> (imm8[7:6] * 16))[335:320]
        tmp_dst[447:384] := a[447:384]
        tmp_dst[463:448] := (a >> (imm8[1:0] * 16))[463:448]
        tmp_dst[479:464] := (a >> (imm8[3:2] * 16))[463:448]
        tmp_dst[495:480] := (a >> (imm8[5:4] * 16))[463:448]
        tmp_dst[511:496] := (a >> (imm8[7:6] * 16))[463:448]
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shufflehi_epi16
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shufflehi_epi16(__m512i a, int imm8);

.. admonition:: Intel Description

    Shuffle 16-bit integers in the high 64 bits of 128-bit lanes of "a" using the control in "imm8". Store the results in the high 64 bits of 128-bit lanes of "dst", with the low 64 bits of 128-bit lanes being copied from from "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[79:64] := (a >> (imm8[1:0] * 16))[79:64]
        dst[95:80] := (a >> (imm8[3:2] * 16))[79:64]
        dst[111:96] := (a >> (imm8[5:4] * 16))[79:64]
        dst[127:112] := (a >> (imm8[7:6] * 16))[79:64]
        dst[191:128] := a[191:128]
        dst[207:192] := (a >> (imm8[1:0] * 16))[207:192]
        dst[223:208] := (a >> (imm8[3:2] * 16))[207:192]
        dst[239:224] := (a >> (imm8[5:4] * 16))[207:192]
        dst[255:240] := (a >> (imm8[7:6] * 16))[207:192]
        dst[319:256] := a[319:256]
        dst[335:320] := (a >> (imm8[1:0] * 16))[335:320]
        dst[351:336] := (a >> (imm8[3:2] * 16))[335:320]
        dst[367:352] := (a >> (imm8[5:4] * 16))[335:320]
        dst[383:368] := (a >> (imm8[7:6] * 16))[335:320]
        dst[447:384] := a[447:384]
        dst[463:448] := (a >> (imm8[1:0] * 16))[463:448]
        dst[479:464] := (a >> (imm8[3:2] * 16))[463:448]
        dst[495:480] := (a >> (imm8[5:4] * 16))[463:448]
        dst[511:496] := (a >> (imm8[7:6] * 16))[463:448]
        dst[MAX:512] := 0
        	

_mm512_mask_shufflelo_epi16
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shufflelo_epi16(__m512i src,
                                        __mmask32 k, __m512i a,
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
        tmp_dst[271:256] := (a >> (imm8[1:0] * 16))[271:256]
        tmp_dst[287:272] := (a >> (imm8[3:2] * 16))[271:256]
        tmp_dst[303:288] := (a >> (imm8[5:4] * 16))[271:256]
        tmp_dst[319:304] := (a >> (imm8[7:6] * 16))[271:256]
        tmp_dst[383:320] := a[383:320]
        tmp_dst[399:384] := (a >> (imm8[1:0] * 16))[399:384]
        tmp_dst[415:400] := (a >> (imm8[3:2] * 16))[399:384]
        tmp_dst[431:416] := (a >> (imm8[5:4] * 16))[399:384]
        tmp_dst[447:432] := (a >> (imm8[7:6] * 16))[399:384]
        tmp_dst[511:448] := a[511:448]
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shufflelo_epi16
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shufflelo_epi16(__mmask32 k, __m512i a,
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
        tmp_dst[271:256] := (a >> (imm8[1:0] * 16))[271:256]
        tmp_dst[287:272] := (a >> (imm8[3:2] * 16))[271:256]
        tmp_dst[303:288] := (a >> (imm8[5:4] * 16))[271:256]
        tmp_dst[319:304] := (a >> (imm8[7:6] * 16))[271:256]
        tmp_dst[383:320] := a[383:320]
        tmp_dst[399:384] := (a >> (imm8[1:0] * 16))[399:384]
        tmp_dst[415:400] := (a >> (imm8[3:2] * 16))[399:384]
        tmp_dst[431:416] := (a >> (imm8[5:4] * 16))[399:384]
        tmp_dst[447:432] := (a >> (imm8[7:6] * 16))[399:384]
        tmp_dst[511:448] := a[511:448]
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shufflelo_epi16
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shufflelo_epi16(__m512i a, int imm8);

.. admonition:: Intel Description

    Shuffle 16-bit integers in the low 64 bits of 128-bit lanes of "a" using the control in "imm8". Store the results in the low 64 bits of 128-bit lanes of "dst", with the high 64 bits of 128-bit lanes being copied from from "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := (a >> (imm8[1:0] * 16))[15:0]
        dst[31:16] := (a >> (imm8[3:2] * 16))[15:0]
        dst[47:32] := (a >> (imm8[5:4] * 16))[15:0]
        dst[63:48] := (a >> (imm8[7:6] * 16))[15:0]
        dst[127:64] := a[127:64]
        dst[143:128] := (a >> (imm8[1:0] * 16))[143:128]
        dst[159:144] := (a >> (imm8[3:2] * 16))[143:128]
        dst[175:160] := (a >> (imm8[5:4] * 16))[143:128]
        dst[191:176] := (a >> (imm8[7:6] * 16))[143:128]
        dst[255:192] := a[255:192]
        dst[271:256] := (a >> (imm8[1:0] * 16))[271:256]
        dst[287:272] := (a >> (imm8[3:2] * 16))[271:256]
        dst[303:288] := (a >> (imm8[5:4] * 16))[271:256]
        dst[319:304] := (a >> (imm8[7:6] * 16))[271:256]
        dst[383:320] := a[383:320]
        dst[399:384] := (a >> (imm8[1:0] * 16))[399:384]
        dst[415:400] := (a >> (imm8[3:2] * 16))[399:384]
        dst[431:416] := (a >> (imm8[5:4] * 16))[399:384]
        dst[447:432] := (a >> (imm8[7:6] * 16))[399:384]
        dst[511:448] := a[511:448]
        dst[MAX:512] := 0
        	

_mm512_mask_unpackhi_epi8
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_mask_unpackhi_epi8(__m512i src, __mmask64 k,
                                      __m512i a, __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_BYTES(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_BYTES(a[511:384], b[511:384])
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpackhi_epi8
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_maskz_unpackhi_epi8(__mmask64 k, __m512i a,
                                       __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_BYTES(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_BYTES(a[511:384], b[511:384])
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpackhi_epi8
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_unpackhi_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst".

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
        dst[127:0] := INTERLEAVE_HIGH_BYTES(a[127:0], b[127:0])
        dst[255:128] := INTERLEAVE_HIGH_BYTES(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_HIGH_BYTES(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_HIGH_BYTES(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpackhi_epi16
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_unpackhi_epi16(__m512i src, __mmask32 k,
                                       __m512i a, __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_WORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_WORDS(a[511:384], b[511:384])
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpackhi_epi16
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_unpackhi_epi16(__mmask32 k, __m512i a,
                                        __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_WORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_WORDS(a[511:384], b[511:384])
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpackhi_epi16
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_unpackhi_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst".

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
        dst[127:0] := INTERLEAVE_HIGH_WORDS(a[127:0], b[127:0])
        dst[255:128] := INTERLEAVE_HIGH_WORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_HIGH_WORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_HIGH_WORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpacklo_epi8
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_mask_unpacklo_epi8(__m512i src, __mmask64 k,
                                      __m512i a, __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_BYTES(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_BYTES(a[511:384], b[511:384])
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpacklo_epi8
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_maskz_unpacklo_epi8(__mmask64 k, __m512i a,
                                       __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_BYTES(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_BYTES(a[511:384], b[511:384])
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpacklo_epi8
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_unpacklo_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst".

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
        dst[127:0] := INTERLEAVE_BYTES(a[127:0], b[127:0])
        dst[255:128] := INTERLEAVE_BYTES(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_BYTES(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_BYTES(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpacklo_epi16
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_mask_unpacklo_epi16(__m512i src, __mmask32 k,
                                       __m512i a, __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_WORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_WORDS(a[511:384], b[511:384])
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpacklo_epi16
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_maskz_unpacklo_epi16(__mmask32 k, __m512i a,
                                        __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_WORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_WORDS(a[511:384], b[511:384])
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpacklo_epi16
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m512i _mm512_unpacklo_epi16(__m512i a, __m512i b);

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst".

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
        dst[127:0] := INTERLEAVE_WORDS(a[127:0], b[127:0])
        dst[255:128] := INTERLEAVE_WORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_WORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_WORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_packs_epi32
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 src, 
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_mask_packs_epi32(__m512i src, __mmask32 k,
                                    __m512i a, __m512i b)

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
        tmp_dst[271:256] := Saturate16(a[287:256])
        tmp_dst[287:272] := Saturate16(a[319:288])
        tmp_dst[303:288] := Saturate16(a[351:320])
        tmp_dst[319:304] := Saturate16(a[383:352])
        tmp_dst[335:320] := Saturate16(b[287:256])
        tmp_dst[351:336] := Saturate16(b[319:288])
        tmp_dst[367:352] := Saturate16(b[351:320])
        tmp_dst[383:368] := Saturate16(b[383:352])
        tmp_dst[399:384] := Saturate16(a[415:384])
        tmp_dst[415:400] := Saturate16(a[447:416])
        tmp_dst[431:416] := Saturate16(a[479:448])
        tmp_dst[447:432] := Saturate16(a[511:480])
        tmp_dst[463:448] := Saturate16(b[415:384])
        tmp_dst[479:464] := Saturate16(b[447:416])
        tmp_dst[495:480] := Saturate16(b[479:448])
        tmp_dst[511:496] := Saturate16(b[511:480])
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_packs_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_maskz_packs_epi32(__mmask32 k, __m512i a,
                                     __m512i b)

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
        tmp_dst[271:256] := Saturate16(a[287:256])
        tmp_dst[287:272] := Saturate16(a[319:288])
        tmp_dst[303:288] := Saturate16(a[351:320])
        tmp_dst[319:304] := Saturate16(a[383:352])
        tmp_dst[335:320] := Saturate16(b[287:256])
        tmp_dst[351:336] := Saturate16(b[319:288])
        tmp_dst[367:352] := Saturate16(b[351:320])
        tmp_dst[383:368] := Saturate16(b[383:352])
        tmp_dst[399:384] := Saturate16(a[415:384])
        tmp_dst[415:400] := Saturate16(a[447:416])
        tmp_dst[431:416] := Saturate16(a[479:448])
        tmp_dst[447:432] := Saturate16(a[511:480])
        tmp_dst[463:448] := Saturate16(b[415:384])
        tmp_dst[479:464] := Saturate16(b[447:416])
        tmp_dst[495:480] := Saturate16(b[479:448])
        tmp_dst[511:496] := Saturate16(b[511:480])
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_packs_epi32
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_packs_epi32(__m512i a, __m512i b);

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
        dst[271:256] := Saturate16(a[287:256])
        dst[287:272] := Saturate16(a[319:288])
        dst[303:288] := Saturate16(a[351:320])
        dst[319:304] := Saturate16(a[383:352])
        dst[335:320] := Saturate16(b[287:256])
        dst[351:336] := Saturate16(b[319:288])
        dst[367:352] := Saturate16(b[351:320])
        dst[383:368] := Saturate16(b[383:352])
        dst[399:384] := Saturate16(a[415:384])
        dst[415:400] := Saturate16(a[447:416])
        dst[431:416] := Saturate16(a[479:448])
        dst[447:432] := Saturate16(a[511:480])
        dst[463:448] := Saturate16(b[415:384])
        dst[479:464] := Saturate16(b[447:416])
        dst[495:480] := Saturate16(b[479:448])
        dst[511:496] := Saturate16(b[511:480])
        dst[MAX:512] := 0
        	

_mm512_mask_packs_epi16
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    SI8 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_packs_epi16(__m512i src, __mmask64 k,
                                    __m512i a, __m512i b)

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
        tmp_dst[263:256] := Saturate8(a[271:256])
        tmp_dst[271:264] := Saturate8(a[287:272])
        tmp_dst[279:272] := Saturate8(a[303:288])
        tmp_dst[287:280] := Saturate8(a[319:304])
        tmp_dst[295:288] := Saturate8(a[335:320])
        tmp_dst[303:296] := Saturate8(a[351:336])
        tmp_dst[311:304] := Saturate8(a[367:352])
        tmp_dst[319:312] := Saturate8(a[383:368])
        tmp_dst[327:320] := Saturate8(b[271:256])
        tmp_dst[335:328] := Saturate8(b[287:272])
        tmp_dst[343:336] := Saturate8(b[303:288])
        tmp_dst[351:344] := Saturate8(b[319:304])
        tmp_dst[359:352] := Saturate8(b[335:320])
        tmp_dst[367:360] := Saturate8(b[351:336])
        tmp_dst[375:368] := Saturate8(b[367:352])
        tmp_dst[383:376] := Saturate8(b[383:368])
        tmp_dst[391:384] := Saturate8(a[399:384])
        tmp_dst[399:392] := Saturate8(a[415:400])
        tmp_dst[407:400] := Saturate8(a[431:416])
        tmp_dst[415:408] := Saturate8(a[447:432])
        tmp_dst[423:416] := Saturate8(a[463:448])
        tmp_dst[431:424] := Saturate8(a[479:464])
        tmp_dst[439:432] := Saturate8(a[495:480])
        tmp_dst[447:440] := Saturate8(a[511:496])
        tmp_dst[455:448] := Saturate8(b[399:384])
        tmp_dst[463:456] := Saturate8(b[415:400])
        tmp_dst[471:464] := Saturate8(b[431:416])
        tmp_dst[479:472] := Saturate8(b[447:432])
        tmp_dst[487:480] := Saturate8(b[463:448])
        tmp_dst[495:488] := Saturate8(b[479:464])
        tmp_dst[503:496] := Saturate8(b[495:480])
        tmp_dst[511:504] := Saturate8(b[511:496])
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_packs_epi16
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_packs_epi16(__mmask64 k, __m512i a,
                                     __m512i b)

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
        tmp_dst[263:256] := Saturate8(a[271:256])
        tmp_dst[271:264] := Saturate8(a[287:272])
        tmp_dst[279:272] := Saturate8(a[303:288])
        tmp_dst[287:280] := Saturate8(a[319:304])
        tmp_dst[295:288] := Saturate8(a[335:320])
        tmp_dst[303:296] := Saturate8(a[351:336])
        tmp_dst[311:304] := Saturate8(a[367:352])
        tmp_dst[319:312] := Saturate8(a[383:368])
        tmp_dst[327:320] := Saturate8(b[271:256])
        tmp_dst[335:328] := Saturate8(b[287:272])
        tmp_dst[343:336] := Saturate8(b[303:288])
        tmp_dst[351:344] := Saturate8(b[319:304])
        tmp_dst[359:352] := Saturate8(b[335:320])
        tmp_dst[367:360] := Saturate8(b[351:336])
        tmp_dst[375:368] := Saturate8(b[367:352])
        tmp_dst[383:376] := Saturate8(b[383:368])
        tmp_dst[391:384] := Saturate8(a[399:384])
        tmp_dst[399:392] := Saturate8(a[415:400])
        tmp_dst[407:400] := Saturate8(a[431:416])
        tmp_dst[415:408] := Saturate8(a[447:432])
        tmp_dst[423:416] := Saturate8(a[463:448])
        tmp_dst[431:424] := Saturate8(a[479:464])
        tmp_dst[439:432] := Saturate8(a[495:480])
        tmp_dst[447:440] := Saturate8(a[511:496])
        tmp_dst[455:448] := Saturate8(b[399:384])
        tmp_dst[463:456] := Saturate8(b[415:400])
        tmp_dst[471:464] := Saturate8(b[431:416])
        tmp_dst[479:472] := Saturate8(b[447:432])
        tmp_dst[487:480] := Saturate8(b[463:448])
        tmp_dst[495:488] := Saturate8(b[479:464])
        tmp_dst[503:496] := Saturate8(b[495:480])
        tmp_dst[511:504] := Saturate8(b[511:496])
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_packs_epi16
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_packs_epi16(__m512i a, __m512i b);

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
        dst[263:256] := Saturate8(a[271:256])
        dst[271:264] := Saturate8(a[287:272])
        dst[279:272] := Saturate8(a[303:288])
        dst[287:280] := Saturate8(a[319:304])
        dst[295:288] := Saturate8(a[335:320])
        dst[303:296] := Saturate8(a[351:336])
        dst[311:304] := Saturate8(a[367:352])
        dst[319:312] := Saturate8(a[383:368])
        dst[327:320] := Saturate8(b[271:256])
        dst[335:328] := Saturate8(b[287:272])
        dst[343:336] := Saturate8(b[303:288])
        dst[351:344] := Saturate8(b[319:304])
        dst[359:352] := Saturate8(b[335:320])
        dst[367:360] := Saturate8(b[351:336])
        dst[375:368] := Saturate8(b[367:352])
        dst[383:376] := Saturate8(b[383:368])
        dst[391:384] := Saturate8(a[399:384])
        dst[399:392] := Saturate8(a[415:400])
        dst[407:400] := Saturate8(a[431:416])
        dst[415:408] := Saturate8(a[447:432])
        dst[423:416] := Saturate8(a[463:448])
        dst[431:424] := Saturate8(a[479:464])
        dst[439:432] := Saturate8(a[495:480])
        dst[447:440] := Saturate8(a[511:496])
        dst[455:448] := Saturate8(b[399:384])
        dst[463:456] := Saturate8(b[415:400])
        dst[471:464] := Saturate8(b[431:416])
        dst[479:472] := Saturate8(b[447:432])
        dst[487:480] := Saturate8(b[463:448])
        dst[495:488] := Saturate8(b[479:464])
        dst[503:496] := Saturate8(b[495:480])
        dst[511:504] := Saturate8(b[511:496])
        dst[MAX:512] := 0
        	

_mm512_mask_packus_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI16 src, 
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_mask_packus_epi32(__m512i src, __mmask32 k,
                                     __m512i a, __m512i b)

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
        tmp_dst[271:256] := SaturateU16(a[287:256])
        tmp_dst[287:272] := SaturateU16(a[319:288])
        tmp_dst[303:288] := SaturateU16(a[351:320])
        tmp_dst[319:304] := SaturateU16(a[383:352])
        tmp_dst[335:320] := SaturateU16(b[287:256])
        tmp_dst[351:336] := SaturateU16(b[319:288])
        tmp_dst[367:352] := SaturateU16(b[351:320])
        tmp_dst[383:368] := SaturateU16(b[383:352])
        tmp_dst[399:384] := SaturateU16(a[415:384])
        tmp_dst[415:400] := SaturateU16(a[447:416])
        tmp_dst[431:416] := SaturateU16(a[479:448])
        tmp_dst[447:432] := SaturateU16(a[511:480])
        tmp_dst[463:448] := SaturateU16(b[415:384])
        tmp_dst[479:464] := SaturateU16(b[447:416])
        tmp_dst[495:480] := SaturateU16(b[479:448])
        tmp_dst[511:496] := SaturateU16(b[511:480])
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_packus_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_maskz_packus_epi32(__mmask32 k, __m512i a,
                                      __m512i b)

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
        tmp_dst[271:256] := SaturateU16(a[287:256])
        tmp_dst[287:272] := SaturateU16(a[319:288])
        tmp_dst[303:288] := SaturateU16(a[351:320])
        tmp_dst[319:304] := SaturateU16(a[383:352])
        tmp_dst[335:320] := SaturateU16(b[287:256])
        tmp_dst[351:336] := SaturateU16(b[319:288])
        tmp_dst[367:352] := SaturateU16(b[351:320])
        tmp_dst[383:368] := SaturateU16(b[383:352])
        tmp_dst[399:384] := SaturateU16(a[415:384])
        tmp_dst[415:400] := SaturateU16(a[447:416])
        tmp_dst[431:416] := SaturateU16(a[479:448])
        tmp_dst[447:432] := SaturateU16(a[511:480])
        tmp_dst[463:448] := SaturateU16(b[415:384])
        tmp_dst[479:464] := SaturateU16(b[447:416])
        tmp_dst[495:480] := SaturateU16(b[479:448])
        tmp_dst[511:496] := SaturateU16(b[511:480])
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := tmp_dst[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_packus_epi32
-------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_packus_epi32(__m512i a, __m512i b);

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
        dst[271:256] := SaturateU16(a[287:256])
        dst[287:272] := SaturateU16(a[319:288])
        dst[303:288] := SaturateU16(a[351:320])
        dst[319:304] := SaturateU16(a[383:352])
        dst[335:320] := SaturateU16(b[287:256])
        dst[351:336] := SaturateU16(b[319:288])
        dst[367:352] := SaturateU16(b[351:320])
        dst[383:368] := SaturateU16(b[383:352])
        dst[399:384] := SaturateU16(a[415:384])
        dst[415:400] := SaturateU16(a[447:416])
        dst[431:416] := SaturateU16(a[479:448])
        dst[447:432] := SaturateU16(a[511:480])
        dst[463:448] := SaturateU16(b[415:384])
        dst[479:464] := SaturateU16(b[447:416])
        dst[495:480] := SaturateU16(b[479:448])
        dst[511:496] := SaturateU16(b[511:480])
        dst[MAX:512] := 0
        	

_mm512_mask_packus_epi16
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 src, 
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_mask_packus_epi16(__m512i src, __mmask64 k,
                                     __m512i a, __m512i b)

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
        tmp_dst[263:256] := SaturateU8(a[271:256])
        tmp_dst[271:264] := SaturateU8(a[287:272])
        tmp_dst[279:272] := SaturateU8(a[303:288])
        tmp_dst[287:280] := SaturateU8(a[319:304])
        tmp_dst[295:288] := SaturateU8(a[335:320])
        tmp_dst[303:296] := SaturateU8(a[351:336])
        tmp_dst[311:304] := SaturateU8(a[367:352])
        tmp_dst[319:312] := SaturateU8(a[383:368])
        tmp_dst[327:320] := SaturateU8(b[271:256])
        tmp_dst[335:328] := SaturateU8(b[287:272])
        tmp_dst[343:336] := SaturateU8(b[303:288])
        tmp_dst[351:344] := SaturateU8(b[319:304])
        tmp_dst[359:352] := SaturateU8(b[335:320])
        tmp_dst[367:360] := SaturateU8(b[351:336])
        tmp_dst[375:368] := SaturateU8(b[367:352])
        tmp_dst[383:376] := SaturateU8(b[383:368])
        tmp_dst[391:384] := SaturateU8(a[399:384])
        tmp_dst[399:392] := SaturateU8(a[415:400])
        tmp_dst[407:400] := SaturateU8(a[431:416])
        tmp_dst[415:408] := SaturateU8(a[447:432])
        tmp_dst[423:416] := SaturateU8(a[463:448])
        tmp_dst[431:424] := SaturateU8(a[479:464])
        tmp_dst[439:432] := SaturateU8(a[495:480])
        tmp_dst[447:440] := SaturateU8(a[511:496])
        tmp_dst[455:448] := SaturateU8(b[399:384])
        tmp_dst[463:456] := SaturateU8(b[415:400])
        tmp_dst[471:464] := SaturateU8(b[431:416])
        tmp_dst[479:472] := SaturateU8(b[447:432])
        tmp_dst[487:480] := SaturateU8(b[463:448])
        tmp_dst[495:488] := SaturateU8(b[479:464])
        tmp_dst[503:496] := SaturateU8(b[495:480])
        tmp_dst[511:504] := SaturateU8(b[511:496])
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_packus_epi16
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_maskz_packus_epi16(__mmask64 k, __m512i a,
                                      __m512i b)

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
        tmp_dst[263:256] := SaturateU8(a[271:256])
        tmp_dst[271:264] := SaturateU8(a[287:272])
        tmp_dst[279:272] := SaturateU8(a[303:288])
        tmp_dst[287:280] := SaturateU8(a[319:304])
        tmp_dst[295:288] := SaturateU8(a[335:320])
        tmp_dst[303:296] := SaturateU8(a[351:336])
        tmp_dst[311:304] := SaturateU8(a[367:352])
        tmp_dst[319:312] := SaturateU8(a[383:368])
        tmp_dst[327:320] := SaturateU8(b[271:256])
        tmp_dst[335:328] := SaturateU8(b[287:272])
        tmp_dst[343:336] := SaturateU8(b[303:288])
        tmp_dst[351:344] := SaturateU8(b[319:304])
        tmp_dst[359:352] := SaturateU8(b[335:320])
        tmp_dst[367:360] := SaturateU8(b[351:336])
        tmp_dst[375:368] := SaturateU8(b[367:352])
        tmp_dst[383:376] := SaturateU8(b[383:368])
        tmp_dst[391:384] := SaturateU8(a[399:384])
        tmp_dst[399:392] := SaturateU8(a[415:400])
        tmp_dst[407:400] := SaturateU8(a[431:416])
        tmp_dst[415:408] := SaturateU8(a[447:432])
        tmp_dst[423:416] := SaturateU8(a[463:448])
        tmp_dst[431:424] := SaturateU8(a[479:464])
        tmp_dst[439:432] := SaturateU8(a[495:480])
        tmp_dst[447:440] := SaturateU8(a[511:496])
        tmp_dst[455:448] := SaturateU8(b[399:384])
        tmp_dst[463:456] := SaturateU8(b[415:400])
        tmp_dst[471:464] := SaturateU8(b[431:416])
        tmp_dst[479:472] := SaturateU8(b[447:432])
        tmp_dst[487:480] := SaturateU8(b[463:448])
        tmp_dst[495:488] := SaturateU8(b[479:464])
        tmp_dst[503:496] := SaturateU8(b[495:480])
        tmp_dst[511:504] := SaturateU8(b[511:496])
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := tmp_dst[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_packus_epi16
-------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m512i _mm512_packus_epi16(__m512i a, __m512i b);

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
        dst[263:256] := SaturateU8(a[271:256])
        dst[271:264] := SaturateU8(a[287:272])
        dst[279:272] := SaturateU8(a[303:288])
        dst[287:280] := SaturateU8(a[319:304])
        dst[295:288] := SaturateU8(a[335:320])
        dst[303:296] := SaturateU8(a[351:336])
        dst[311:304] := SaturateU8(a[367:352])
        dst[319:312] := SaturateU8(a[383:368])
        dst[327:320] := SaturateU8(b[271:256])
        dst[335:328] := SaturateU8(b[287:272])
        dst[343:336] := SaturateU8(b[303:288])
        dst[351:344] := SaturateU8(b[319:304])
        dst[359:352] := SaturateU8(b[335:320])
        dst[367:360] := SaturateU8(b[351:336])
        dst[375:368] := SaturateU8(b[367:352])
        dst[383:376] := SaturateU8(b[383:368])
        dst[391:384] := SaturateU8(a[399:384])
        dst[399:392] := SaturateU8(a[415:400])
        dst[407:400] := SaturateU8(a[431:416])
        dst[415:408] := SaturateU8(a[447:432])
        dst[423:416] := SaturateU8(a[463:448])
        dst[431:424] := SaturateU8(a[479:464])
        dst[439:432] := SaturateU8(a[495:480])
        dst[447:440] := SaturateU8(a[511:496])
        dst[455:448] := SaturateU8(b[399:384])
        dst[463:456] := SaturateU8(b[415:400])
        dst[471:464] := SaturateU8(b[431:416])
        dst[479:472] := SaturateU8(b[447:432])
        dst[487:480] := SaturateU8(b[463:448])
        dst[495:488] := SaturateU8(b[479:464])
        dst[503:496] := SaturateU8(b[495:480])
        dst[511:504] := SaturateU8(b[511:496])
        dst[MAX:512] := 0
        	

_mm512_broadcast_f32x2
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_broadcast_f32x2(__m128 a);

.. admonition:: Intel Description

    Broadcast the lower 2 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 2)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_f32x2
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m128 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_broadcast_f32x2(__m512 src, __mmask16 k,
                                       __m128 a)

.. admonition:: Intel Description

    Broadcast the lower 2 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 2)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_f32x2
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_broadcast_f32x2(__mmask16 k, __m128 a);

.. admonition:: Intel Description

    Broadcast the lower 2 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 2)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_f32x8
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_broadcast_f32x8(__m256 a);

.. admonition:: Intel Description

    Broadcast the 8 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 8)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_f32x8
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m256 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_broadcast_f32x8(__m512 src, __mmask16 k,
                                       __m256 a)

.. admonition:: Intel Description

    Broadcast the 8 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 8)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_f32x8
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_broadcast_f32x8(__mmask16 k, __m256 a);

.. admonition:: Intel Description

    Broadcast the 8 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 8)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_f64x2
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_broadcast_f64x2(__m128d a);

.. admonition:: Intel Description

    Broadcast the 2 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 2)*64
        	dst[i+63:i] := a[n+63:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_f64x2
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_broadcast_f64x2(__m512d src, __mmask8 k,
                                        __m128d a)

.. admonition:: Intel Description

    Broadcast the 2 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 2)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_f64x2
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_broadcast_f64x2(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Broadcast the 2 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 2)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_i32x2
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512i _mm512_broadcast_i32x2(__m128i a);

.. admonition:: Intel Description

    Broadcast the lower 2 packed 32-bit integers from "a" to all elements of "dst.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 2)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_i32x2
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_broadcast_i32x2(__m512i src,
                                        __mmask16 k, __m128i a)

.. admonition:: Intel Description

    Broadcast the lower 2 packed 32-bit integers from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 2)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_i32x2
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_broadcast_i32x2(__mmask16 k,
                                         __m128i a)

.. admonition:: Intel Description

    Broadcast the lower 2 packed 32-bit integers from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 2)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_i32x8
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512i _mm512_broadcast_i32x8(__m256i a);

.. admonition:: Intel Description

    Broadcast the 8 packed 32-bit integers from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 8)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_i32x8
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m256i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_broadcast_i32x8(__m512i src,
                                        __mmask16 k, __m256i a)

.. admonition:: Intel Description

    Broadcast the 8 packed 32-bit integers from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 8)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_i32x8
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_broadcast_i32x8(__mmask16 k,
                                         __m256i a)

.. admonition:: Intel Description

    Broadcast the 8 packed 32-bit integers from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 8)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_i64x2
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m512i _mm512_broadcast_i64x2(__m128i a);

.. admonition:: Intel Description

    Broadcast the 2 packed 64-bit integers from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 2)*64
        	dst[i+63:i] := a[n+63:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_i64x2
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_mask_broadcast_i64x2(__m512i src, __mmask8 k,
                                        __m128i a)

.. admonition:: Intel Description

    Broadcast the 2 packed 64-bit integers from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 2)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_i64x2
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_maskz_broadcast_i64x2(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Broadcast the 2 packed 64-bit integers from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 2)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_extractf32x8_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm512_extractf32x8_ps(__m512 a, int imm8);

.. admonition:: Intel Description

    Extract 256 bits (composed of 8 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: dst[255:0] := a[255:0]
        1: dst[255:0] := a[511:256]
        ESAC
        dst[MAX:256] := 0
        	

_mm512_mask_extractf32x8_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm512_mask_extractf32x8_ps(__m256 src, __mmask8 k,
                                       __m512 a, int imm8)

.. admonition:: Intel Description

    Extract 256 bits (composed of 8 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[255:0] := a[255:0]
        1: tmp[255:0] := a[511:256]
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
        	

_mm512_maskz_extractf32x8_ps
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m512 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m256 _mm512_maskz_extractf32x8_ps(__mmask8 k, __m512 a,
                                        int imm8)

.. admonition:: Intel Description

    Extract 256 bits (composed of 8 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[255:0] := a[255:0]
        1: tmp[255:0] := a[511:256]
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
        	

_mm512_extractf64x2_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m128d
:Param Types:
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m128d _mm512_extractf64x2_pd(__m512d a, int imm8);

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: dst[127:0] := a[127:0]
        1: dst[127:0] := a[255:128]
        2: dst[127:0] := a[383:256]
        3: dst[127:0] := a[511:384]
        ESAC
        dst[MAX:128] := 0
        	

_mm512_mask_extractf64x2_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m128d _mm512_mask_extractf64x2_pd(__m128d src, __mmask8 k,
                                        __m512d a, int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        2: tmp[127:0] := a[383:256]
        3: tmp[127:0] := a[511:384]
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
        	

_mm512_maskz_extractf64x2_pd
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m128d _mm512_maskz_extractf64x2_pd(__mmask8 k, __m512d a,
                                         int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        2: tmp[127:0] := a[383:256]
        3: tmp[127:0] := a[511:384]
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
        	

_mm512_extracti32x8_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm512_extracti32x8_epi32(__m512i a, int imm8);

.. admonition:: Intel Description

    Extract 256 bits (composed of 8 packed 32-bit integers) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: dst[255:0] := a[255:0]
        1: dst[255:0] := a[511:256]
        ESAC
        dst[MAX:256] := 0
        	

_mm512_mask_extracti32x8_epi32
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm512_mask_extracti32x8_epi32(__m256i src,
                                           __mmask8 k,
                                           __m512i a, int imm8)

.. admonition:: Intel Description

    Extract 256 bits (composed of 8 packed 32-bit integers) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[255:0] := a[255:0]
        1: tmp[255:0] := a[511:256]
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
        	

_mm512_maskz_extracti32x8_epi32
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm512_maskz_extracti32x8_epi32(__mmask8 k,
                                            __m512i a,
                                            int imm8)

.. admonition:: Intel Description

    Extract 256 bits (composed of 8 packed 32-bit integers) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[255:0] := a[255:0]
        1: tmp[255:0] := a[511:256]
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
        	

_mm512_extracti64x2_epi64
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm512_extracti64x2_epi64(__m512i a, int imm8);

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed 64-bit integers) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: dst[127:0] := a[127:0]
        1: dst[127:0] := a[255:128]
        2: dst[127:0] := a[383:256]
        3: dst[127:0] := a[511:384]
        ESAC
        dst[MAX:128] := 0
        	

_mm512_mask_extracti64x2_epi64
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm512_mask_extracti64x2_epi64(__m128i src,
                                           __mmask8 k,
                                           __m512i a, int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed 64-bit integers) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        2: tmp[127:0] := a[383:256]
        3: tmp[127:0] := a[511:384]
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
        	

_mm512_maskz_extracti64x2_epi64
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm512_maskz_extracti64x2_epi64(__mmask8 k,
                                            __m512i a,
                                            int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 2 packed 64-bit integers) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        2: tmp[127:0] := a[383:256]
        3: tmp[127:0] := a[511:384]
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
        	

_mm512_fpclass_pd_mask
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask8
:Param Types:
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm512_fpclass_pd_mask(__m512d a, int imm8);

.. admonition:: Intel Description

    Test packed double-precision (64-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k".
    	[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	k[j] := CheckFPClass_FP64(a[i+63:i], imm8[7:0])
        ENDFOR
        k[MAX:8] := 0
        	

_mm512_mask_fpclass_pd_mask
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m512d a, 
    int imm8
:Param ETypes:
    MASK k1, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __mmask8 _mm512_mask_fpclass_pd_mask(__mmask8 k1, __m512d a,
                                         int imm8)

.. admonition:: Intel Description

    Test packed double-precision (64-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).
    	[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k1[j]
        		k[j] := CheckFPClass_FP64(a[i+63:i], imm8[7:0])
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm512_fpclass_ps_mask
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask16
:Param Types:
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm512_fpclass_ps_mask(__m512 a, int imm8);

.. admonition:: Intel Description

    Test packed single-precision (32-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k".
    	[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	k[j] := CheckFPClass_FP32(a[i+31:i], imm8[7:0])
        ENDFOR
        k[MAX:16] := 0
        	

_mm512_mask_fpclass_ps_mask
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m512 a, 
    int imm8
:Param ETypes:
    MASK k1, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __mmask16 _mm512_mask_fpclass_ps_mask(__mmask16 k1,
                                          __m512 a, int imm8)

.. admonition:: Intel Description

    Test packed single-precision (32-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).
    	[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k1[j]
        		k[j] := CheckFPClass_FP32(a[i+31:i], imm8[7:0])
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm512_insertf32x8
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m256 b, 
    int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_insertf32x8(__m512 a, __m256 b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 256 bits (composed of 8 packed single-precision (32-bit) floating-point elements) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: dst[255:0] := b[255:0]
        1: dst[511:256] := b[255:0]
        ESAC
        dst[MAX:512] := 0
        	

_mm512_mask_insertf32x8
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m256 b, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_insertf32x8(__m512 src, __mmask16 k,
                                   __m512 a, __m256 b,
                                   int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 256 bits (composed of 8 packed single-precision (32-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: tmp[255:0] := b[255:0]
        1: tmp[511:256] := b[255:0]
        ESAC
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_insertf32x8
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m256 b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_insertf32x8(__mmask16 k, __m512 a,
                                    __m256 b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 256 bits (composed of 8 packed single-precision (32-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: tmp[255:0] := b[255:0]
        1: tmp[511:256] := b[255:0]
        ESAC
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_insertf64x2
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m128d b, 
    int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_insertf64x2(__m512d a, __m128d b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := a[511:0]
        CASE imm8[1:0] OF
        0: dst[127:0] := b[127:0]
        1: dst[255:128] := b[127:0]
        2: dst[383:256] := b[127:0]
        3: dst[511:384] := b[127:0]
        ESAC
        dst[MAX:512] := 0
        	

_mm512_mask_insertf64x2
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m128d b, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_insertf64x2(__m512d src, __mmask8 k,
                                    __m512d a, __m128d b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        2: tmp[383:256] := b[127:0]
        3: tmp[511:384] := b[127:0]
        ESAC
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_insertf64x2
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m128d b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_insertf64x2(__mmask8 k, __m512d a,
                                     __m128d b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 2 packed double-precision (64-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        2: tmp[383:256] := b[127:0]
        3: tmp[511:384] := b[127:0]
        ESAC
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_inserti32x8
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_inserti32x8(__m512i a, __m256i b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 256 bits (composed of 8 packed 32-bit integers) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := a[511:0]
        CASE imm8[0] OF
        0: dst[255:0] := b[255:0]
        1: dst[511:256] := b[255:0]
        ESAC
        dst[MAX:512] := 0
        	

_mm512_mask_inserti32x8
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_inserti32x8(__m512i src, __mmask16 k,
                                    __m512i a, __m256i b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 256 bits (composed of 8 packed 32-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: tmp[255:0] := b[255:0]
        1: tmp[511:256] := b[255:0]
        ESAC
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_inserti32x8
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_inserti32x8(__mmask16 k, __m512i a,
                                     __m256i b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 256 bits (composed of 8 packed 32-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: tmp[255:0] := b[255:0]
        1: tmp[511:256] := b[255:0]
        ESAC
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_inserti64x2
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_inserti64x2(__m512i a, __m128i b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 128 bits (composed of 2 packed 64-bit integers) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := a[511:0]
        CASE imm8[1:0] OF
        0: dst[127:0] := b[127:0]
        1: dst[255:128] := b[127:0]
        2: dst[383:256] := b[127:0]
        3: dst[511:384] := b[127:0]
        ESAC
        dst[MAX:512] := 0
        	

_mm512_mask_inserti64x2
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_inserti64x2(__m512i src, __mmask8 k,
                                    __m512i a, __m128i b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 2 packed 64-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        2: tmp[383:256] := b[127:0]
        3: tmp[511:384] := b[127:0]
        ESAC
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_inserti64x2
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_inserti64x2(__mmask8 k, __m512i a,
                                     __m128i b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 2 packed 64-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        2: tmp[383:256] := b[127:0]
        3: tmp[511:384] := b[127:0]
        ESAC
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_movepi32_mask
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask16
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __mmask16 _mm512_movepi32_mask(__m512i a);

.. admonition:: Intel Description

    Set each bit of mask register "k" based on the most significant bit of the corresponding packed 32-bit integer in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF a[i+31]
        		k[j] := 1
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm512_movm_epi32
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m512i _mm512_movm_epi32(__mmask16 k);

.. admonition:: Intel Description

    Set each packed 32-bit integer in "dst" to all ones or all zeros based on the value of the corresponding bit in "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := 0xFFFFFFFF
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_movm_epi64
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m512i _mm512_movm_epi64(__mmask8 k);

.. admonition:: Intel Description

    Set each packed 64-bit integer in "dst" to all ones or all zeros based on the value of the corresponding bit in "k".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := 0xFFFFFFFFFFFFFFFF
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_movepi64_mask
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask8
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __mmask8 _mm512_movepi64_mask(__m512i a);

.. admonition:: Intel Description

    Set each bit of mask register "k" based on the most significant bit of the corresponding packed 64-bit integer in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF a[i+63]
        		k[j] := 1
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm512_mask_range_pd
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_range_pd(__m512d src, __mmask8 k,
                                 __m512d a, __m512d b,
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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_range_round_pd
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int imm8, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_range_round_pd(__m512d src, __mmask8 k,
                                       __m512d a, __m512d b,
                                       int imm8, int sae)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit. [sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_range_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_range_pd(__mmask8 k, __m512d a,
                                  __m512d b, int imm8)

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_range_round_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int imm8, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_range_round_pd(__mmask8 k, __m512d a,
                                        __m512d b, int imm8,
                                        int sae)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit. [sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_range_pd
---------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_range_pd(__m512d a, __m512d b, int imm8);

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_range_round_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int imm8, 
    int sae
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_range_round_pd(__m512d a, __m512d b,
                                  int imm8, int sae)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit. [sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := RANGE(a[i+63:i], b[i+63:i], imm8[1:0], imm8[3:2])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_range_ps
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_range_ps(__m512 src, __mmask16 k,
                                __m512 a, __m512 b, int imm8)

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_range_round_ps
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int imm8, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_range_round_ps(__m512 src, __mmask16 k,
                                      __m512 a, __m512 b,
                                      int imm8, int sae)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit. [sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_range_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_range_ps(__mmask16 k, __m512 a,
                                 __m512 b, int imm8)

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_range_round_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int imm8, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_range_round_ps(__mmask16 k, __m512 a,
                                       __m512 b, int imm8,
                                       int sae)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit. [sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_range_ps
---------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_range_ps(__m512 a, __m512 b, int imm8);

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_range_round_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int imm8, 
    int sae
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_range_round_ps(__m512 a, __m512 b, int imm8,
                                 int sae)

.. admonition:: Intel Description

    Calculate the max, min, absolute max, or absolute min (depending on control in "imm8") for packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".
    	imm8[1:0] specifies the operation control: 00 = min, 01 = max, 10 = absolute min, 11 = absolute max.
    	imm8[3:2] specifies the sign control: 00 = sign from a, 01 = sign from compare result, 10 = clear sign bit, 11 = set sign bit. [sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := RANGE(a[i+31:i], b[i+31:i], imm8[1:0], imm8[3:2])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_reduce_pd(__m512d src, __mmask8 k,
                                  __m512d a, int imm8)

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_round_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    int imm8, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_reduce_round_pd(__m512d src, __mmask8 k,
                                        __m512d a, int imm8,
                                        int sae)

.. admonition:: Intel Description

    Extract the reduced argument of packed double-precision (64-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_reduce_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_reduce_pd(__mmask8 k, __m512d a,
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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_reduce_round_pd
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int imm8, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_reduce_round_pd(__mmask8 k, __m512d a,
                                         int imm8, int sae)

.. admonition:: Intel Description

    Extract the reduced argument of packed double-precision (64-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_reduce_pd
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_reduce_pd(__m512d a, int imm8);

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_reduce_round_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    int imm8, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_reduce_round_pd(__m512d a, int imm8,
                                   int sae)

.. admonition:: Intel Description

    Extract the reduced argument of packed double-precision (64-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst". [round_imm_note][sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ReduceArgumentPD(a[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_reduce_ps(__m512 src, __mmask16 k,
                                 __m512 a, int imm8)

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_round_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    int imm8, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_reduce_round_ps(__m512 src, __mmask16 k,
                                       __m512 a, int imm8,
                                       int sae)

.. admonition:: Intel Description

    Extract the reduced argument of packed single-precision (32-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_reduce_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_reduce_ps(__mmask16 k, __m512 a,
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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_reduce_round_ps
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int imm8, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_reduce_round_ps(__mmask16 k, __m512 a,
                                        int imm8, int sae)

.. admonition:: Intel Description

    Extract the reduced argument of packed single-precision (32-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_reduce_ps
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_reduce_ps(__m512 a, int imm8);

.. admonition:: Intel Description

    Extract the reduced argument of packed single-precision (32-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst". [round_imm_note]

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_reduce_round_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    int imm8, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_reduce_round_ps(__m512 a, int imm8, int sae);

.. admonition:: Intel Description

    Extract the reduced argument of packed single-precision (32-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst". [round_imm_note][sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ReduceArgumentPS(a[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_alignr_epi32
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_alignr_epi32(__mmask16 k, __m512i a,
                                      __m512i b,
                                      const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 128-byte immediate result, shift the result right by "imm8" 32-bit elements, and stores the low 64 bytes (16 elements) in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[1023:512] := a[511:0]
        temp[511:0] := b[511:0]
        temp[1023:0] := temp[1023:0] >> (32*imm8[3:0])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := temp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_alignr_epi64
-------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_alignr_epi64(__m512i a, __m512i b,
                                const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 128-byte immediate result, shift the result right by "imm8" 64-bit elements, and store the low 64 bytes (8 elements) in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[1023:512] := a[511:0]
        temp[511:0] := b[511:0]
        temp[1023:0] := temp[1023:0] >> (64*imm8[2:0])
        dst[511:0] := temp[511:0]
        dst[MAX:512] := 0
        	

_mm512_mask_alignr_epi64
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_alignr_epi64(__m512i src, __mmask8 k,
                                     __m512i a, __m512i b,
                                     const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 128-byte immediate result, shift the result right by "imm8" 64-bit elements, and store the low 64 bytes (8 elements) in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[1023:512] := a[511:0]
        temp[511:0] := b[511:0]
        temp[1023:0] := temp[1023:0] >> (64*imm8[2:0])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := temp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_alignr_epi64
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_alignr_epi64(__mmask8 k, __m512i a,
                                      __m512i b,
                                      const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 128-byte immediate result, shift the result right by "imm8" 64-bit elements, and stores the low 64 bytes (8 elements) in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[1023:512] := a[511:0]
        temp[511:0] := b[511:0]
        temp[1023:0] := temp[1023:0] >> (64*imm8[2:0])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := temp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fixupimm_pd
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512i c, 
    int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_fixupimm_pd(__m512d a, __m512d b, __m512i c,
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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fixupimm_round_pd
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    __m512i c, 
    int imm8, 
    int sae
:Param ETypes:
    FP64 a, 
    FP64 b, 
    UI64 c, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_fixupimm_round_pd(__m512d a, __m512d b,
                                     __m512i c, int imm8,
                                     int sae)

.. admonition:: Intel Description

    Fix up packed double-precision (64-bit) floating-point elements in "a" and "b" using packed 64-bit integers in "c", and store the results in "dst". "imm8" is used to set the required flags reporting.
    	[sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fixupimm_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512i c, 
    int imm8
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_fixupimm_pd(__m512d a, __mmask8 k,
                                    __m512d b, __m512i c,
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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fixupimm_round_pd
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512d b, 
    __m512i c, 
    int imm8, 
    int sae
:Param ETypes:
    FP64 a, 
    MASK k, 
    FP64 b, 
    UI64 c, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_fixupimm_round_pd(__m512d a, __mmask8 k,
                                          __m512d b, __m512i c,
                                          int imm8, int sae)

.. admonition:: Intel Description

    Fix up packed double-precision (64-bit) floating-point elements in "a" and "b" using packed 64-bit integers in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). "imm8" is used to set the required flags reporting.
    	[sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fixupimm_pd
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512i c, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_fixupimm_pd(__mmask8 k, __m512d a,
                                     __m512d b, __m512i c,
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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fixupimm_round_pd
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    __m512i c, 
    int imm8, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    UI64 c, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_fixupimm_round_pd(__mmask8 k,
                                           __m512d a, __m512d b,
                                           __m512i c, int imm8,
                                           int sae)

.. admonition:: Intel Description

    Fix up packed double-precision (64-bit) floating-point elements in "a" and "b" using packed 64-bit integers in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). "imm8" is used to set the required flags reporting.
    	[sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := FIXUPIMMPD(a[i+63:i], b[i+63:i], c[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fixupimm_ps
------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512i c, 
    int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_fixupimm_ps(__m512 a, __m512 b, __m512i c,
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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_fixupimm_round_ps
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    __m512i c, 
    int imm8, 
    int sae
:Param ETypes:
    FP32 a, 
    FP32 b, 
    UI32 c, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_fixupimm_round_ps(__m512 a, __m512 b,
                                    __m512i c, int imm8,
                                    int sae)

.. admonition:: Intel Description

    Fix up packed single-precision (32-bit) floating-point elements in "a" and "b" using packed 32-bit integers in "c", and store the results in "dst". "imm8" is used to set the required flags reporting.
    	[sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fixupimm_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512i c, 
    int imm8
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_fixupimm_ps(__m512 a, __mmask16 k,
                                   __m512 b, __m512i c,
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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_fixupimm_round_ps
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512 b, 
    __m512i c, 
    int imm8, 
    int sae
:Param ETypes:
    FP32 a, 
    MASK k, 
    FP32 b, 
    UI32 c, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_fixupimm_round_ps(__m512 a, __mmask16 k,
                                         __m512 b, __m512i c,
                                         int imm8, int sae)

.. admonition:: Intel Description

    Fix up packed single-precision (32-bit) floating-point elements in "a" and "b" using packed 32-bit integers in "c", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set). "imm8" is used to set the required flags reporting.
    	[sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fixupimm_ps
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512i c, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_fixupimm_ps(__mmask16 k, __m512 a,
                                    __m512 b, __m512i c,
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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_fixupimm_round_ps
------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    __m512i c, 
    int imm8, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    UI32 c, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_fixupimm_round_ps(__mmask16 k, __m512 a,
                                          __m512 b, __m512i c,
                                          int imm8, int sae)

.. admonition:: Intel Description

    Fix up packed single-precision (32-bit) floating-point elements in "a" and "b" using packed 32-bit integers in "c", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). "imm8" is used to set the required flags reporting.
    	[sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := FIXUPIMMPD(a[i+31:i], b[i+31:i], c[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getexp_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_getexp_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getexp_round_pd
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_getexp_round_pd(__mmask8 k, __m512d a,
                                         int sae)

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getexp_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_getexp_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getexp_round_ps
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_getexp_round_ps(__mmask16 k, __m512 a,
                                        int sae)

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getmant_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m512d _mm512_maskz_getmant_pd(
        __mmask8 k, __m512d a, _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getmant_round_pd
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM interv, 
    IMM sc, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_getmant_round_pd(
        __mmask8 k, __m512d a, _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc, int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getmant_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m512 _mm512_maskz_getmant_ps(
        __mmask16 k, __m512 a, _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getmant_round_ps
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM interv, 
    IMM sc, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_getmant_round_ps(
        __mmask16 k, __m512 a, _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc, int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_rorv_epi32
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_maskz_rorv_epi32(__mmask16 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Rotate the bits in each packed 32-bit integer in "a" to the right by the number of bits specified in the corresponding element of "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RIGHT_ROTATE_DWORDS(src, count_src) {
        	count := count_src % 32
        	RETURN (src >>count) OR (src << (32 - count))
        }
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RIGHT_ROTATE_DWORDS(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_roundscale_pd
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_roundscale_pd(__m512d src, __mmask8 k,
                                      __m512d a, int imm8)

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_roundscale_round_pd
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    int imm8, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_roundscale_round_pd(__m512d src,
                                            __mmask8 k,
                                            __m512d a, int imm8,
                                            int sae)

.. admonition:: Intel Description

    Round packed double-precision (64-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_roundscale_pd
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_roundscale_pd(__mmask8 k, __m512d a,
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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_roundscale_round_pd
--------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int imm8, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_roundscale_round_pd(__mmask8 k,
                                             __m512d a,
                                             int imm8, int sae)

.. admonition:: Intel Description

    Round packed double-precision (64-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_roundscale_pd
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_roundscale_pd(__m512d a, int imm8);

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_roundscale_round_pd
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    int imm8, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512d _mm512_roundscale_round_pd(__m512d a, int imm8,
                                       int sae)

.. admonition:: Intel Description

    Round packed double-precision (64-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note][sae_note]

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := RoundScaleFP64(a[i+63:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_roundscale_ps
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_roundscale_ps(__m512 src, __mmask16 k,
                                     __m512 a, int imm8)

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_roundscale_round_ps
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    int imm8, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_roundscale_round_ps(__m512 src,
                                           __mmask16 k,
                                           __m512 a, int imm8,
                                           int sae)

.. admonition:: Intel Description

    Round packed single-precision (32-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_roundscale_ps
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_roundscale_ps(__mmask16 k, __m512 a,
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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_roundscale_round_ps
--------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    int imm8, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_roundscale_round_ps(__mmask16 k,
                                            __m512 a, int imm8,
                                            int sae)

.. admonition:: Intel Description

    Round packed single-precision (32-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_roundscale_ps
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_roundscale_ps(__m512 a, int imm8);

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_roundscale_round_ps
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    int imm8, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512 _mm512_roundscale_round_ps(__m512 a, int imm8,
                                      int sae)

.. admonition:: Intel Description

    Round packed single-precision (32-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note][sae_note]

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := RoundScaleFP32(a[i+31:i], imm8[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_scalef_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_mask_scalef_pd(__m512d src, __mmask8 k,
                                  __m512d a, __m512d b)

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_scalef_round_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_mask_scalef_round_pd(__m512d src, __mmask8 k,
                                        __m512d a, __m512d b,
                                        int rounding)

.. admonition:: Intel Description

    Scale the packed double-precision (64-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_scalef_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_maskz_scalef_pd(__mmask8 k, __m512d a,
                                   __m512d b)

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_scalef_round_pd
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_maskz_scalef_round_pd(__mmask8 k, __m512d a,
                                         __m512d b,
                                         int rounding)

.. admonition:: Intel Description

    Scale the packed double-precision (64-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_scalef_pd
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_scalef_pd(__m512d a, __m512d b);

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_scalef_round_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int rounding
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM rounding

.. code-block:: C

    __m512d _mm512_scalef_round_pd(__m512d a, __m512d b,
                                   int rounding)

.. admonition:: Intel Description

    Scale the packed double-precision (64-bit) floating-point elements in "a" using values from "b", and store the results in "dst".
    	[round_note]

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
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := SCALE(a[i+63:0], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_scalef_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_mask_scalef_ps(__m512 src, __mmask16 k,
                                 __m512 a, __m512 b)

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_scalef_round_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_mask_scalef_round_ps(__m512 src, __mmask16 k,
                                       __m512 a, __m512 b,
                                       int rounding)

.. admonition:: Intel Description

    Scale the packed single-precision (32-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_scalef_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_maskz_scalef_ps(__mmask16 k, __m512 a,
                                  __m512 b)

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_scalef_round_ps
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_maskz_scalef_round_ps(__mmask16 k, __m512 a,
                                        __m512 b, int rounding)

.. admonition:: Intel Description

    Scale the packed single-precision (32-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_scalef_ps
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_scalef_ps(__m512 a, __m512 b);

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_scalef_round_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int rounding
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM rounding

.. code-block:: C

    __m512 _mm512_scalef_round_ps(__m512 a, __m512 b,
                                  int rounding)

.. admonition:: Intel Description

    Scale the packed single-precision (32-bit) floating-point elements in "a" using values from "b", and store the results in "dst".
    	[round_note]

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
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := SCALE(a[i+31:0], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_alignr_epi32
-------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_alignr_epi32(__m512i a, __m512i b,
                                const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 128-byte immediate result, shift the result right by "imm8" 32-bit elements, and store the low 64 bytes (16 elements) in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[1023:512] := a[511:0]
        temp[511:0] := b[511:0]
        temp[1023:0] := temp[1023:0] >> (32*imm8[3:0])
        dst[511:0] := temp[511:0]
        dst[MAX:512] := 0
        	

_mm512_mask_alignr_epi32
------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    const int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_alignr_epi32(__m512i src, __mmask16 k,
                                     __m512i a, __m512i b,
                                     const int imm8)

.. admonition:: Intel Description

    Concatenate "a" and "b" into a 128-byte immediate result, shift the result right by "imm8" 32-bit elements, and store the low 64 bytes (16 elements) in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        temp[1023:512] := a[511:0]
        temp[511:0] := b[511:0]
        temp[1023:0] := temp[1023:0] >> (32*imm8[3:0])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := temp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getexp_pd
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_getexp_pd(__m512d a);

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getexp_round_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_getexp_round_pd(__m512d a, int sae);

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getexp_pd
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_getexp_pd(__m512d src, __mmask8 k,
                                  __m512d a)

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getexp_round_pd
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_getexp_round_pd(__m512d src, __mmask8 k,
                                        __m512d a, int sae)

.. admonition:: Intel Description

    Convert the exponent of each packed double-precision (64-bit) floating-point element in "a" to a double-precision (64-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ConvertExpFP64(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getexp_ps
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_getexp_ps(__m512 a);

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getexp_round_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_getexp_round_ps(__m512 a, int sae);

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getexp_ps
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_getexp_ps(__m512 src, __mmask16 k,
                                 __m512 a)

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getexp_round_ps
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_getexp_round_ps(__m512 src, __mmask16 k,
                                       __m512 a, int sae)

.. admonition:: Intel Description

    Convert the exponent of each packed single-precision (32-bit) floating-point element in "a" to a single-precision (32-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.
    	[sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ConvertExpFP32(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getmant_pd
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    FP64 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m512d _mm512_getmant_pd(__m512d a,
                              _MM_MANTISSA_NORM_ENUM interv,
                              _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getmant_round_pd
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc, 
    int sae
:Param ETypes:
    FP64 a, 
    IMM interv, 
    IMM sc, 
    IMM sae

.. code-block:: C

    __m512d _mm512_getmant_round_pd(
        __m512d a, _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc, int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getmant_pd
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m512d _mm512_mask_getmant_pd(
        __m512d src, __mmask8 k, __m512d a,
        _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getmant_round_pd
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM interv, 
    IMM sc, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_getmant_round_pd(
        __m512d src, __mmask8 k, __m512d a,
        _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc, int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed double-precision (64-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := GetNormalizedMantissa(a[i+63:i], sc, interv)
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getmant_ps
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    FP32 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m512 _mm512_getmant_ps(__m512 a,
                             _MM_MANTISSA_NORM_ENUM interv,
                             _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getmant_round_ps
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc, 
    int sae
:Param ETypes:
    FP32 a, 
    IMM interv, 
    IMM sc, 
    IMM sae

.. code-block:: C

    __m512 _mm512_getmant_round_ps(
        __m512 a, _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc, int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getmant_ps
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM interv, 
    IMM sc

.. code-block:: C

    __m512 _mm512_mask_getmant_ps(__m512 src, __mmask16 k,
                                  __m512 a,
                                  _MM_MANTISSA_NORM_ENUM interv,
                                  _MM_MANTISSA_SIGN_ENUM sc)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getmant_round_ps
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    _MM_MANTISSA_NORM_ENUM interv, 
    _MM_MANTISSA_SIGN_ENUM sc, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM interv, 
    IMM sc, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_getmant_round_ps(
        __m512 src, __mmask16 k, __m512 a,
        _MM_MANTISSA_NORM_ENUM interv,
        _MM_MANTISSA_SIGN_ENUM sc, int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed single-precision (32-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "interv" and the sign depends on "sc" and the source sign.
    	[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := GetNormalizedMantissa(a[i+31:i], sc, interv)
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_roundscale_ph
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    int imm8
:Param ETypes:
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m512h _mm512_roundscale_ph(__m512h a, int imm8);

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP16(src.fp16, imm8[7:0]) {
        	m.fp16 := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp.fp16 := POW(FP16(2.0), -m) * ROUND(POW(FP16(2.0), m) * src.fp16, imm8[3:0])
        	RETURN tmp.fp16
        }
        FOR i := 0 to 31
        	dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        ENDFOR
        dest[MAX:512] := 0
        	

_mm512_roundscale_round_ph
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    int imm8, 
    const int sae
:Param ETypes:
    FP16 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512h _mm512_roundscale_round_ph(__m512h a, int imm8,
                                       const int sae)

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst". [round_imm_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP16(src.fp16, imm8[7:0]) {
        	m.fp16 := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp.fp16 := POW(FP16(2.0), -m) * ROUND(POW(FP16(2.0), m) * src.fp16, imm8[3:0])
        	RETURN tmp.fp16
        }
        FOR i := 0 to 31
        	dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        ENDFOR
        dest[MAX:512] := 0
        	

_mm512_mask_roundscale_ph
-------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    int imm8
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m512h _mm512_mask_roundscale_ph(__m512h src, __mmask32 k,
                                      __m512h a, int imm8)

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP16(src.fp16, imm8[7:0]) {
        	m.fp16 := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp.fp16 := POW(FP16(2.0), -m) * ROUND(POW(FP16(2.0), m) * src.fp16, imm8[3:0])
        	RETURN tmp.fp16
        }
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dest[MAX:512] := 0
        	

_mm512_mask_roundscale_round_ph
-------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    int imm8, 
    const int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512h _mm512_mask_roundscale_round_ph(__m512h src,
                                            __mmask32 k,
                                            __m512h a, int imm8,
                                            const int sae)

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP16(src.fp16, imm8[7:0]) {
        	m.fp16 := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp.fp16 := POW(FP16(2.0), -m) * ROUND(POW(FP16(2.0), m) * src.fp16, imm8[3:0])
        	RETURN tmp.fp16
        }
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dest[MAX:512] := 0
        	

_mm512_maskz_roundscale_ph
--------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m512h _mm512_maskz_roundscale_ph(__mmask32 k, __m512h a,
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
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dest[MAX:512] := 0
        	

_mm512_maskz_roundscale_round_ph
--------------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    int imm8, 
    const int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512h _mm512_maskz_roundscale_round_ph(__mmask32 k,
                                             __m512h a,
                                             int imm8,
                                             const int sae)

.. admonition:: Intel Description

    Round packed half-precision (16-bit) floating-point elements in "a" to the number of fraction bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE RoundScaleFP16(src.fp16, imm8[7:0]) {
        	m.fp16 := FP16(imm8[7:4]) // number of fraction bits after the binary point to be preserved
        	tmp.fp16 := POW(FP16(2.0), -m) * ROUND(POW(FP16(2.0), m) * src.fp16, imm8[3:0])
        	RETURN tmp.fp16
        }
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := RoundScaleFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dest[MAX:512] := 0
        	

_mm512_getexp_ph
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_getexp_ph(__m512h a);

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 31
        	dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getexp_round_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    const int sae
:Param ETypes:
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512h _mm512_getexp_round_ph(__m512h a, const int sae);

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst". This intrinsic essentially calculates "floor(log2(x))" for each element. [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 31
        	dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getexp_ph
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_getexp_ph(__m512h src, __mmask32 k,
                                  __m512h a)

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getexp_round_ph
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    const int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512h _mm512_mask_getexp_round_ph(__m512h src,
                                        __mmask32 k, __m512h a,
                                        const int sae)

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element. [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getexp_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a
:Param ETypes:
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_maskz_getexp_ph(__mmask32 k, __m512h a);

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getexp_round_ph
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    const int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM sae

.. code-block:: C

    __m512h _mm512_maskz_getexp_round_ph(__mmask32 k, __m512h a,
                                         const int sae)

.. admonition:: Intel Description

    Convert the exponent of each packed half-precision (16-bit) floating-point element in "a" to a half-precision (16-bit) floating-point number representing the integer exponent, and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "floor(log2(x))" for each element. [sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := ConvertExpFP16(a.fp16[i])
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getmant_ph
-----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign
:Param ETypes:
    FP16 a, 
    IMM norm, 
    IMM sign

.. code-block:: C

    __m512h _mm512_getmant_ph(__m512h a,
                              _MM_MANTISSA_NORM_ENUM norm,
                              _MM_MANTISSA_SIGN_ENUM sign)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    			[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 31
        	dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_getmant_round_ph
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign, 
    const int sae
:Param ETypes:
    FP16 a, 
    IMM norm, 
    IMM sign, 
    IMM sae

.. code-block:: C

    __m512h _mm512_getmant_round_ph(__m512h a,
                                    _MM_MANTISSA_NORM_ENUM norm,
                                    _MM_MANTISSA_SIGN_ENUM sign,
                                    const int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst". This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    			[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 31
        	dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getmant_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM norm, 
    IMM sign

.. code-block:: C

    __m512h _mm512_mask_getmant_ph(__m512h src, __mmask32 k,
                                   __m512h a,
                                   _MM_MANTISSA_NORM_ENUM norm,
                                   _MM_MANTISSA_SIGN_ENUM sign)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    			[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 31
        	IF k[i]
        		dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_getmant_round_ph
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign, 
    const int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM norm, 
    IMM sign, 
    IMM sae

.. code-block:: C

    __m512h _mm512_mask_getmant_round_ph(
        __m512h src, __mmask32 k, __m512h a,
        _MM_MANTISSA_NORM_ENUM norm,
        _MM_MANTISSA_SIGN_ENUM sign, const int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    			[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 31
        	IF k[i]
        		dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getmant_ph
-----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM norm, 
    IMM sign

.. code-block:: C

    __m512h _mm512_maskz_getmant_ph(
        __mmask32 k, __m512h a, _MM_MANTISSA_NORM_ENUM norm,
        _MM_MANTISSA_SIGN_ENUM sign)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    			[getmant_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 31
        	IF k[i]
        		dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_getmant_round_ph
-----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    _MM_MANTISSA_NORM_ENUM norm, 
    _MM_MANTISSA_SIGN_ENUM sign, 
    const int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM norm, 
    IMM sign, 
    IMM sae

.. code-block:: C

    __m512h _mm512_maskz_getmant_round_ph(
        __mmask32 k, __m512h a, _MM_MANTISSA_NORM_ENUM norm,
        _MM_MANTISSA_SIGN_ENUM sign, const int sae)

.. admonition:: Intel Description

    Normalize the mantissas of packed half-precision (16-bit) floating-point elements in "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). This intrinsic essentially calculates "±(2^k)*|x.significand|", where "k" depends on the interval range defined by "norm" and the sign depends on "sign" and the source sign.
    			[getmant_note][sae_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 TO 31
        	IF k[i]
        		dst.fp16[i] := GetNormalizedMantissaFP16(a.fp16[i], norm, sign)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_reduce_ph
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    int imm8
:Param ETypes:
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m512h _mm512_reduce_ph(__m512h a, int imm8);

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
        FOR i := 0 to 31
        	dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_reduce_round_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    int imm8, 
    const int sae
:Param ETypes:
    FP16 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512h _mm512_reduce_round_ph(__m512h a, int imm8,
                                   const int sae)

.. admonition:: Intel Description

    Extract the reduced argument of packed half-precision (16-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst". [round_imm_note][sae_note]

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
        FOR i := 0 to 31
        	dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_ph
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    int imm8
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m512h _mm512_mask_reduce_ph(__m512h src, __mmask32 k,
                                  __m512h a, int imm8)

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
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_round_ph
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    int imm8, 
    const int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512h _mm512_mask_reduce_round_ph(__m512h src,
                                        __mmask32 k, __m512h a,
                                        int imm8,
                                        const int sae)

.. admonition:: Intel Description

    Extract the reduced argument of packed half-precision (16-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := src.fp16[i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_reduce_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __m512h _mm512_maskz_reduce_ph(__mmask32 k, __m512h a,
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
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_reduce_round_ph
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    int imm8, 
    const int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    IMM imm8, 
    IMM sae

.. code-block:: C

    __m512h _mm512_maskz_reduce_round_ph(__mmask32 k, __m512h a,
                                         int imm8,
                                         const int sae)

.. admonition:: Intel Description

    Extract the reduced argument of packed half-precision (16-bit) floating-point elements in "a" by the number of bits specified by "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [round_imm_note][sae_note]

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
        FOR i := 0 to 31
        	IF k[i]
        		dst.fp16[i] := ReduceArgumentFP16(a.fp16[i], imm8)
        	ELSE
        		dst.fp16[i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_scalef_ph
----------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_scalef_ph(__m512h a, __m512h b);

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
        	

_mm512_scalef_round_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_scalef_round_ph(__m512h a, __m512h b,
                                   const int rounding)

.. admonition:: Intel Description

    Scale the packed half-precision (16-bit) floating-point elements in "a" using values from "b", and store the results in "dst".
    	[round_note]

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
        	

_mm512_mask_scalef_ph
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_scalef_ph(__m512h src, __mmask32 k,
                                  __m512h a, __m512h b)

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
        	

_mm512_mask_scalef_round_ph
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_mask_scalef_round_ph(__m512h src,
                                        __mmask32 k, __m512h a,
                                        __m512h b,
                                        const int rounding)

.. admonition:: Intel Description

    Scale the packed half-precision (16-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

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
        	

_mm512_maskz_scalef_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_maskz_scalef_ph(__mmask32 k, __m512h a,
                                   __m512h b)

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
        	

_mm512_maskz_scalef_round_ph
----------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    const int rounding
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM rounding

.. code-block:: C

    __m512h _mm512_maskz_scalef_round_ph(__mmask32 k, __m512h a,
                                         __m512h b,
                                         const int rounding)

.. admonition:: Intel Description

    Scale the packed half-precision (16-bit) floating-point elements in "a" using values from "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	[round_note]

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
        	

_mm512_fpclass_ph_mask
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask32
:Param Types:
    __m512h a, 
    int imm8
:Param ETypes:
    FP16 a, 
    IMM imm8

.. code-block:: C

    __mmask32 _mm512_fpclass_ph_mask(__m512h a, int imm8);

.. admonition:: Intel Description

    Test packed half-precision (16-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k".
    				[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 31
        	k[i] := CheckFPClass_FP16(a.fp16[i], imm8[7:0])
        ENDFOR
        k[MAX:32] := 0
        	

_mm512_mask_fpclass_ph_mask
---------------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask32
:Param Types:
    __mmask32 k1, 
    __m512h a, 
    int imm8
:Param ETypes:
    MASK k1, 
    FP16 a, 
    IMM imm8

.. code-block:: C

    __mmask32 _mm512_mask_fpclass_ph_mask(__mmask32 k1,
                                          __m512h a, int imm8)

.. admonition:: Intel Description

    Test packed half-precision (16-bit) floating-point elements in "a" for special categories specified by "imm8", and store the results in mask vector "k" using zeromask "k1" (elements are zeroed out when the corresponding mask bit is not set).
    			[fpclass_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR i := 0 to 31
        	IF k1[i]
        		k[i] := CheckFPClass_FP16(a.fp16[i], imm8[7:0])
        	ELSE
        		k[i] := 0
        	FI
        ENDFOR
        k[MAX:32] := 0
        	

_mm512_permutex2var_ph
----------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512i idx, 
    __m512h b
:Param ETypes:
    FP16 a, 
    UI16 idx, 
    FP16 b

.. code-block:: C

    __m512h _mm512_permutex2var_ph(__m512h a, __m512i idx,
                                   __m512h b)

.. admonition:: Intel Description

    Shuffle half-precision (16-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	off := idx[i+4:i]
        	dst.fp16[j] := idx[i+5] ? b.fp16[off] : a.fp16[off]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_blend_ph
--------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_mask_blend_ph(__mmask32 k, __m512h a,
                                 __m512h b)

.. admonition:: Intel Description

    Blend packed half-precision (16-bit) floating-point elements from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := b.fp16[j]
        	ELSE
        		dst.fp16[j] := a.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutexvar_ph
---------------------
:Tech: AVX-512
:Category: Miscellaneous
:Header: immintrin.h
:Searchable: AVX-512-Miscellaneous-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512i idx, 
    __m512h a
:Param ETypes:
    UI16 idx, 
    FP16 a

.. code-block:: C

    __m512h _mm512_permutexvar_ph(__m512i idx, __m512h a);

.. admonition:: Intel Description

    Shuffle half-precision (16-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	id := idx[i+4:i]
        	dst.fp16[j] := a.fp16[id]
        ENDFOR
        dst[MAX:512] := 0
        	

