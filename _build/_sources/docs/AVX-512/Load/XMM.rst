AVX-512-Load-XMM
================

_mm_mask_loadu_epi16
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 mem_addr

.. code-block:: C

    __m128i _mm_mask_loadu_epi16(__m128i src, __mmask8 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed 16-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MEM[mem_addr+i+15:mem_addr+i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_loadu_epi16
---------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI16 mem_addr

.. code-block:: C

    __m128i _mm_maskz_loadu_epi16(__mmask8 k,
                                  void const* mem_addr)

.. admonition:: Intel Description

    Load packed 16-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MEM[mem_addr+i+15:mem_addr+i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_loadu_epi8
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 mem_addr

.. code-block:: C

    __m128i _mm_mask_loadu_epi8(__m128i src, __mmask16 k,
                                void const* mem_addr)

.. admonition:: Intel Description

    Load packed 8-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MEM[mem_addr+i+7:mem_addr+i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_loadu_epi8
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI8 mem_addr

.. code-block:: C

    __m128i _mm_maskz_loadu_epi8(__mmask16 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed 8-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MEM[mem_addr+i+7:mem_addr+i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_loadu_epi16
---------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI16 mem_addr

.. code-block:: C

    __m128i _mm_loadu_epi16(void const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 8 packed 16-bit integers) from memory into "dst".
    		"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        dst[MAX:128] := 0
        	

_mm_loadu_epi8
--------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI8 mem_addr

.. code-block:: C

    __m128i _mm_loadu_epi8(void const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 16 packed 8-bit integers) from memory into "dst".
    		"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        dst[MAX:128] := 0
        	

_mm_mask_expandloadu_pd
-----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_mask_expandloadu_pd(__m128d src, __mmask8 k,
                                    void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active double-precision (64-bit) floating-point elements from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+m+63:mem_addr+m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_expandloadu_pd
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_maskz_expandloadu_pd(__mmask8 k,
                                     void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active double-precision (64-bit) floating-point elements from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+m+63:mem_addr+m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_expandloadu_ps
-----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_mask_expandloadu_ps(__m128 src, __mmask8 k,
                                   void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active single-precision (32-bit) floating-point elements from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+m+31:mem_addr+m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_expandloadu_ps
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_maskz_expandloadu_ps(__mmask8 k,
                                    void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active single-precision (32-bit) floating-point elements from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+m+31:mem_addr+m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mmask_i32gather_pd
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128i vindex, 
    void const* base_addr, 
    const int scale
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI32 vindex, 
    FP64 base_addr, 
    IMM scale

.. code-block:: C

    __m128d _mm_mmask_i32gather_pd(__m128d src, __mmask8 k,
                                   __m128i vindex,
                                   void const* base_addr,
                                   const int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mmask_i32gather_ps
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128i vindex, 
    void const* base_addr, 
    const int scale
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI32 vindex, 
    FP32 base_addr, 
    IMM scale

.. code-block:: C

    __m128 _mm_mmask_i32gather_ps(__m128 src, __mmask8 k,
                                  __m128i vindex,
                                  void const* base_addr,
                                  const int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mmask_i64gather_pd
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128i vindex, 
    void const* base_addr, 
    const int scale
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI64 vindex, 
    FP64 base_addr, 
    IMM scale

.. code-block:: C

    __m128d _mm_mmask_i64gather_pd(__m128d src, __mmask8 k,
                                   __m128i vindex,
                                   void const* base_addr,
                                   const int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*64
        	IF k[j]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mmask_i64gather_ps
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128i vindex, 
    void const* base_addr, 
    const int scale
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI64 vindex, 
    FP32 base_addr, 
    IMM scale

.. code-block:: C

    __m128 _mm_mmask_i64gather_ps(__m128 src, __mmask8 k,
                                  __m128i vindex,
                                  void const* base_addr,
                                  const int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	IF k[j]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mask_load_pd
----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_mask_load_pd(__m128d src, __mmask8 k,
                             void const* mem_addr)

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_load_pd
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_maskz_load_pd(__mmask8 k, void const* mem_addr);

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). "mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_load_ps
----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_mask_load_ps(__m128 src, __mmask8 k,
                            void const* mem_addr)

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_load_ps
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_maskz_load_ps(__mmask8 k, void const* mem_addr);

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). "mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_load_epi32
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_mask_load_epi32(__m128i src, __mmask8 k,
                                void const* mem_addr)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_load_epi32
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_maskz_load_epi32(__mmask8 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_load_epi64
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_mask_load_epi64(__m128i src, __mmask8 k,
                                void const* mem_addr)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_load_epi64
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_maskz_load_epi64(__mmask8 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_loadu_epi32
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_mask_loadu_epi32(__m128i src, __mmask8 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_loadu_epi32
---------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_maskz_loadu_epi32(__mmask8 k,
                                  void const* mem_addr)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_loadu_epi64
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_mask_loadu_epi64(__m128i src, __mmask8 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_loadu_epi64
---------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_maskz_loadu_epi64(__mmask8 k,
                                  void const* mem_addr)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_loadu_pd
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_mask_loadu_pd(__m128d src, __mmask8 k,
                              void const* mem_addr)

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memoy into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_loadu_pd
------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_maskz_loadu_pd(__mmask8 k,
                               void const* mem_addr)

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memoy into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_loadu_ps
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_mask_loadu_ps(__m128 src, __mmask8 k,
                             void const* mem_addr)

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_loadu_ps
------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_maskz_loadu_ps(__mmask8 k, void const* mem_addr);

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_expandloadu_epi32
--------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_mask_expandloadu_epi32(__m128i src, __mmask8 k,
                                       void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 32-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+m+31:mem_addr+m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_expandloadu_epi32
---------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_maskz_expandloadu_epi32(__mmask8 k,
                                        void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 32-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+m+31:mem_addr+m]
        		m := m + 32
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_expandloadu_epi64
--------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_mask_expandloadu_epi64(__m128i src, __mmask8 k,
                                       void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 64-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+m+63:mem_addr+m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_expandloadu_epi64
---------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_maskz_expandloadu_epi64(__mmask8 k,
                                        void const* mem_addr)

.. admonition:: Intel Description

    Load contiguous active 64-bit integers from unaligned memory at "mem_addr" (those with their respective bit set in mask "k"), and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        m := 0
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+m+63:mem_addr+m]
        		m := m + 64
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mmask_i32gather_epi32
-------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i vindex, 
    void const* base_addr, 
    const int scale
:Param ETypes:
    UI32 src, 
    MASK k, 
    SI32 vindex, 
    UI32 base_addr, 
    IMM scale

.. code-block:: C

    __m128i _mm_mmask_i32gather_epi32(__m128i src, __mmask8 k,
                                      __m128i vindex,
                                      void const* base_addr,
                                      const int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mmask_i32gather_epi64
-------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i vindex, 
    void const* base_addr, 
    const int scale
:Param ETypes:
    UI64 src, 
    MASK k, 
    SI32 vindex, 
    UI64 base_addr, 
    IMM scale

.. code-block:: C

    __m128i _mm_mmask_i32gather_epi64(__m128i src, __mmask8 k,
                                      __m128i vindex,
                                      void const* base_addr,
                                      const int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mmask_i64gather_epi32
-------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i vindex, 
    void const* base_addr, 
    const int scale
:Param ETypes:
    UI32 src, 
    MASK k, 
    SI64 vindex, 
    UI32 base_addr, 
    IMM scale

.. code-block:: C

    __m128i _mm_mmask_i64gather_epi32(__m128i src, __mmask8 k,
                                      __m128i vindex,
                                      void const* base_addr,
                                      const int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	IF k[j]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_mmask_i64gather_epi64
-------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i vindex, 
    void const* base_addr, 
    const int scale
:Param ETypes:
    UI64 src, 
    MASK k, 
    SI64 vindex, 
    UI64 base_addr, 
    IMM scale

.. code-block:: C

    __m128i _mm_mmask_i64gather_epi64(__m128i src, __mmask8 k,
                                      __m128i vindex,
                                      void const* base_addr,
                                      const int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*64
        	IF k[j]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_loadu_epi64
---------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_loadu_epi64(void const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 2 packed 64-bit integers) from memory into "dst".
    		"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        dst[MAX:128] := 0
        	

_mm_loadu_epi32
---------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_loadu_epi32(void const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 4 packed 32-bit integers) from memory into "dst".
    		"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        dst[MAX:128] := 0
        	

_mm_load_epi64
--------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_load_epi64(void const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 2 packed 64-bit integers) from memory into "dst".
    		"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        dst[MAX:128] := 0
        	

_mm_load_epi32
--------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_load_epi32(void const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 4 packed 32-bit integers) from memory into "dst".
    		"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        dst[MAX:128] := 0
        	

_mm_mask_load_sd
----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    const double* mem_addr
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_mask_load_sd(__m128d src, __mmask8 k,
                             const double* mem_addr)

.. admonition:: Intel Description

    Load a double-precision (64-bit) floating-point element from memory into the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and set the upper element of "dst" to zero. "mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MEM[mem_addr+63:mem_addr]
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[MAX:64] := 0
        	

_mm_maskz_load_sd
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    const double* mem_addr
:Param ETypes:
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_maskz_load_sd(__mmask8 k,
                              const double* mem_addr)

.. admonition:: Intel Description

    Load a double-precision (64-bit) floating-point element from memory into the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and set the upper element of "dst" to zero. "mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := MEM[mem_addr+63:mem_addr]
        ELSE
        	dst[63:0] := 0
        FI
        dst[MAX:64] := 0
        	

_mm_mask_load_ss
----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    const float* mem_addr
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_mask_load_ss(__m128 src, __mmask8 k,
                            const float* mem_addr)

.. admonition:: Intel Description

    Load a single-precision (32-bit) floating-point element from memory into the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and set the upper elements of "dst" to zero. "mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MEM[mem_addr+31:mem_addr]
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[MAX:32] := 0
        	

_mm_maskz_load_ss
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    const float* mem_addr
:Param ETypes:
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_maskz_load_ss(__mmask8 k, const float* mem_addr);

.. admonition:: Intel Description

    Load a single-precision (32-bit) floating-point element from memory into the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and set the upper elements of "dst" to zero. "mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := MEM[mem_addr+31:mem_addr]
        ELSE
        	dst[31:0] := 0
        FI
        dst[MAX:32] := 0
        	

_mm_load_ph
-----------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP16 mem_addr

.. code-block:: C

    __m128h _mm_load_ph(void const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 8 packed half-precision (16-bit) floating-point elements) from memory into "dst". 
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        dst[MAX:128] := 0
        	

_mm_loadu_ph
------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP16 mem_addr

.. code-block:: C

    __m128h _mm_loadu_ph(void const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 8 packed half-precision (16-bit) floating-point elements) from memory into "dst". 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        dst[MAX:128] := 0
        	

_mm_load_sh
-----------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP16 mem_addr

.. code-block:: C

    __m128h _mm_load_sh(void const* mem_addr);

.. admonition:: Intel Description

    Load a half-precision (16-bit) floating-point element from memory into the lower element of "dst", and zero the upper elements.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := MEM[mem_addr].fp16[0]
        dst[MAX:16] := 0
        	

_mm_mask_load_sh
----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 mem_addr

.. code-block:: C

    __m128h _mm_mask_load_sh(__m128h src, __mmask8 k,
                             void const* mem_addr)

.. admonition:: Intel Description

    Load a half-precision (16-bit) floating-point element from memory into the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and set the upper elements of "dst" to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := MEM[mem_addr].fp16[0]
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[MAX:16] := 0
        	

_mm_maskz_load_sh
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP16 mem_addr

.. code-block:: C

    __m128h _mm_maskz_load_sh(__mmask8 k, void const* mem_addr);

.. admonition:: Intel Description

    Load a half-precision (16-bit) floating-point element from memory into the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and set the upper elements of "dst" to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := MEM[mem_addr].fp16[0]
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[MAX:16] := 0
        	

