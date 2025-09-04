SSE_ALL-Swizzle-XMM
===================

_mm_extract_pi16
----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: xmmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    int _mm_extract_pi16(__m64 a, int imm8);

.. admonition:: Intel Description

    Extract a 16-bit integer from "a", selected with "imm8", and store the result in the lower element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := (a[63:0] >> (imm8[1:0] * 16))[15:0]
        dst[31:16] := 0
        	

_mm_insert_pi16
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: xmmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int i, 
    int imm8
:Param ETypes:
    UI16 a, 
    UI16 i, 
    IMM imm8

.. code-block:: C

    __m64 _mm_insert_pi16(__m64 a, int i, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", and insert the 16-bit integer "i" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        sel := imm8[1:0]*16
        dst[sel+15:sel] := i[15:0]
        	

_mm_shuffle_pi16
----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: xmmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m64 _mm_shuffle_pi16(__m64 a, int imm8);

.. admonition:: Intel Description

    Shuffle 16-bit integers in "a" using the control in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[15:0] := src[15:0]
        	1:	tmp[15:0] := src[31:16]
        	2:	tmp[15:0] := src[47:32]
        	3:	tmp[15:0] := src[63:48]
        	ESAC
        	RETURN tmp[15:0]
        }
        dst[15:0] := SELECT4(a[63:0], imm8[1:0])
        dst[31:16] := SELECT4(a[63:0], imm8[3:2])
        dst[47:32] := SELECT4(a[63:0], imm8[5:4])
        dst[63:48] := SELECT4(a[63:0], imm8[7:6])
        	

_mm_shuffle_ps
--------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: xmmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b, 
    unsigned int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m128 _mm_shuffle_ps(__m128 a, __m128 b,
                          unsigned int imm8)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" using the control in "imm8", and store the results in "dst".

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
        dst[31:0] := SELECT4(a[127:0], imm8[1:0])
        dst[63:32] := SELECT4(a[127:0], imm8[3:2])
        dst[95:64] := SELECT4(b[127:0], imm8[5:4])
        dst[127:96] := SELECT4(b[127:0], imm8[7:6])
        	

_mm_unpackhi_ps
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: xmmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_unpackhi_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Unpack and interleave single-precision (32-bit) floating-point elements from the high half "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[95:64] 
        	dst[63:32] := src2[95:64] 
        	dst[95:64] := src1[127:96] 
        	dst[127:96] := src2[127:96] 
        	RETURN dst[127:0]	
        }
        dst[127:0] := INTERLEAVE_HIGH_DWORDS(a[127:0], b[127:0])
        	

_mm_unpacklo_ps
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: xmmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_unpacklo_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Unpack and interleave single-precision (32-bit) floating-point elements from the low half of "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[31:0] 
        	dst[63:32] := src2[31:0] 
        	dst[95:64] := src1[63:32] 
        	dst[127:96] := src2[63:32] 
        	RETURN dst[127:0]	
        }
        dst[127:0] := INTERLEAVE_DWORDS(a[127:0], b[127:0])
        	

_mm_extract_epi16
-----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    int _mm_extract_epi16(__m128i a, int imm8);

.. admonition:: Intel Description

    Extract a 16-bit integer from "a", selected with "imm8", and store the result in the lower element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := (a[127:0] >> (imm8[2:0] * 16))[15:0]
        dst[31:16] := 0
        	

_mm_insert_epi16
----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    int i, 
    int imm8
:Param ETypes:
    UI16 a, 
    UI16 i, 
    IMM imm8

.. code-block:: C

    __m128i _mm_insert_epi16(__m128i a, int i, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", and insert the 16-bit integer "i" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := a[127:0]
        sel := imm8[2:0]*16
        dst[sel+15:sel] := i[15:0]
        	

_mm_shuffle_epi32
-----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_shuffle_epi32(__m128i a, int imm8);

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" using the control in "imm8", and store the results in "dst".

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
        dst[31:0] := SELECT4(a[127:0], imm8[1:0])
        dst[63:32] := SELECT4(a[127:0], imm8[3:2])
        dst[95:64] := SELECT4(a[127:0], imm8[5:4])
        dst[127:96] := SELECT4(a[127:0], imm8[7:6])
        	

_mm_shufflehi_epi16
-------------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_shufflehi_epi16(__m128i a, int imm8);

.. admonition:: Intel Description

    Shuffle 16-bit integers in the high 64 bits of "a" using the control in "imm8". Store the results in the high 64 bits of "dst", with the low 64 bits being copied from from "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[79:64] := (a >> (imm8[1:0] * 16))[79:64]
        dst[95:80] := (a >> (imm8[3:2] * 16))[79:64]
        dst[111:96] := (a >> (imm8[5:4] * 16))[79:64]
        dst[127:112] := (a >> (imm8[7:6] * 16))[79:64]
        	

_mm_shufflelo_epi16
-------------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    int imm8
:Param ETypes:
    UI16 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm_shufflelo_epi16(__m128i a, int imm8);

.. admonition:: Intel Description

    Shuffle 16-bit integers in the low 64 bits of "a" using the control in "imm8". Store the results in the low 64 bits of "dst", with the high 64 bits being copied from from "a" to "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := (a >> (imm8[1:0] * 16))[15:0]
        dst[31:16] := (a >> (imm8[3:2] * 16))[15:0]
        dst[47:32] := (a >> (imm8[5:4] * 16))[15:0]
        dst[63:48] := (a >> (imm8[7:6] * 16))[15:0]
        dst[127:64] := a[127:64]
        	

_mm_unpackhi_epi8
-----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_unpackhi_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the high half of "a" and "b", and store the results in "dst".

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
        	

_mm_unpackhi_epi16
------------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_unpackhi_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the high half of "a" and "b", and store the results in "dst".

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
        	

_mm_unpackhi_epi32
------------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_unpackhi_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the high half of "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[95:64] 
        	dst[63:32] := src2[95:64] 
        	dst[95:64] := src1[127:96] 
        	dst[127:96] := src2[127:96] 
        	RETURN dst[127:0]	
        }
        dst[127:0] := INTERLEAVE_HIGH_DWORDS(a[127:0], b[127:0])
        	

_mm_unpackhi_epi64
------------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m128i _mm_unpackhi_epi64(__m128i a, __m128i b);

.. admonition:: Intel Description

    Unpack and interleave 64-bit integers from the high half of "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[127:64] 
        	dst[127:64] := src2[127:64] 
        	RETURN dst[127:0]	
        }
        dst[127:0] := INTERLEAVE_HIGH_QWORDS(a[127:0], b[127:0])
        	

_mm_unpacklo_epi8
-----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_unpacklo_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Unpack and interleave 8-bit integers from the low half of "a" and "b", and store the results in "dst".

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
        	

_mm_unpacklo_epi16
------------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_unpacklo_epi16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Unpack and interleave 16-bit integers from the low half of "a" and "b", and store the results in "dst".

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
        	

_mm_unpacklo_epi32
------------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m128i _mm_unpacklo_epi32(__m128i a, __m128i b);

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the low half of "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_DWORDS(src1[127:0], src2[127:0]) {
        	dst[31:0] := src1[31:0] 
        	dst[63:32] := src2[31:0] 
        	dst[95:64] := src1[63:32] 
        	dst[127:96] := src2[63:32] 
        	RETURN dst[127:0]	
        }
        dst[127:0] := INTERLEAVE_DWORDS(a[127:0], b[127:0])
        	

_mm_unpacklo_epi64
------------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m128i _mm_unpacklo_epi64(__m128i a, __m128i b);

.. admonition:: Intel Description

    Unpack and interleave 64-bit integers from the low half of "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[63:0] 
        	dst[127:64] := src2[63:0] 
        	RETURN dst[127:0]
        }
        dst[127:0] := INTERLEAVE_QWORDS(a[127:0], b[127:0])
        	

_mm_unpackhi_pd
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_unpackhi_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Unpack and interleave double-precision (64-bit) floating-point elements from the high half of "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[127:64] 
        	dst[127:64] := src2[127:64] 
        	RETURN dst[127:0]	
        }
        dst[127:0] := INTERLEAVE_HIGH_QWORDS(a[127:0], b[127:0])
        	

_mm_unpacklo_pd
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_unpacklo_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Unpack and interleave double-precision (64-bit) floating-point elements from the low half of "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[63:0] 
        	dst[127:64] := src2[63:0] 
        	RETURN dst[127:0]
        }
        dst[127:0] := INTERLEAVE_QWORDS(a[127:0], b[127:0])
        	

_mm_shuffle_pd
--------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: emmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b, 
    int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m128d _mm_shuffle_pd(__m128d a, __m128d b, int imm8);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements using the control in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := (imm8[0] == 0) ? a[63:0] : a[127:64]
        dst[127:64] := (imm8[1] == 0) ? b[63:0] : b[127:64]
        	

_mm_blend_pd
------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
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

    __m128d _mm_blend_pd(__m128d a, __m128d b, const int imm8);

.. admonition:: Intel Description

    Blend packed double-precision (64-bit) floating-point elements from "a" and "b" using control mask "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF imm8[j]
        		dst[i+63:i] := b[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        	

_mm_blend_ps
------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
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

    __m128 _mm_blend_ps(__m128 a, __m128 b, const int imm8);

.. admonition:: Intel Description

    Blend packed single-precision (32-bit) floating-point elements from "a" and "b" using control mask "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF imm8[j]
        		dst[i+31:i] := b[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        	

_mm_blendv_pd
-------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b, 
    __m128d mask
:Param ETypes:
    FP64 a, 
    FP64 b, 
    FP64 mask

.. code-block:: C

    __m128d _mm_blendv_pd(__m128d a, __m128d b, __m128d mask);

.. admonition:: Intel Description

    Blend packed double-precision (64-bit) floating-point elements from "a" and "b" using "mask", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF mask[i+63]
        		dst[i+63:i] := b[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        	

_mm_blendv_ps
-------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b, 
    __m128 mask
:Param ETypes:
    FP32 a, 
    FP32 b, 
    FP32 mask

.. code-block:: C

    __m128 _mm_blendv_ps(__m128 a, __m128 b, __m128 mask);

.. admonition:: Intel Description

    Blend packed single-precision (32-bit) floating-point elements from "a" and "b" using "mask", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF mask[i+31]
        		dst[i+31:i] := b[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        	

_mm_blendv_epi8
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b, 
    __m128i mask
:Param ETypes:
    UI8 a, 
    UI8 b, 
    UI8 mask

.. code-block:: C

    __m128i _mm_blendv_epi8(__m128i a, __m128i b, __m128i mask);

.. admonition:: Intel Description

    Blend packed 8-bit integers from "a" and "b" using "mask", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF mask[i+7]
        		dst[i+7:i] := b[i+7:i]
        	ELSE
        		dst[i+7:i] := a[i+7:i]
        	FI
        ENDFOR
        	

_mm_blend_epi16
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    UI16 a, 
    UI16 b, 
    IMM imm8

.. code-block:: C

    __m128i _mm_blend_epi16(__m128i a, __m128i b,
                            const int imm8)

.. admonition:: Intel Description

    Blend packed 16-bit integers from "a" and "b" using control mask "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	IF imm8[j]
        		dst[i+15:i] := b[i+15:i]
        	ELSE
        		dst[i+15:i] := a[i+15:i]
        	FI
        ENDFOR
        	

_mm_extract_ps
--------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128 a, 
    const int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    int _mm_extract_ps(__m128 a, const int imm8);

.. admonition:: Intel Description

    Extract a single-precision (32-bit) floating-point element from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := (a[127:0] >> (imm8[1:0] * 32))[31:0]
        	

_mm_extract_epi8
----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    const int imm8
:Param ETypes:
    UI8 a, 
    IMM imm8

.. code-block:: C

    int _mm_extract_epi8(__m128i a, const int imm8);

.. admonition:: Intel Description

    Extract an 8-bit integer from "a", selected with "imm8", and store the result in the lower element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[7:0] := (a[127:0] >> (imm8[3:0] * 8))[7:0]
        dst[31:8] := 0
        	

_mm_extract_epi32
-----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    const int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    int _mm_extract_epi32(__m128i a, const int imm8);

.. admonition:: Intel Description

    Extract a 32-bit integer from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := (a[127:0] >> (imm8[1:0] * 32))[31:0]
        	

_mm_extract_epi64
-----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    __m128i a, 
    const int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __int64 _mm_extract_epi64(__m128i a, const int imm8);

.. admonition:: Intel Description

    Extract a 64-bit integer from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := (a[127:0] >> (imm8[0] * 64))[63:0]
        	

_mm_insert_ps
-------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
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

    __m128 _mm_insert_ps(__m128 a, __m128 b, const int imm8);

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert a single-precision (32-bit) floating-point element from "b" into "tmp" using the control in "imm8". Store "tmp" to "dst" using the mask in "imm8" (elements are zeroed out when the corresponding bit is set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp2[127:0] := a[127:0]
        CASE (imm8[7:6]) OF
        0: tmp1[31:0] := b[31:0]
        1: tmp1[31:0] := b[63:32]
        2: tmp1[31:0] := b[95:64]
        3: tmp1[31:0] := b[127:96]
        ESAC
        CASE (imm8[5:4]) OF
        0: tmp2[31:0] := tmp1[31:0]
        1: tmp2[63:32] := tmp1[31:0]
        2: tmp2[95:64] := tmp1[31:0]
        3: tmp2[127:96] := tmp1[31:0]
        ESAC
        FOR j := 0 to 3
        	i := j*32
        	IF imm8[j%8]
        		dst[i+31:i] := 0
        	ELSE
        		dst[i+31:i] := tmp2[i+31:i]
        	FI
        ENDFOR
        	

_mm_insert_epi8
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    int i, 
    const int imm8
:Param ETypes:
    UI8 a, 
    UI8 i, 
    IMM imm8

.. code-block:: C

    __m128i _mm_insert_epi8(__m128i a, int i, const int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", and insert the lower 8-bit integer from "i" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := a[127:0]
        sel := imm8[3:0]*8
        dst[sel+7:sel] := i[7:0]
        	

_mm_insert_epi32
----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    int i, 
    const int imm8
:Param ETypes:
    UI32 a, 
    UI32 i, 
    IMM imm8

.. code-block:: C

    __m128i _mm_insert_epi32(__m128i a, int i, const int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", and insert the 32-bit integer "i" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := a[127:0]
        sel := imm8[1:0]*32
        dst[sel+31:sel] := i[31:0]
        	

_mm_insert_epi64
----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: smmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __int64 i, 
    const int imm8
:Param ETypes:
    UI64 a, 
    UI64 i, 
    IMM imm8

.. code-block:: C

    __m128i _mm_insert_epi64(__m128i a, __int64 i,
                             const int imm8)

.. admonition:: Intel Description

    Copy "a" to "dst", and insert the 64-bit integer "i" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := a[127:0]
        sel := imm8[0]*64
        dst[sel+63:sel] := i[63:0]
        	

_mm_shuffle_epi8
----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: tmmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_shuffle_epi8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Shuffle packed 8-bit integers in "a" according to shuffle control mask in the corresponding 8-bit element of "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF b[i+7] == 1
        		dst[i+7:i] := 0
        	ELSE
        		index[3:0] := b[i+3:i]
        		dst[i+7:i] := a[index*8+7:index*8]
        	FI
        ENDFOR
        	

_mm_shuffle_pi8
---------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: tmmintrin.h
:Searchable: SSE_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _mm_shuffle_pi8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Shuffle packed 8-bit integers in "a" according to shuffle control mask in the corresponding 8-bit element of "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	IF b[i+7] == 1
        		dst[i+7:i] := 0
        	ELSE
        		index[2:0] := b[i+2:i]
        		dst[i+7:i] := a[index*8+7:index*8]
        	FI
        ENDFOR
        	

