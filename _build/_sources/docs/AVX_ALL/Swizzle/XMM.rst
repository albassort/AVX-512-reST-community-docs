AVX_ALL-Swizzle-XMM
===================

_mm_permutevar_ps
-----------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128i b
:Param ETypes:
    FP32 a, 
    UI32 b

.. code-block:: C

    __m128 _mm_permutevar_ps(__m128 a, __m128i b);

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" using the control in "b", and store the results in "dst".

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
        dst[31:0] := SELECT4(a[127:0], b[1:0])
        dst[63:32] := SELECT4(a[127:0], b[33:32])
        dst[95:64] := SELECT4(a[127:0], b[65:64])
        dst[127:96] := SELECT4(a[127:0], b[97:96])
        dst[MAX:128] := 0
        	

_mm_permute_ps
--------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128 _mm_permute_ps(__m128 a, int imm8);

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
        dst[95:64] := SELECT4(a[127:0], imm8[5:4])
        dst[127:96] := SELECT4(a[127:0], imm8[7:6])
        dst[MAX:128] := 0
        	

_mm_permutevar_pd
-----------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128i b
:Param ETypes:
    FP64 a, 
    UI64 b

.. code-block:: C

    __m128d _mm_permutevar_pd(__m128d a, __m128i b);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" using the control in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF (b[1] == 0) dst[63:0] := a[63:0]; FI
        IF (b[1] == 1) dst[63:0] := a[127:64]; FI
        IF (b[65] == 0) dst[127:64] := a[63:0]; FI
        IF (b[65] == 1) dst[127:64] := a[127:64]; FI
        dst[MAX:128] := 0
        	

_mm_permute_pd
--------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m128d _mm_permute_pd(__m128d a, int imm8);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" using the control in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF (imm8[0] == 0) dst[63:0] := a[63:0]; FI
        IF (imm8[0] == 1) dst[63:0] := a[127:64]; FI
        IF (imm8[1] == 0) dst[127:64] := a[63:0]; FI
        IF (imm8[1] == 1) dst[127:64] := a[127:64]; FI
        dst[MAX:128] := 0
        	

_mm_broadcast_ss
----------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const * mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_broadcast_ss(float const * mem_addr);

.. admonition:: Intel Description

    Broadcast a single-precision (32-bit) floating-point element from memory to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := MEM[mem_addr+31:mem_addr]
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := tmp[31:0]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_blend_epi32
---------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b, 
    const int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m128i _mm_blend_epi32(__m128i a, __m128i b,
                            const int imm8)

.. admonition:: Intel Description

    Blend packed 32-bit integers from "a" and "b" using control mask "imm8", and store the results in "dst".

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
        dst[MAX:128] := 0
        	

_mm_broadcastb_epi8
-------------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m128i _mm_broadcastb_epi8(__m128i a);

.. admonition:: Intel Description

    Broadcast the low packed 8-bit integer from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := a[7:0]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_broadcastd_epi32
--------------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m128i _mm_broadcastd_epi32(__m128i a);

.. admonition:: Intel Description

    Broadcast the low packed 32-bit integer from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[31:0]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_broadcastq_epi64
--------------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m128i _mm_broadcastq_epi64(__m128i a);

.. admonition:: Intel Description

    Broadcast the low packed 64-bit integer from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[63:0]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_broadcastsd_pd
------------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m128d _mm_broadcastsd_pd(__m128d a);

.. admonition:: Intel Description

    Broadcast the low double-precision (64-bit) floating-point element from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[63:0]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_broadcastsi128_si256
------------------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m256i
:Param Types:
    __m128i a
:Param ETypes:
    M128 a

.. code-block:: C

    __m256i _mm_broadcastsi128_si256(__m128i a);

.. admonition:: Intel Description

    Broadcast 128 bits of integer data from "a" to all 128-bit lanes in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := a[127:0]
        dst[255:128] := a[127:0]
        dst[MAX:256] := 0
        	

_mm_broadcastss_ps
------------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m128 _mm_broadcastss_ps(__m128 a);

.. admonition:: Intel Description

    Broadcast the low single-precision (32-bit) floating-point element from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[31:0]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_broadcastw_epi16
--------------------
:Tech: AVX_ALL
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX_ALL-Swizzle-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m128i _mm_broadcastw_epi16(__m128i a);

.. admonition:: Intel Description

    Broadcast the low packed 16-bit integer from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := a[15:0]
        ENDFOR
        dst[MAX:128] := 0
        	

