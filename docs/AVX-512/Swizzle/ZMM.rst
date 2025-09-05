AVX-512-Swizzle-ZMM
===================

_mm512_mask_shuffle_epi8
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_mask_shuffle_epi8(__m512i src, __mmask64 k,
                                     __m512i a, __m512i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" within 128-bit lanes using the control in the corresponding 8-bit element of "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		IF b[i+7] == 1
        			dst[i+7:i] := 0
        		ELSE
        			index[5:0] := b[i+3:i] + (j & 0x30)
        			dst[i+7:i] := a[index*8+7:index*8]
        		FI
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shuffle_epi8
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_maskz_shuffle_epi8(__mmask64 k, __m512i a,
                                      __m512i b)

.. admonition:: Intel Description

    Shuffle packed 8-bit integers in "a" according to shuffle control mask in the corresponding 8-bit element of "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		IF b[i+7] == 1
        			dst[i+7:i] := 0
        		ELSE
        			index[5:0] := b[i+3:i] + (j & 0x30)
        			dst[i+7:i] := a[index*8+7:index*8]
        		FI
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shuffle_epi8
-------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m512i _mm512_shuffle_epi8(__m512i a, __m512i b);

.. admonition:: Intel Description

    Shuffle packed 8-bit integers in "a" according to shuffle control mask in the corresponding 8-bit element of "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF b[i+7] == 1
        		dst[i+7:i] := 0
        	ELSE
        		index[5:0] := b[i+3:i] + (j & 0x30)
        		dst[i+7:i] := a[index*8+7:index*8]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcastmb_epi64
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m512i _mm512_broadcastmb_epi64(__mmask8 k);

.. admonition:: Intel Description

    Broadcast the low 8-bits from input mask "k" to all 64-bit elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ZeroExtend64(k[7:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcastmw_epi32
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k
:Param ETypes:
    MASK k

.. code-block:: C

    __m512i _mm512_broadcastmw_epi32(__mmask16 k);

.. admonition:: Intel Description

    Broadcast the low 16-bits from input mask "k" to all 32-bit elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ZeroExtend32(k[15:0])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_compressstoreu_pd
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: void
:Param Types:
    void* base_addr, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 base_addr, 
    MASK k, 
    FP64 a

.. code-block:: C

    void _mm512_mask_compressstoreu_pd(void* base_addr,
                                       __mmask8 k, __m512d a)

.. admonition:: Intel Description

    Contiguously store the active double-precision (64-bit) floating-point elements in "a" (those with their respective bit set in writemask "k") to unaligned memory at "base_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := base_addr
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		MEM[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        	

_mm512_mask_compressstoreu_ps
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: void
:Param Types:
    void* base_addr, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 base_addr, 
    MASK k, 
    FP32 a

.. code-block:: C

    void _mm512_mask_compressstoreu_ps(void* base_addr,
                                       __mmask16 k, __m512 a)

.. admonition:: Intel Description

    Contiguously store the active single-precision (32-bit) floating-point elements in "a" (those with their respective bit set in writemask "k") to unaligned memory at "base_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := base_addr
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		MEM[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        	

_mm512_mask_compressstoreu_epi32
--------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: void
:Param Types:
    void* base_addr, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI32 base_addr, 
    MASK k, 
    UI32 a

.. code-block:: C

    void _mm512_mask_compressstoreu_epi32(void* base_addr,
                                          __mmask16 k,
                                          __m512i a)

.. admonition:: Intel Description

    Contiguously store the active 32-bit integers in "a" (those with their respective bit set in writemask "k") to unaligned memory at "base_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := base_addr
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		MEM[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        	

_mm512_mask_compressstoreu_epi64
--------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: void
:Param Types:
    void* base_addr, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI64 base_addr, 
    MASK k, 
    UI64 a

.. code-block:: C

    void _mm512_mask_compressstoreu_epi64(void* base_addr,
                                          __mmask8 k,
                                          __m512i a)

.. admonition:: Intel Description

    Contiguously store the active 64-bit integers in "a" (those with their respective bit set in writemask "k") to unaligned memory at "base_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := base_addr
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		MEM[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        	

_mm512_mask_expandloadu_pd
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m512d _mm512_mask_expandloadu_pd(__m512d src, __mmask8 k,
                                       void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active double-precision (64-bit) floating-point elements from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+m+63:mem_addr+m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expandloadu_pd
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m512d _mm512_maskz_expandloadu_pd(__mmask8 k,
                                        void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active double-precision (64-bit) floating-point elements from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+m+63:mem_addr+m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expandloadu_ps
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m512 _mm512_mask_expandloadu_ps(__m512 src, __mmask16 k,
                                      void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active single-precision (32-bit) floating-point elements from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+m+31:mem_addr+m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expandloadu_ps
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m512 _mm512_maskz_expandloadu_ps(__mmask16 k,
                                       void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active single-precision (32-bit) floating-point elements from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+m+31:mem_addr+m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expandloadu_epi32
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m512i _mm512_mask_expandloadu_epi32(__m512i src,
                                          __mmask16 k,
                                          void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 32-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+m+31:mem_addr+m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expandloadu_epi32
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_expandloadu_epi32(
        __mmask16 k, void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 32-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+m+31:mem_addr+m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expandloadu_epi64
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m512i _mm512_mask_expandloadu_epi64(__m512i src,
                                          __mmask8 k,
                                          void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 64-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+m+63:mem_addr+m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expandloadu_epi64
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_expandloadu_epi64(
        __mmask8 k, void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 64-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+m+63:mem_addr+m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_f32x4
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_broadcast_f32x4(__m128 a);

.. admonition:: Intel Description

    Broadcast the 4 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 4)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_f32x4
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_mask_broadcast_f32x4(__m512 src, __mmask16 k,
                                       __m128 a)

.. admonition:: Intel Description

    Broadcast the 4 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 4)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_f32x4
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_broadcast_f32x4(__mmask16 k, __m128 a);

.. admonition:: Intel Description

    Broadcast the 4 packed single-precision (32-bit) floating-point elements from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 4)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_f64x4
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_broadcast_f64x4(__m256d a);

.. admonition:: Intel Description

    Broadcast the 4 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 4)*64
        	dst[i+63:i] := a[n+63:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_f64x4
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m256d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_broadcast_f64x4(__m512d src, __mmask8 k,
                                        __m256d a)

.. admonition:: Intel Description

    Broadcast the 4 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 4)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_f64x4
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m256d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_broadcast_f64x4(__mmask8 k, __m256d a);

.. admonition:: Intel Description

    Broadcast the 4 packed double-precision (64-bit) floating-point elements from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 4)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_i32x4
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512i _mm512_broadcast_i32x4(__m128i a);

.. admonition:: Intel Description

    Broadcast the 4 packed 32-bit integers from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 4)*32
        	dst[i+31:i] := a[n+31:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_i32x4
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_mask_broadcast_i32x4(__m512i src,
                                        __mmask16 k, __m128i a)

.. admonition:: Intel Description

    Broadcast the 4 packed 32-bit integers from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 4)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_i32x4
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_broadcast_i32x4(__mmask16 k,
                                         __m128i a)

.. admonition:: Intel Description

    Broadcast the 4 packed 32-bit integers from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	n := (j % 4)*32
        	IF k[j]
        		dst[i+31:i] := a[n+31:n]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcast_i64x4
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m512i _mm512_broadcast_i64x4(__m256i a);

.. admonition:: Intel Description

    Broadcast the 4 packed 64-bit integers from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 4)*64
        	dst[i+63:i] := a[n+63:n]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcast_i64x4
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_mask_broadcast_i64x4(__m512i src, __mmask8 k,
                                        __m256i a)

.. admonition:: Intel Description

    Broadcast the 4 packed 64-bit integers from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 4)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcast_i64x4
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_maskz_broadcast_i64x4(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Broadcast the 4 packed 64-bit integers from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	n := (j % 4)*64
        	IF k[j]
        		dst[i+63:i] := a[n+63:n]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcastsd_pd
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m128d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_broadcastsd_pd(__m128d a);

.. admonition:: Intel Description

    Broadcast the low double-precision (64-bit) floating-point element from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[63:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcastsd_pd
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512d _mm512_mask_broadcastsd_pd(__m512d src, __mmask8 k,
                                       __m128d a)

.. admonition:: Intel Description

    Broadcast the low double-precision (64-bit) floating-point element from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcastsd_pd
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_broadcastsd_pd(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Broadcast the low double-precision (64-bit) floating-point element from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcastss_ps
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m128 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_broadcastss_ps(__m128 a);

.. admonition:: Intel Description

    Broadcast the low single-precision (32-bit) floating-point element from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[31:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcastss_ps
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_mask_broadcastss_ps(__m512 src, __mmask16 k,
                                      __m128 a)

.. admonition:: Intel Description

    Broadcast the low single-precision (32-bit) floating-point element from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcastss_ps
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_broadcastss_ps(__mmask16 k, __m128 a);

.. admonition:: Intel Description

    Broadcast the low single-precision (32-bit) floating-point element from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_compress_pd
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512d _mm512_mask_compress_pd(__m512d src, __mmask8 k,
                                    __m512d a)

.. admonition:: Intel Description

    Contiguously store the active double-precision (64-bit) floating-point elements in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := src[511:m]
        dst[MAX:512] := 0
        	

_mm512_maskz_compress_pd
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_compress_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Contiguously store the active double-precision (64-bit) floating-point elements in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := 0
        dst[MAX:512] := 0
        	

_mm512_mask_compress_ps
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_mask_compress_ps(__m512 src, __mmask16 k,
                                   __m512 a)

.. admonition:: Intel Description

    Contiguously store the active single-precision (32-bit) floating-point elements in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := src[511:m]
        dst[MAX:512] := 0
        	

_mm512_maskz_compress_ps
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_compress_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Contiguously store the active single-precision (32-bit) floating-point elements in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := 0
        dst[MAX:512] := 0
        	

_mm512_mask_expand_pd
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512d _mm512_mask_expand_pd(__m512d src, __mmask8 k,
                                  __m512d a)

.. admonition:: Intel Description

    Load contiguous active double-precision (64-bit) floating-point elements from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[m+63:m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expand_pd
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_expand_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Load contiguous active double-precision (64-bit) floating-point elements from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[m+63:m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expand_ps
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_mask_expand_ps(__m512 src, __mmask16 k,
                                 __m512 a)

.. admonition:: Intel Description

    Load contiguous active single-precision (32-bit) floating-point elements from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[m+31:m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expand_ps
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_expand_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Load contiguous active single-precision (32-bit) floating-point elements from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[m+31:m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_extractf32x4_ps
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m128
:Param Types:
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128 _mm512_extractf32x4_ps(__m512 a, int imm8);

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: dst[127:0] := a[127:0]
        1: dst[127:0] := a[255:128]
        2: dst[127:0] := a[383:256]
        3: dst[127:0] := a[511:384]
        ESAC
        dst[MAX:128] := 0
        	

_mm512_mask_extractf32x4_ps
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m512 a, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128 _mm512_mask_extractf32x4_ps(__m128 src, __mmask8 k,
                                       __m512 a, int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        2: tmp[127:0] := a[383:256]
        3: tmp[127:0] := a[511:384]
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
        	

_mm512_maskz_extractf32x4_ps
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m512 a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m128 _mm512_maskz_extractf32x4_ps(__mmask8 k, __m512 a,
                                        int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        2: tmp[127:0] := a[383:256]
        3: tmp[127:0] := a[511:384]
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
        	

_mm512_extractf64x4_pd
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m256d
:Param Types:
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm512_extractf64x4_pd(__m512d a, int imm8);

.. admonition:: Intel Description

    Extract 256 bits (composed of 4 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: dst[255:0] := a[255:0]
        1: dst[255:0] := a[511:256]
        ESAC
        dst[MAX:256] := 0
        	

_mm512_mask_extractf64x4_pd
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m512d a, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm512_mask_extractf64x4_pd(__m256d src, __mmask8 k,
                                        __m512d a, int imm8)

.. admonition:: Intel Description

    Extract 256 bits (composed of 4 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[255:0] := a[255:0]
        1: tmp[255:0] := a[511:256]
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
        	

_mm512_maskz_extractf64x4_pd
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m256d _mm512_maskz_extractf64x4_pd(__mmask8 k, __m512d a,
                                         int imm8)

.. admonition:: Intel Description

    Extract 256 bits (composed of 4 packed double-precision (64-bit) floating-point elements) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[255:0] := a[255:0]
        1: tmp[255:0] := a[511:256]
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
        	

_mm512_extracti32x4_epi32
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm512_extracti32x4_epi32(__m512i a, int imm8);

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed 32-bit integers) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: dst[127:0] := a[127:0]
        1: dst[127:0] := a[255:128]
        2: dst[127:0] := a[383:256]
        3: dst[127:0] := a[511:384]
        ESAC
        dst[MAX:128] := 0
        	

_mm512_mask_extracti32x4_epi32
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm512_mask_extracti32x4_epi32(__m128i src,
                                           __mmask8 k,
                                           __m512i a, int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed 32-bit integers) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        2: tmp[127:0] := a[383:256]
        3: tmp[127:0] := a[511:384]
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
        	

_mm512_maskz_extracti32x4_epi32
-------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m128i _mm512_maskz_extracti32x4_epi32(__mmask8 k,
                                            __m512i a,
                                            int imm8)

.. admonition:: Intel Description

    Extract 128 bits (composed of 4 packed 32-bit integers) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[1:0] OF
        0: tmp[127:0] := a[127:0]
        1: tmp[127:0] := a[255:128]
        2: tmp[127:0] := a[383:256]
        3: tmp[127:0] := a[511:384]
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
        	

_mm512_extracti64x4_epi64
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i a, 
    int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm512_extracti64x4_epi64(__m512i a, int imm8);

.. admonition:: Intel Description

    Extract 256 bits (composed of 4 packed 64-bit integers) from "a", selected with "imm8", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: dst[255:0] := a[255:0]
        1: dst[255:0] := a[511:256]
        ESAC
        dst[MAX:256] := 0
        	

_mm512_mask_extracti64x4_epi64
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm512_mask_extracti64x4_epi64(__m256i src,
                                           __mmask8 k,
                                           __m512i a, int imm8)

.. admonition:: Intel Description

    Extract 256 bits (composed of 4 packed 64-bit integers) from "a", selected with "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[255:0] := a[255:0]
        1: tmp[255:0] := a[511:256]
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
        	

_mm512_maskz_extracti64x4_epi64
-------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m256i _mm512_maskz_extracti64x4_epi64(__mmask8 k,
                                            __m512i a,
                                            int imm8)

.. admonition:: Intel Description

    Extract 256 bits (composed of 4 packed 64-bit integers) from "a", selected with "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        CASE imm8[0] OF
        0: tmp[255:0] := a[255:0]
        1: tmp[255:0] := a[511:256]
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
        	

_mm512_insertf32x4
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m128 b, 
    int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_insertf32x4(__m512 a, __m128 b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: dst[127:0] := b[127:0]
        1: dst[255:128] := b[127:0]
        2: dst[383:256] := b[127:0]
        3: dst[511:384] := b[127:0]
        ESAC
        dst[MAX:512] := 0
        	

_mm512_mask_insertf32x4
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m128 b, 
    int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_insertf32x4(__m512 src, __mmask16 k,
                                   __m512 a, __m128 b,
                                   int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        2: tmp[383:256] := b[127:0]
        3: tmp[511:384] := b[127:0]
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
        	

_mm512_maskz_insertf32x4
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m128 b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_insertf32x4(__mmask16 k, __m512 a,
                                    __m128 b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 4 packed single-precision (32-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        2: tmp[383:256] := b[127:0]
        3: tmp[511:384] := b[127:0]
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
        	

_mm512_insertf64x4
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m256d b, 
    int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_insertf64x4(__m512d a, __m256d b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 256 bits (composed of 4 packed double-precision (64-bit) floating-point elements) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: dst[255:0] := b[255:0]
        1: dst[511:256] := b[255:0]
        ESAC
        dst[MAX:512] := 0
        	

_mm512_mask_insertf64x4
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m256d b, 
    int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_insertf64x4(__m512d src, __mmask8 k,
                                    __m512d a, __m256d b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 256 bits (composed of 4 packed double-precision (64-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: tmp[255:0] := b[255:0]
        1: tmp[511:256] := b[255:0]
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
        	

_mm512_maskz_insertf64x4
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m256d b, 
    int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_insertf64x4(__mmask8 k, __m512d a,
                                     __m256d b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 256 bits (composed of 4 packed double-precision (64-bit) floating-point elements) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: tmp[255:0] := b[255:0]
        1: tmp[511:256] := b[255:0]
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
        	

_mm512_inserti32x4
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_inserti32x4(__m512i a, __m128i b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 128 bits (composed of 4 packed 32-bit integers) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: dst[127:0] := b[127:0]
        1: dst[255:128] := b[127:0]
        2: dst[383:256] := b[127:0]
        3: dst[511:384] := b[127:0]
        ESAC
        dst[MAX:512] := 0
        	

_mm512_mask_inserti32x4
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_inserti32x4(__m512i src, __mmask16 k,
                                    __m512i a, __m128i b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 4 packed 32-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        2: tmp[383:256] := b[127:0]
        3: tmp[511:384] := b[127:0]
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
        	

_mm512_maskz_inserti32x4
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m128i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_inserti32x4(__mmask16 k, __m512i a,
                                     __m128i b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 128 bits (composed of 4 packed 32-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[1:0]) OF
        0: tmp[127:0] := b[127:0]
        1: tmp[255:128] := b[127:0]
        2: tmp[383:256] := b[127:0]
        3: tmp[511:384] := b[127:0]
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
        	

_mm512_inserti64x4
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_inserti64x4(__m512i a, __m256i b, int imm8);

.. admonition:: Intel Description

    Copy "a" to "dst", then insert 256 bits (composed of 4 packed 64-bit integers) from "b" into "dst" at the location specified by "imm8".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: dst[255:0] := b[255:0]
        1: dst[511:256] := b[255:0]
        ESAC
        dst[MAX:512] := 0
        	

_mm512_mask_inserti64x4
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_inserti64x4(__m512i src, __mmask8 k,
                                    __m512i a, __m256i b,
                                    int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 256 bits (composed of 4 packed 64-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: tmp[255:0] := b[255:0]
        1: tmp[511:256] := b[255:0]
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
        	

_mm512_maskz_inserti64x4
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m256i b, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_inserti64x4(__mmask8 k, __m512i a,
                                     __m256i b, int imm8)

.. admonition:: Intel Description

    Copy "a" to "tmp", then insert 256 bits (composed of 4 packed 64-bit integers) from "b" into "tmp" at the location specified by "imm8".  Store "tmp" to "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[511:0] := a[511:0]
        CASE (imm8[0]) OF
        0: tmp[255:0] := b[255:0]
        1: tmp[511:256] := b[255:0]
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
        	

_mm512_broadcastd_epi32
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m512i _mm512_broadcastd_epi32(__m128i a);

.. admonition:: Intel Description

    Broadcast the low packed 32-bit integer from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[31:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcastd_epi32
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_mask_broadcastd_epi32(__m512i src,
                                         __mmask16 k,
                                         __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 32-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcastd_epi32
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_broadcastd_epi32(__mmask16 k,
                                          __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 32-bit integer from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_broadcastq_epi64
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m128i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m512i _mm512_broadcastq_epi64(__m128i a);

.. admonition:: Intel Description

    Broadcast the low packed 64-bit integer from "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[63:0]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_broadcastq_epi64
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_mask_broadcastq_epi64(__m512i src,
                                         __mmask8 k, __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 64-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_broadcastq_epi64
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_maskz_broadcastq_epi64(__mmask8 k,
                                          __m128i a)

.. admonition:: Intel Description

    Broadcast the low packed 64-bit integer from "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_compress_epi32
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_compress_epi32(__m512i src, __mmask16 k,
                                       __m512i a)

.. admonition:: Intel Description

    Contiguously store the active 32-bit integers in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := src[511:m]
        dst[MAX:512] := 0
        	

_mm512_maskz_compress_epi32
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_compress_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Contiguously store the active 32-bit integers in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 32
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[m+size-1:m] := a[i+31:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := 0
        dst[MAX:512] := 0
        	

_mm512_mask_compress_epi64
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_mask_compress_epi64(__m512i src, __mmask8 k,
                                       __m512i a)

.. admonition:: Intel Description

    Contiguously store the active 64-bit integers in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := src[511:m]
        dst[MAX:512] := 0
        	

_mm512_maskz_compress_epi64
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_maskz_compress_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Contiguously store the active 64-bit integers in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 64
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[m+size-1:m] := a[i+63:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := 0
        dst[MAX:512] := 0
        	

_mm512_mask_permutexvar_epi32
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 idx, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_permutexvar_epi32(__m512i src,
                                          __mmask16 k,
                                          __m512i idx,
                                          __m512i a)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	id := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutexvar_epi32
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 idx, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_permutexvar_epi32(__mmask16 k,
                                           __m512i idx,
                                           __m512i a)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	id := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutexvar_epi32
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI32 idx, 
    UI32 a

.. code-block:: C

    __m512i _mm512_permutexvar_epi32(__m512i idx, __m512i a);

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	id := idx[i+3:i]*32
        	dst[i+31:i] := a[id+31:id]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask2_permutex2var_epi32
-------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i idx, 
    __mmask16 k, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 idx, 
    MASK k, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask2_permutex2var_epi32(__m512i a,
                                            __m512i idx,
                                            __mmask16 k,
                                            __m512i b)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	off := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := idx[i+4] ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := idx[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutex2var_epi32
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask16 k, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    UI32 a, 
    MASK k, 
    UI32 idx, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_permutex2var_epi32(__m512i a,
                                           __mmask16 k,
                                           __m512i idx,
                                           __m512i b)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	off := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := idx[i+4] ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutex2var_epi32
-------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 idx, 
    UI32 b

.. code-block:: C

    __m512i _mm512_maskz_permutex2var_epi32(__mmask16 k,
                                            __m512i a,
                                            __m512i idx,
                                            __m512i b)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	off := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := (idx[i+4]) ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutex2var_epi32
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 idx, 
    UI32 b

.. code-block:: C

    __m512i _mm512_permutex2var_epi32(__m512i a, __m512i idx,
                                      __m512i b)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	off := idx[i+3:i]*32
        	dst[i+31:i] := idx[i+4] ? b[off+31:off] : a[off+31:off]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask2_permutex2var_pd
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512i idx, 
    __mmask8 k, 
    __m512d b
:Param ETypes:
    FP64 a, 
    UI64 idx, 
    MASK k, 
    FP64 b

.. code-block:: C

    __m512d _mm512_mask2_permutex2var_pd(__m512d a, __m512i idx,
                                         __mmask8 k, __m512d b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set)

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	off := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := idx[i+3] ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := idx[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutex2var_pd
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __mmask8 k, 
    __m512i idx, 
    __m512d b
:Param ETypes:
    FP64 a, 
    MASK k, 
    UI64 idx, 
    FP64 b

.. code-block:: C

    __m512d _mm512_mask_permutex2var_pd(__m512d a, __mmask8 k,
                                        __m512i idx, __m512d b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	off := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := idx[i+3] ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutex2var_pd
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512i idx, 
    __m512d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    UI64 idx, 
    FP64 b

.. code-block:: C

    __m512d _mm512_maskz_permutex2var_pd(__mmask8 k, __m512d a,
                                         __m512i idx,
                                         __m512d b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	off := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := (idx[i+3]) ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutex2var_pd
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512i idx, 
    __m512d b
:Param ETypes:
    FP64 a, 
    UI64 idx, 
    FP64 b

.. code-block:: C

    __m512d _mm512_permutex2var_pd(__m512d a, __m512i idx,
                                   __m512d b)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	off := idx[i+2:i]*64
        	dst[i+63:i] := idx[i+3] ? b[off+63:off] : a[off+63:off]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask2_permutex2var_ps
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512i idx, 
    __mmask16 k, 
    __m512 b
:Param ETypes:
    FP32 a, 
    UI32 idx, 
    MASK k, 
    FP32 b

.. code-block:: C

    __m512 _mm512_mask2_permutex2var_ps(__m512 a, __m512i idx,
                                        __mmask16 k, __m512 b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	off := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := idx[i+4] ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := idx[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutex2var_ps
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __mmask16 k, 
    __m512i idx, 
    __m512 b
:Param ETypes:
    FP32 a, 
    MASK k, 
    UI32 idx, 
    FP32 b

.. code-block:: C

    __m512 _mm512_mask_permutex2var_ps(__m512 a, __mmask16 k,
                                       __m512i idx, __m512 b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	off := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := idx[i+4] ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutex2var_ps
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512i idx, 
    __m512 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    UI32 idx, 
    FP32 b

.. code-block:: C

    __m512 _mm512_maskz_permutex2var_ps(__mmask16 k, __m512 a,
                                        __m512i idx, __m512 b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	off := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := (idx[i+4]) ? b[off+31:off] : a[off+31:off]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutex2var_ps
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512i idx, 
    __m512 b
:Param ETypes:
    FP32 a, 
    UI32 idx, 
    FP32 b

.. code-block:: C

    __m512 _mm512_permutex2var_ps(__m512 a, __m512i idx,
                                  __m512 b)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	off := idx[i+3:i]*32
        	dst[i+31:i] := idx[i+4] ? b[off+31:off] : a[off+31:off]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask2_permutex2var_epi64
-------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i idx, 
    __mmask8 k, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 idx, 
    MASK k, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask2_permutex2var_epi64(__m512i a,
                                            __m512i idx,
                                            __mmask8 k,
                                            __m512i b)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "idx" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	off := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := idx[i+3] ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := idx[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutex2var_epi64
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask8 k, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    UI64 a, 
    MASK k, 
    UI64 idx, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_permutex2var_epi64(__m512i a,
                                           __mmask8 k,
                                           __m512i idx,
                                           __m512i b)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	off := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := idx[i+3] ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutex2var_epi64
-------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 idx, 
    UI64 b

.. code-block:: C

    __m512i _mm512_maskz_permutex2var_epi64(__mmask8 k,
                                            __m512i a,
                                            __m512i idx,
                                            __m512i b)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	off := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := (idx[i+3]) ? b[off+63:off] : a[off+63:off]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutex2var_epi64
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 idx, 
    UI64 b

.. code-block:: C

    __m512i _mm512_permutex2var_epi64(__m512i a, __m512i idx,
                                      __m512i b)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	off := idx[i+2:i]*64
        	dst[i+63:i] := idx[i+3] ? b[off+63:off] : a[off+63:off]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permute_pd
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    const int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_permute_pd(__m512d src, __mmask8 k,
                                   __m512d a, const int imm8)

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
        IF (imm8[4] == 0) tmp_dst[319:256] := a[319:256]; FI
        IF (imm8[4] == 1) tmp_dst[319:256] := a[383:320]; FI
        IF (imm8[5] == 0) tmp_dst[383:320] := a[319:256]; FI
        IF (imm8[5] == 1) tmp_dst[383:320] := a[383:320]; FI
        IF (imm8[6] == 0) tmp_dst[447:384] := a[447:384]; FI
        IF (imm8[6] == 1) tmp_dst[447:384] := a[511:448]; FI
        IF (imm8[7] == 0) tmp_dst[511:448] := a[447:384]; FI
        IF (imm8[7] == 1) tmp_dst[511:448] := a[511:448]; FI
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutevar_pd
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512i b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    UI64 b

.. code-block:: C

    __m512d _mm512_mask_permutevar_pd(__m512d src, __mmask8 k,
                                      __m512d a, __m512i b)

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
        IF (b[257] == 0) tmp_dst[319:256] := a[319:256]; FI
        IF (b[257] == 1) tmp_dst[319:256] := a[383:320]; FI
        IF (b[321] == 0) tmp_dst[383:320] := a[319:256]; FI
        IF (b[321] == 1) tmp_dst[383:320] := a[383:320]; FI
        IF (b[385] == 0) tmp_dst[447:384] := a[447:384]; FI
        IF (b[385] == 1) tmp_dst[447:384] := a[511:448]; FI
        IF (b[449] == 0) tmp_dst[511:448] := a[447:384]; FI
        IF (b[449] == 1) tmp_dst[511:448] := a[511:448]; FI
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permute_pd
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_permute_pd(__mmask8 k, __m512d a,
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
        IF (imm8[4] == 0) tmp_dst[319:256] := a[319:256]; FI
        IF (imm8[4] == 1) tmp_dst[319:256] := a[383:320]; FI
        IF (imm8[5] == 0) tmp_dst[383:320] := a[319:256]; FI
        IF (imm8[5] == 1) tmp_dst[383:320] := a[383:320]; FI
        IF (imm8[6] == 0) tmp_dst[447:384] := a[447:384]; FI
        IF (imm8[6] == 1) tmp_dst[447:384] := a[511:448]; FI
        IF (imm8[7] == 0) tmp_dst[511:448] := a[447:384]; FI
        IF (imm8[7] == 1) tmp_dst[511:448] := a[511:448]; FI
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutevar_pd
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512i b
:Param ETypes:
    MASK k, 
    FP64 a, 
    UI64 b

.. code-block:: C

    __m512d _mm512_maskz_permutevar_pd(__mmask8 k, __m512d a,
                                       __m512i b)

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
        IF (b[257] == 0) tmp_dst[319:256] := a[319:256]; FI
        IF (b[257] == 1) tmp_dst[319:256] := a[383:320]; FI
        IF (b[321] == 0) tmp_dst[383:320] := a[319:256]; FI
        IF (b[321] == 1) tmp_dst[383:320] := a[383:320]; FI
        IF (b[385] == 0) tmp_dst[447:384] := a[447:384]; FI
        IF (b[385] == 1) tmp_dst[447:384] := a[511:448]; FI
        IF (b[449] == 0) tmp_dst[511:448] := a[447:384]; FI
        IF (b[449] == 1) tmp_dst[511:448] := a[511:448]; FI
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permute_pd
-----------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    const int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_permute_pd(__m512d a, const int imm8);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF (imm8[0] == 0) dst[63:0] := a[63:0]; FI
        IF (imm8[0] == 1) dst[63:0] := a[127:64]; FI
        IF (imm8[1] == 0) dst[127:64] := a[63:0]; FI
        IF (imm8[1] == 1) dst[127:64] := a[127:64]; FI
        IF (imm8[2] == 0) dst[191:128] := a[191:128]; FI
        IF (imm8[2] == 1) dst[191:128] := a[255:192]; FI
        IF (imm8[3] == 0) dst[255:192] := a[191:128]; FI
        IF (imm8[3] == 1) dst[255:192] := a[255:192]; FI
        IF (imm8[4] == 0) dst[319:256] := a[319:256]; FI
        IF (imm8[4] == 1) dst[319:256] := a[383:320]; FI
        IF (imm8[5] == 0) dst[383:320] := a[319:256]; FI
        IF (imm8[5] == 1) dst[383:320] := a[383:320]; FI
        IF (imm8[6] == 0) dst[447:384] := a[447:384]; FI
        IF (imm8[6] == 1) dst[447:384] := a[511:448]; FI
        IF (imm8[7] == 0) dst[511:448] := a[447:384]; FI
        IF (imm8[7] == 1) dst[511:448] := a[511:448]; FI
        dst[MAX:512] := 0
        	

_mm512_permutevar_pd
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512i b
:Param ETypes:
    FP64 a, 
    UI64 b

.. code-block:: C

    __m512d _mm512_permutevar_pd(__m512d a, __m512i b);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 128-bit lanes using the control in "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF (b[1] == 0) dst[63:0] := a[63:0]; FI
        IF (b[1] == 1) dst[63:0] := a[127:64]; FI
        IF (b[65] == 0) dst[127:64] := a[63:0]; FI
        IF (b[65] == 1) dst[127:64] := a[127:64]; FI
        IF (b[129] == 0) dst[191:128] := a[191:128]; FI
        IF (b[129] == 1) dst[191:128] := a[255:192]; FI
        IF (b[193] == 0) dst[255:192] := a[191:128]; FI
        IF (b[193] == 1) dst[255:192] := a[255:192]; FI
        IF (b[257] == 0) dst[319:256] := a[319:256]; FI
        IF (b[257] == 1) dst[319:256] := a[383:320]; FI
        IF (b[321] == 0) dst[383:320] := a[319:256]; FI
        IF (b[321] == 1) dst[383:320] := a[383:320]; FI
        IF (b[385] == 0) dst[447:384] := a[447:384]; FI
        IF (b[385] == 1) dst[447:384] := a[511:448]; FI
        IF (b[449] == 0) dst[511:448] := a[447:384]; FI
        IF (b[449] == 1) dst[511:448] := a[511:448]; FI
        dst[MAX:512] := 0
        	

_mm512_mask_permute_ps
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    const int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_permute_ps(__m512 src, __mmask16 k,
                                  __m512 a, const int imm8)

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
        tmp_dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        tmp_dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        tmp_dst[351:320] := SELECT4(a[383:256], imm8[5:4])
        tmp_dst[383:352] := SELECT4(a[383:256], imm8[7:6])
        tmp_dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        tmp_dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        tmp_dst[479:448] := SELECT4(a[511:384], imm8[5:4])
        tmp_dst[511:480] := SELECT4(a[511:384], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutevar_ps
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512i b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    UI32 b

.. code-block:: C

    __m512 _mm512_mask_permutevar_ps(__m512 src, __mmask16 k,
                                     __m512 a, __m512i b)

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
        tmp_dst[287:256] := SELECT4(a[383:256], b[257:256])
        tmp_dst[319:288] := SELECT4(a[383:256], b[289:288])
        tmp_dst[351:320] := SELECT4(a[383:256], b[321:320])
        tmp_dst[383:352] := SELECT4(a[383:256], b[353:352])
        tmp_dst[415:384] := SELECT4(a[511:384], b[385:384])
        tmp_dst[447:416] := SELECT4(a[511:384], b[417:416])
        tmp_dst[479:448] := SELECT4(a[511:384], b[449:448])
        tmp_dst[511:480] := SELECT4(a[511:384], b[481:480])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permute_ps
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_permute_ps(__mmask16 k, __m512 a,
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
        tmp_dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        tmp_dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        tmp_dst[351:320] := SELECT4(a[383:256], imm8[5:4])
        tmp_dst[383:352] := SELECT4(a[383:256], imm8[7:6])
        tmp_dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        tmp_dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        tmp_dst[479:448] := SELECT4(a[511:384], imm8[5:4])
        tmp_dst[511:480] := SELECT4(a[511:384], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutevar_ps
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512i b
:Param ETypes:
    MASK k, 
    FP32 a, 
    UI32 b

.. code-block:: C

    __m512 _mm512_maskz_permutevar_ps(__mmask16 k, __m512 a,
                                      __m512i b)

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
        tmp_dst[287:256] := SELECT4(a[383:256], b[257:256])
        tmp_dst[319:288] := SELECT4(a[383:256], b[289:288])
        tmp_dst[351:320] := SELECT4(a[383:256], b[321:320])
        tmp_dst[383:352] := SELECT4(a[383:256], b[353:352])
        tmp_dst[415:384] := SELECT4(a[511:384], b[385:384])
        tmp_dst[447:416] := SELECT4(a[511:384], b[417:416])
        tmp_dst[479:448] := SELECT4(a[511:384], b[449:448])
        tmp_dst[511:480] := SELECT4(a[511:384], b[481:480])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permute_ps
-----------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    const int imm8
:Param ETypes:
    FP32 a, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_permute_ps(__m512 a, const int imm8);

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst".

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
        dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        dst[223:192] := SELECT4(a[255:128], imm8[5:4])
        dst[255:224] := SELECT4(a[255:128], imm8[7:6])
        dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        dst[351:320] := SELECT4(a[383:256], imm8[5:4])
        dst[383:352] := SELECT4(a[383:256], imm8[7:6])
        dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        dst[479:448] := SELECT4(a[511:384], imm8[5:4])
        dst[511:480] := SELECT4(a[511:384], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_permutevar_ps
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512i b
:Param ETypes:
    FP32 a, 
    UI32 b

.. code-block:: C

    __m512 _mm512_permutevar_ps(__m512 a, __m512i b);

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "b", and store the results in "dst".

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
        dst[159:128] := SELECT4(a[255:128], b[129:128])
        dst[191:160] := SELECT4(a[255:128], b[161:160])
        dst[223:192] := SELECT4(a[255:128], b[193:192])
        dst[255:224] := SELECT4(a[255:128], b[225:224])
        dst[287:256] := SELECT4(a[383:256], b[257:256])
        dst[319:288] := SELECT4(a[383:256], b[289:288])
        dst[351:320] := SELECT4(a[383:256], b[321:320])
        dst[383:352] := SELECT4(a[383:256], b[353:352])
        dst[415:384] := SELECT4(a[511:384], b[385:384])
        dst[447:416] := SELECT4(a[511:384], b[417:416])
        dst[479:448] := SELECT4(a[511:384], b[449:448])
        dst[511:480] := SELECT4(a[511:384], b[481:480])
        dst[MAX:512] := 0
        	

_mm512_mask_permutex_pd
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    const int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_permutex_pd(__m512d src, __mmask8 k,
                                    __m512d a, const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 256-bit lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

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
        tmp_dst[319:256] := SELECT4(a[511:256], imm8[1:0])
        tmp_dst[383:320] := SELECT4(a[511:256], imm8[3:2])
        tmp_dst[447:384] := SELECT4(a[511:256], imm8[5:4])
        tmp_dst[511:448] := SELECT4(a[511:256], imm8[7:6])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutexvar_pd
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i idx, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    UI64 idx, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_permutexvar_pd(__m512d src, __mmask8 k,
                                       __m512i idx, __m512d a)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	id := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := a[id+63:id]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutex_pd
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_permutex_pd(__mmask8 k, __m512d a,
                                     const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 256-bit lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

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
        tmp_dst[319:256] := SELECT4(a[511:256], imm8[1:0])
        tmp_dst[383:320] := SELECT4(a[511:256], imm8[3:2])
        tmp_dst[447:384] := SELECT4(a[511:256], imm8[5:4])
        tmp_dst[511:448] := SELECT4(a[511:256], imm8[7:6])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutexvar_pd
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512i idx, 
    __m512d a
:Param ETypes:
    MASK k, 
    UI64 idx, 
    FP64 a

.. code-block:: C

    __m512d _mm512_maskz_permutexvar_pd(__mmask8 k, __m512i idx,
                                        __m512d a)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	id := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := a[id+63:id]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutex_pd
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    const int imm8
:Param ETypes:
    FP64 a, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_permutex_pd(__m512d a, const int imm8);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" within 256-bit lanes using the control in "imm8", and store the results in "dst".

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
        dst[319:256] := SELECT4(a[511:256], imm8[1:0])
        dst[383:320] := SELECT4(a[511:256], imm8[3:2])
        dst[447:384] := SELECT4(a[511:256], imm8[5:4])
        dst[511:448] := SELECT4(a[511:256], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_permutexvar_pd
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i idx, 
    __m512d a
:Param ETypes:
    UI64 idx, 
    FP64 a

.. code-block:: C

    __m512d _mm512_permutexvar_pd(__m512i idx, __m512d a);

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	id := idx[i+2:i]*64
        	dst[i+63:i] := a[id+63:id]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutexvar_ps
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512i idx, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    UI32 idx, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_permutexvar_ps(__m512 src, __mmask16 k,
                                      __m512i idx, __m512 a)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	id := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutexvar_ps
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512i idx, 
    __m512 a
:Param ETypes:
    MASK k, 
    UI32 idx, 
    FP32 a

.. code-block:: C

    __m512 _mm512_maskz_permutexvar_ps(__mmask16 k, __m512i idx,
                                       __m512 a)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	id := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutexvar_ps
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512i idx, 
    __m512 a
:Param ETypes:
    UI32 idx, 
    FP32 a

.. code-block:: C

    __m512 _mm512_permutexvar_ps(__m512i idx, __m512 a);

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" across lanes using the corresponding index in "idx".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	id := idx[i+3:i]*32
        	dst[i+31:i] := a[id+31:id]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutex_epi64
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    const int imm8
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_permutex_epi64(__m512i src, __mmask8 k,
                                       __m512i a,
                                       const int imm8)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" within 256-bit lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

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
        tmp_dst[319:256] := SELECT4(a[511:256], imm8[1:0])
        tmp_dst[383:320] := SELECT4(a[511:256], imm8[3:2])
        tmp_dst[447:384] := SELECT4(a[511:256], imm8[5:4])
        tmp_dst[511:448] := SELECT4(a[511:256], imm8[7:6])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutexvar_epi64
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 idx, 
    UI64 a

.. code-block:: C

    __m512i _mm512_mask_permutexvar_epi64(__m512i src,
                                          __mmask8 k,
                                          __m512i idx,
                                          __m512i a)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	id := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := a[id+63:id]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutex_epi64
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    const int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_permutex_epi64(__mmask8 k, __m512i a,
                                        const int imm8)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" within 256-bit lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

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
        tmp_dst[319:256] := SELECT4(a[511:256], imm8[1:0])
        tmp_dst[383:320] := SELECT4(a[511:256], imm8[3:2])
        tmp_dst[447:384] := SELECT4(a[511:256], imm8[5:4])
        tmp_dst[511:448] := SELECT4(a[511:256], imm8[7:6])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutexvar_epi64
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 idx, 
    UI64 a

.. code-block:: C

    __m512i _mm512_maskz_permutexvar_epi64(__mmask8 k,
                                           __m512i idx,
                                           __m512i a)

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	id := idx[i+2:i]*64
        	IF k[j]
        		dst[i+63:i] := a[id+63:id]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutex_epi64
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    const int imm8
:Param ETypes:
    UI64 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_permutex_epi64(__m512i a, const int imm8);

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" within 256-bit lanes using the control in "imm8", and store the results in "dst".

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
        dst[319:256] := SELECT4(a[511:256], imm8[1:0])
        dst[383:320] := SELECT4(a[511:256], imm8[3:2])
        dst[447:384] := SELECT4(a[511:256], imm8[5:4])
        dst[511:448] := SELECT4(a[511:256], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_permutexvar_epi64
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI64 idx, 
    UI64 a

.. code-block:: C

    __m512i _mm512_permutexvar_epi64(__m512i idx, __m512i a);

.. admonition:: Intel Description

    Shuffle 64-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	id := idx[i+2:i]*64
        	dst[i+63:i] := a[id+63:id]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expand_epi32
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_expand_epi32(__m512i src, __mmask16 k,
                                     __m512i a)

.. admonition:: Intel Description

    Load contiguous active 32-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[m+31:m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expand_epi32
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m512i _mm512_maskz_expand_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Load contiguous active 32-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[m+31:m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expand_epi64
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_mask_expand_epi64(__m512i src, __mmask8 k,
                                     __m512i a)

.. admonition:: Intel Description

    Load contiguous active 64-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[m+63:m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expand_epi64
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m512i _mm512_maskz_expand_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Load contiguous active 64-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[m+63:m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shuffle_epi32
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    _MM_PERM_ENUM imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_shuffle_epi32(__mmask16 k, __m512i a,
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
        tmp_dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        tmp_dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        tmp_dst[351:320] := SELECT4(a[383:256], imm8[5:4])
        tmp_dst[383:352] := SELECT4(a[383:256], imm8[7:6])
        tmp_dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        tmp_dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        tmp_dst[479:448] := SELECT4(a[511:384], imm8[5:4])
        tmp_dst[511:480] := SELECT4(a[511:384], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_unpackhi_epi32
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_unpackhi_epi32(__m512i src, __mmask16 k,
                                       __m512i a, __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_DWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_DWORDS(a[511:384], b[511:384])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpackhi_epi32
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_maskz_unpackhi_epi32(__mmask16 k, __m512i a,
                                        __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_DWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_DWORDS(a[511:384], b[511:384])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpackhi_epi32
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_unpackhi_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst".

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
        dst[255:128] := INTERLEAVE_HIGH_DWORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_HIGH_DWORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_HIGH_DWORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpackhi_epi64
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_unpackhi_epi64(__m512i src, __mmask8 k,
                                       __m512i a, __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_QWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_QWORDS(a[511:384], b[511:384])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpackhi_epi64
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_maskz_unpackhi_epi64(__mmask8 k, __m512i a,
                                        __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_QWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_QWORDS(a[511:384], b[511:384])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpackhi_epi64
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_unpackhi_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Unpack and interleave 64-bit integers from the high half of each 128-bit lane in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[127:64] 
        	dst[127:64] := src2[127:64] 
        	RETURN dst[127:0]	
        }
        dst[127:0] := INTERLEAVE_HIGH_QWORDS(a[127:0], b[127:0])
        dst[255:128] := INTERLEAVE_HIGH_QWORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_HIGH_QWORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_HIGH_QWORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpacklo_epi32
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_mask_unpacklo_epi32(__m512i src, __mmask16 k,
                                       __m512i a, __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_DWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_DWORDS(a[511:384], b[511:384])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpacklo_epi32
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_maskz_unpacklo_epi32(__mmask16 k, __m512i a,
                                        __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_DWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_DWORDS(a[511:384], b[511:384])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpacklo_epi32
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_unpacklo_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Unpack and interleave 32-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst".

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
        dst[255:128] := INTERLEAVE_DWORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_DWORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_DWORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpacklo_epi64
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_unpacklo_epi64(__m512i src, __mmask8 k,
                                       __m512i a, __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_QWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_QWORDS(a[511:384], b[511:384])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpacklo_epi64
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_maskz_unpacklo_epi64(__mmask8 k, __m512i a,
                                        __m512i b)

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
        tmp_dst[383:256] := INTERLEAVE_QWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_QWORDS(a[511:384], b[511:384])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpacklo_epi64
---------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_unpacklo_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Unpack and interleave 64-bit integers from the low half of each 128-bit lane in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[63:0] 
        	dst[127:64] := src2[63:0] 
        	RETURN dst[127:0]
        }
        dst[127:0] := INTERLEAVE_QWORDS(a[127:0], b[127:0])
        dst[255:128] := INTERLEAVE_QWORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_QWORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_QWORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_shuffle_f32x4
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    const int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_shuffle_f32x4(__m512 src, __mmask16 k,
                                     __m512 a, __m512 b,
                                     const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 single-precision (32-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        tmp_dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        tmp_dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        tmp_dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        tmp_dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shuffle_f32x4
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_shuffle_f32x4(__mmask16 k, __m512 a,
                                      __m512 b, const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 single-precision (32-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        tmp_dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        tmp_dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        tmp_dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        tmp_dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shuffle_f32x4
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    const int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_shuffle_f32x4(__m512 a, __m512 b,
                                const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 single-precision (32-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_mask_shuffle_f64x2
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    const int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_shuffle_f64x2(__m512d src, __mmask8 k,
                                      __m512d a, __m512d b,
                                      const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 double-precision (64-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        tmp_dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        tmp_dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        tmp_dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        tmp_dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shuffle_f64x2
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_shuffle_f64x2(__mmask8 k, __m512d a,
                                       __m512d b,
                                       const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 double-precision (64-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        tmp_dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        tmp_dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        tmp_dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        tmp_dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shuffle_f64x2
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    const int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_shuffle_f64x2(__m512d a, __m512d b,
                                 const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 double-precision (64-bit) floating-point elements) selected by "imm8" from "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_mask_shuffle_i32x4
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_mask_shuffle_i32x4(__m512i src, __mmask16 k,
                                      __m512i a, __m512i b,
                                      const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 32-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        tmp_dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        tmp_dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        tmp_dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        tmp_dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shuffle_i32x4
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_maskz_shuffle_i32x4(__mmask16 k, __m512i a,
                                       __m512i b,
                                       const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 32-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        tmp_dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        tmp_dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        tmp_dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        tmp_dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shuffle_i32x4
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_shuffle_i32x4(__m512i a, __m512i b,
                                 const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 4 32-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_mask_shuffle_i64x2
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_mask_shuffle_i64x2(__m512i src, __mmask8 k,
                                      __m512i a, __m512i b,
                                      const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 64-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        tmp_dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        tmp_dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        tmp_dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        tmp_dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shuffle_i64x2
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_maskz_shuffle_i64x2(__mmask8 k, __m512i a,
                                       __m512i b,
                                       const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 64-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        tmp_dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        tmp_dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        tmp_dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        tmp_dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shuffle_i64x2
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_shuffle_i64x2(__m512i a, __m512i b,
                                 const int imm8)

.. admonition:: Intel Description

    Shuffle 128-bits (composed of 2 64-bit integers) selected by "imm8" from "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE SELECT4(src, control) {
        	CASE(control[1:0]) OF
        	0:	tmp[127:0] := src[127:0]
        	1:	tmp[127:0] := src[255:128]
        	2:	tmp[127:0] := src[383:256]
        	3:	tmp[127:0] := src[511:384]
        	ESAC
        	RETURN tmp[127:0]
        }
        dst[127:0] := SELECT4(a[511:0], imm8[1:0])
        dst[255:128] := SELECT4(a[511:0], imm8[3:2])
        dst[383:256] := SELECT4(b[511:0], imm8[5:4])
        dst[511:384] := SELECT4(b[511:0], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_mask_shuffle_pd
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    const int imm8
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_mask_shuffle_pd(__m512d src, __mmask8 k,
                                   __m512d a, __m512d b,
                                   const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements within 128-bit lanes using the control in "imm8", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[63:0] := (imm8[0] == 0) ? a[63:0] : a[127:64]
        tmp_dst[127:64] := (imm8[1] == 0) ? b[63:0] : b[127:64]
        tmp_dst[191:128] := (imm8[2] == 0) ? a[191:128] : a[255:192]
        tmp_dst[255:192] := (imm8[3] == 0) ? b[191:128] : b[255:192]
        tmp_dst[319:256] := (imm8[4] == 0) ? a[319:256] : a[383:320]
        tmp_dst[383:320] := (imm8[5] == 0) ? b[319:256] : b[383:320]
        tmp_dst[447:384] := (imm8[6] == 0) ? a[447:384] : a[511:448]
        tmp_dst[511:448] := (imm8[7] == 0) ? b[447:384] : b[511:448]
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shuffle_pd
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_maskz_shuffle_pd(__mmask8 k, __m512d a,
                                    __m512d b, const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements within 128-bit lanes using the control in "imm8", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp_dst[63:0] := (imm8[0] == 0) ? a[63:0] : a[127:64]
        tmp_dst[127:64] := (imm8[1] == 0) ? b[63:0] : b[127:64]
        tmp_dst[191:128] := (imm8[2] == 0) ? a[191:128] : a[255:192]
        tmp_dst[255:192] := (imm8[3] == 0) ? b[191:128] : b[255:192]
        tmp_dst[319:256] := (imm8[4] == 0) ? a[319:256] : a[383:320]
        tmp_dst[383:320] := (imm8[5] == 0) ? b[319:256] : b[383:320]
        tmp_dst[447:384] := (imm8[6] == 0) ? a[447:384] : a[511:448]
        tmp_dst[511:448] := (imm8[7] == 0) ? b[447:384] : b[511:448]
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shuffle_pd
-----------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    const int imm8
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM imm8

.. code-block:: C

    __m512d _mm512_shuffle_pd(__m512d a, __m512d b,
                              const int imm8)

.. admonition:: Intel Description

    Shuffle double-precision (64-bit) floating-point elements within 128-bit lanes using the control in "imm8", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := (imm8[0] == 0) ? a[63:0] : a[127:64]
        dst[127:64] := (imm8[1] == 0) ? b[63:0] : b[127:64]
        dst[191:128] := (imm8[2] == 0) ? a[191:128] : a[255:192]
        dst[255:192] := (imm8[3] == 0) ? b[191:128] : b[255:192]
        dst[319:256] := (imm8[4] == 0) ? a[319:256] : a[383:320]
        dst[383:320] := (imm8[5] == 0) ? b[319:256] : b[383:320]
        dst[447:384] := (imm8[6] == 0) ? a[447:384] : a[511:448]
        dst[511:448] := (imm8[7] == 0) ? b[447:384] : b[511:448]
        dst[MAX:512] := 0
        	

_mm512_mask_shuffle_ps
----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    const int imm8
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_mask_shuffle_ps(__m512 src, __mmask16 k,
                                  __m512 a, __m512 b,
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
        tmp_dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        tmp_dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        tmp_dst[351:320] := SELECT4(b[383:256], imm8[5:4])
        tmp_dst[383:352] := SELECT4(b[383:256], imm8[7:6])
        tmp_dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        tmp_dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        tmp_dst[479:448] := SELECT4(b[511:384], imm8[5:4])
        tmp_dst[511:480] := SELECT4(b[511:384], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_shuffle_ps
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    const int imm8
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_maskz_shuffle_ps(__mmask16 k, __m512 a,
                                   __m512 b, const int imm8)

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
        tmp_dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        tmp_dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        tmp_dst[351:320] := SELECT4(b[383:256], imm8[5:4])
        tmp_dst[383:352] := SELECT4(b[383:256], imm8[7:6])
        tmp_dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        tmp_dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        tmp_dst[479:448] := SELECT4(b[511:384], imm8[5:4])
        tmp_dst[511:480] := SELECT4(b[511:384], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shuffle_ps
-----------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    const int imm8
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM imm8

.. code-block:: C

    __m512 _mm512_shuffle_ps(__m512 a, __m512 b,
                             const int imm8)

.. admonition:: Intel Description

    Shuffle single-precision (32-bit) floating-point elements in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst".

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
        dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        dst[223:192] := SELECT4(b[255:128], imm8[5:4])
        dst[255:224] := SELECT4(b[255:128], imm8[7:6])
        dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        dst[351:320] := SELECT4(b[383:256], imm8[5:4])
        dst[383:352] := SELECT4(b[383:256], imm8[7:6])
        dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        dst[479:448] := SELECT4(b[511:384], imm8[5:4])
        dst[511:480] := SELECT4(b[511:384], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_mask_unpackhi_pd
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512d _mm512_mask_unpackhi_pd(__m512d src, __mmask8 k,
                                    __m512d a, __m512d b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_QWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_QWORDS(a[511:384], b[511:384])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpackhi_pd
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512d _mm512_maskz_unpackhi_pd(__mmask8 k, __m512d a,
                                     __m512d b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_QWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_QWORDS(a[511:384], b[511:384])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpackhi_pd
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_unpackhi_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Unpack and interleave double-precision (64-bit) floating-point elements from the high half of each 128-bit lane in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_HIGH_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[127:64] 
        	dst[127:64] := src2[127:64] 
        	RETURN dst[127:0]	
        }
        dst[127:0] := INTERLEAVE_HIGH_QWORDS(a[127:0], b[127:0])
        dst[255:128] := INTERLEAVE_HIGH_QWORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_HIGH_QWORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_HIGH_QWORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpackhi_ps
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_mask_unpackhi_ps(__m512 src, __mmask16 k,                               __m512 a, __m512 b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_DWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_DWORDS(a[511:384], b[511:384])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpackhi_ps
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_maskz_unpackhi_ps(__mmask16 k, __m512 a,
                                    __m512 b)

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
        tmp_dst[383:256] := INTERLEAVE_HIGH_DWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_HIGH_DWORDS(a[511:384], b[511:384])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpackhi_ps
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_unpackhi_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Unpack and interleave single-precision (32-bit) floating-point elements from the high half of each 128-bit lane in "a" and "b", and store the results in "dst".

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
        dst[255:128] := INTERLEAVE_HIGH_DWORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_HIGH_DWORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_HIGH_DWORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpacklo_pd
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512d _mm512_mask_unpacklo_pd(__m512d src, __mmask8 k,
                                    __m512d a, __m512d b)

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
        tmp_dst[383:256] := INTERLEAVE_QWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_QWORDS(a[511:384], b[511:384])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpacklo_pd
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512d _mm512_maskz_unpacklo_pd(__mmask8 k, __m512d a,
                                     __m512d b)

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
        tmp_dst[383:256] := INTERLEAVE_QWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_QWORDS(a[511:384], b[511:384])
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp_dst[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpacklo_pd
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_unpacklo_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Unpack and interleave double-precision (64-bit) floating-point elements from the low half of each 128-bit lane in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE INTERLEAVE_QWORDS(src1[127:0], src2[127:0]) {
        	dst[63:0] := src1[63:0] 
        	dst[127:64] := src2[63:0] 
        	RETURN dst[127:0]
        }
        dst[127:0] := INTERLEAVE_QWORDS(a[127:0], b[127:0])
        dst[255:128] := INTERLEAVE_QWORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_QWORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_QWORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_unpacklo_ps
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_mask_unpacklo_ps(__m512 src, __mmask16 k,
                                   __m512 a, __m512 b)

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
        tmp_dst[383:256] := INTERLEAVE_DWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_DWORDS(a[511:384], b[511:384])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_unpacklo_ps
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_maskz_unpacklo_ps(__mmask16 k, __m512 a,
                                    __m512 b)

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
        tmp_dst[383:256] := INTERLEAVE_DWORDS(a[383:256], b[383:256])
        tmp_dst[511:384] := INTERLEAVE_DWORDS(a[511:384], b[511:384])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_unpacklo_ps
------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_unpacklo_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Unpack and interleave single-precision (32-bit) floating-point elements from the low half of each 128-bit lane in "a" and "b", and store the results in "dst".

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
        dst[255:128] := INTERLEAVE_DWORDS(a[255:128], b[255:128])
        dst[383:256] := INTERLEAVE_DWORDS(a[383:256], b[383:256])
        dst[511:384] := INTERLEAVE_DWORDS(a[511:384], b[511:384])
        dst[MAX:512] := 0
        	

_mm512_mask_blend_pd
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512d _mm512_mask_blend_pd(__mmask8 k, __m512d a,
                                 __m512d b)

.. admonition:: Intel Description

    Blend packed double-precision (64-bit) floating-point elements from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := b[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_blend_ps
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512 _mm512_mask_blend_ps(__mmask16 k, __m512 a,
                                __m512 b)

.. admonition:: Intel Description

    Blend packed single-precision (32-bit) floating-point elements from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := b[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_blend_epi32
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
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

    __m512i _mm512_mask_blend_epi32(__mmask16 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Blend packed 32-bit integers from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := b[i+31:i]
        	ELSE
        		dst[i+31:i] := a[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_blend_epi64
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_mask_blend_epi64(__mmask8 k, __m512i a,
                                    __m512i b)

.. admonition:: Intel Description

    Blend packed 64-bit integers from "a" and "b" using control mask "k", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := b[i+63:i]
        	ELSE
        		dst[i+63:i] := a[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutevar_epi32
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 idx, 
    UI32 a

.. code-block:: C

    __m512i _mm512_mask_permutevar_epi32(__m512i src,
                                         __mmask16 k,
                                         __m512i idx,
                                         __m512i a)

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). Note that this intrinsic shuffles across 128-bit lanes, unlike past intrinsics that use the "permutevar" name. This intrinsic is identical to "_mm512_mask_permutexvar_epi32", and it is recommended that you use that intrinsic name.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	id := idx[i+3:i]*32
        	IF k[j]
        		dst[i+31:i] := a[id+31:id]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutevar_epi32
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI32 idx, 
    UI32 a

.. code-block:: C

    __m512i _mm512_permutevar_epi32(__m512i idx, __m512i a);

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst". Note that this intrinsic shuffles across 128-bit lanes, unlike past intrinsics that use the "permutevar" name. This intrinsic is identical to "_mm512_permutexvar_epi32", and it is recommended that you use that intrinsic name.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	id := idx[i+3:i]*32
        	dst[i+31:i] := a[id+31:id]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_shuffle_epi32
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a, 
    _MM_PERM_ENUM imm8
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_shuffle_epi32(__m512i src, __mmask16 k,
                                      __m512i a,
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
        tmp_dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        tmp_dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        tmp_dst[351:320] := SELECT4(a[383:256], imm8[5:4])
        tmp_dst[383:352] := SELECT4(a[383:256], imm8[7:6])
        tmp_dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        tmp_dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        tmp_dst[479:448] := SELECT4(a[511:384], imm8[5:4])
        tmp_dst[511:480] := SELECT4(a[511:384], imm8[7:6])
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp_dst[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_shuffle_epi32
--------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    _MM_PERM_ENUM imm8
:Param ETypes:
    UI32 a, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_shuffle_epi32(__m512i a, _MM_PERM_ENUM imm8);

.. admonition:: Intel Description

    Shuffle 32-bit integers in "a" within 128-bit lanes using the control in "imm8", and store the results in "dst".

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
        dst[159:128] := SELECT4(a[255:128], imm8[1:0])
        dst[191:160] := SELECT4(a[255:128], imm8[3:2])
        dst[223:192] := SELECT4(a[255:128], imm8[5:4])
        dst[255:224] := SELECT4(a[255:128], imm8[7:6])
        dst[287:256] := SELECT4(a[383:256], imm8[1:0])
        dst[319:288] := SELECT4(a[383:256], imm8[3:2])
        dst[351:320] := SELECT4(a[383:256], imm8[5:4])
        dst[383:352] := SELECT4(a[383:256], imm8[7:6])
        dst[415:384] := SELECT4(a[511:384], imm8[1:0])
        dst[447:416] := SELECT4(a[511:384], imm8[3:2])
        dst[479:448] := SELECT4(a[511:384], imm8[5:4])
        dst[511:480] := SELECT4(a[511:384], imm8[7:6])
        dst[MAX:512] := 0
        	

_mm512_permutexvar_epi8
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI8 idx, 
    UI8 a

.. code-block:: C

    __m512i _mm512_permutexvar_epi8(__m512i idx, __m512i a);

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	id := idx[i+5:i]*8
        	dst[i+7:i] := a[id+7:id]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutexvar_epi8
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 idx, 
    UI8 a

.. code-block:: C

    __m512i _mm512_mask_permutexvar_epi8(__m512i src,
                                         __mmask64 k,
                                         __m512i idx,
                                         __m512i a)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	id := idx[i+5:i]*8
        	IF k[j]
        		dst[i+7:i] := a[id+7:id]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutexvar_epi8
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i idx, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI8 idx, 
    UI8 a

.. code-block:: C

    __m512i _mm512_maskz_permutexvar_epi8(__mmask64 k,
                                          __m512i idx,
                                          __m512i a)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" across lanes using the corresponding index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	id := idx[i+5:i]*8
        	IF k[j]
        		dst[i+7:i] := a[id+7:id]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_permutex2var_epi8
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 idx, 
    UI8 b

.. code-block:: C

    __m512i _mm512_permutex2var_epi8(__m512i a, __m512i idx,
                                     __m512i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	off := 8*idx[i+5:i]
        	dst[i+7:i] := idx[i+6] ? b[off+7:off] : a[off+7:off]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_permutex2var_epi8
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask64 k, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    UI8 a, 
    MASK k, 
    UI8 idx, 
    UI8 b

.. code-block:: C

    __m512i _mm512_mask_permutex2var_epi8(__m512i a,
                                          __mmask64 k,
                                          __m512i idx,
                                          __m512i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		off := 8*idx[i+5:i]
        		dst[i+7:i] := idx[i+6] ? b[off+7:off] : a[off+7:off]
        	ELSE
        		dst[i+7:i] := a[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask2_permutex2var_epi8
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i idx, 
    __mmask64 k, 
    __m512i b
:Param ETypes:
    UI8 a, 
    UI8 idx, 
    MASK k, 
    UI8 b

.. code-block:: C

    __m512i _mm512_mask2_permutex2var_epi8(__m512i a,
                                           __m512i idx,
                                           __mmask64 k,
                                           __m512i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using writemask "k" (elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		off := 8*idx[i+5:i]
        		dst[i+7:i] := idx[i+6] ? b[off+7:off] : a[off+7:off]
        	ELSE
        		dst[i+7:i] := idx[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_permutex2var_epi8
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a, 
    __m512i idx, 
    __m512i b
:Param ETypes:
    MASK k, 
    UI8 a, 
    UI8 idx, 
    UI8 b

.. code-block:: C

    __m512i _mm512_maskz_permutex2var_epi8(__mmask64 k,
                                           __m512i a,
                                           __m512i idx,
                                           __m512i b)

.. admonition:: Intel Description

    Shuffle 8-bit integers in "a" and "b" across lanes using the corresponding selector and index in "idx", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		off := 8*idx[i+5:i]
        		dst[i+7:i] := idx[i+6] ? b[off+7:off] : a[off+7:off]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expandloadu_epi16
------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    const void* mem_addr
:Param ETypes:
    MASK k, 
    UI16 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_expandloadu_epi16(
        __mmask32 k, const void* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 16-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MEM[mem_addr+m+15:mem_addr+m]
        		m := m + 16
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expandloadu_epi16
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    const void* mem_addr
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 mem_addr

.. code-block:: C

    __m512i _mm512_mask_expandloadu_epi16(__m512i src,
                                          __mmask32 k,
                                          const void* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 16-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MEM[mem_addr+m+15:mem_addr+m]
        		m := m + 16
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expandloadu_epi8
-----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    const void* mem_addr
:Param ETypes:
    MASK k, 
    UI8 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_expandloadu_epi8(__mmask64 k,
                                          const void* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 8-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MEM[mem_addr+m+7:mem_addr+m]
        		m := m + 8
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expandloadu_epi8
----------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    const void* mem_addr
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 mem_addr

.. code-block:: C

    __m512i _mm512_mask_expandloadu_epi8(__m512i src,
                                         __mmask64 k,
                                         const void* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 8-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MEM[mem_addr+m+7:mem_addr+m]
        		m := m + 8
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expand_epi16
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_maskz_expand_epi16(__mmask32 k, __m512i a);

.. admonition:: Intel Description

    Load contiguous active 16-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[m+15:m]
        		m := m + 16
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expand_epi16
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_mask_expand_epi16(__m512i src, __mmask32 k,
                                     __m512i a)

.. admonition:: Intel Description

    Load contiguous active 16-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[m+15:m]
        		m := m + 16
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_expand_epi8
------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_maskz_expand_epi8(__mmask64 k, __m512i a);

.. admonition:: Intel Description

    Load contiguous active 8-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[m+7:m]
        		m := m + 8
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_expand_epi8
-----------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_mask_expand_epi8(__m512i src, __mmask64 k,
                                    __m512i a)

.. admonition:: Intel Description

    Load contiguous active 8-bit integers from "a" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[m+7:m]
        		m := m + 8
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_compress_epi16
---------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_maskz_compress_epi16(__mmask32 k, __m512i a);

.. admonition:: Intel Description

    Contiguously store the active 16-bit integers in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 16
        m := 0
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[m+size-1:m] := a[i+15:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := 0
        dst[MAX:512] := 0
        	

_mm512_mask_compress_epi16
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m512i _mm512_mask_compress_epi16(__m512i src, __mmask32 k,                                   __m512i a)

.. admonition:: Intel Description

    Contiguously store the active 16-bit integers in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 16
        m := 0
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[m+size-1:m] := a[i+15:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := src[511:m]
        dst[MAX:512] := 0
        	

_mm512_maskz_compress_epi8
--------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_maskz_compress_epi8(__mmask64 k, __m512i a);

.. admonition:: Intel Description

    Contiguously store the active 8-bit integers in "a" (those with their respective bit set in zeromask "k") to "dst", and set the remaining elements to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 8
        m := 0
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[m+size-1:m] := a[i+7:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := 0
        dst[MAX:512] := 0
        	

_mm512_mask_compress_epi8
-------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    __m512i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m512i _mm512_mask_compress_epi8(__m512i src, __mmask64 k,
                                      __m512i a)

.. admonition:: Intel Description

    Contiguously store the active 8-bit integers in "a" (those with their respective bit set in writemask "k") to "dst", and pass through the remaining elements from "src".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 8
        m := 0
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[m+size-1:m] := a[i+7:i]
        		m := m + size
        	FI
        ENDFOR
        dst[511:m] := src[511:m]
        dst[MAX:512] := 0
        	

_mm512_mask_compressstoreu_epi16
--------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: void
:Param Types:
    void* base_addr, 
    __mmask32 k, 
    __m512i a
:Param ETypes:
    UI16 base_addr, 
    MASK k, 
    UI16 a

.. code-block:: C

    void _mm512_mask_compressstoreu_epi16(void* base_addr,
                                          __mmask32 k,
                                          __m512i a)

.. admonition:: Intel Description

    Contiguously store the active 16-bit integers in "a" (those with their respective bit set in writemask "k") to unaligned memory at "base_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 16
        m := base_addr
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		MEM[m+size-1:m] := a[i+15:i]
        		m := m + size
        	FI
        ENDFOR
        	

_mm512_mask_compressstoreu_epi8
-------------------------------
:Tech: AVX-512
:Category: Swizzle
:Header: immintrin.h
:Searchable: AVX-512-Swizzle-ZMM
:Register: ZMM 512 bit
:Return Type: void
:Param Types:
    void* base_addr, 
    __mmask64 k, 
    __m512i a
:Param ETypes:
    UI8 base_addr, 
    MASK k, 
    UI8 a

.. code-block:: C

    void _mm512_mask_compressstoreu_epi8(void* base_addr,
                                         __mmask64 k,
                                         __m512i a)

.. admonition:: Intel Description

    Contiguously store the active 8-bit integers in "a" (those with their respective bit set in writemask "k") to unaligned memory at "base_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        size := 8
        m := base_addr
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		MEM[m+size-1:m] := a[i+7:i]
        		m := m + size
        	FI
        ENDFOR
        	

