AVX-512-Load-ZMM
================

_mm512_mask_loadu_epi16
-----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask32 k, 
    void const* mem_addr
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 mem_addr

.. code-block:: C

    __m512i _mm512_mask_loadu_epi16(__m512i src, __mmask32 k,
                                    void const* mem_addr)

.. admonition:: Intel Description

    Load packed 16-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MEM[mem_addr+i+15:mem_addr+i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_loadu_epi16
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask32 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI16 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_loadu_epi16(__mmask32 k,
                                     void const* mem_addr)

.. admonition:: Intel Description

    Load packed 16-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := MEM[mem_addr+i+15:mem_addr+i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_loadu_epi8
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask64 k, 
    void const* mem_addr
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 mem_addr

.. code-block:: C

    __m512i _mm512_mask_loadu_epi8(__m512i src, __mmask64 k,
                                   void const* mem_addr)

.. admonition:: Intel Description

    Load packed 8-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MEM[mem_addr+i+7:mem_addr+i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_loadu_epi8
-----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask64 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI8 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_loadu_epi8(__mmask64 k,
                                    void const* mem_addr)

.. admonition:: Intel Description

    Load packed 8-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 63
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := MEM[mem_addr+i+7:mem_addr+i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_loadu_epi16
------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI16 mem_addr

.. code-block:: C

    __m512i _mm512_loadu_epi16(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 32 packed 16-bit integers) from memory into "dst".
    		"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_loadu_epi8
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI8 mem_addr

.. code-block:: C

    __m512i _mm512_loadu_epi8(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 64 packed 8-bit integers) from memory into "dst".
    		"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_loadu_epi64
------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI64 mem_addr

.. code-block:: C

    __m512i _mm512_loadu_epi64(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 8 packed 64-bit integers) from memory into "dst".
    		"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_loadu_epi32
------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI32 mem_addr

.. code-block:: C

    __m512i _mm512_loadu_epi32(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 16 packed 32-bit integers) from memory into "dst".
    		"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_i32gather_pd
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m256i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI32 vindex, 
    FP64 base_addr, 
    IMM scale

.. code-block:: C

    __m512d _mm512_i32gather_pd(__m256i vindex,
                                void const* base_addr,
                                int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_i32gather_pd
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m256i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI32 vindex, 
    FP64 base_addr, 
    IMM scale

.. code-block:: C

    __m512d _mm512_mask_i32gather_pd(__m512d src, __mmask8 k,
                                     __m256i vindex,
                                     void const* base_addr,
                                     int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_i64gather_pd
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI64 vindex, 
    FP64 base_addr, 
    IMM scale

.. code-block:: C

    __m512d _mm512_i64gather_pd(__m512i vindex,
                                void const* base_addr,
                                int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*64
        	addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_i64gather_pd
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI64 vindex, 
    FP64 base_addr, 
    IMM scale

.. code-block:: C

    __m512d _mm512_mask_i64gather_pd(__m512d src, __mmask8 k,
                                     __m512i vindex,
                                     void const* base_addr,
                                     int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*64
        	IF k[j]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_i64gather_ps
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI64 vindex, 
    FP32 base_addr, 
    IMM scale

.. code-block:: C

    __m256 _mm512_i64gather_ps(__m512i vindex,
                               void const* base_addr,
                               int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	m := j*64
        	addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        	dst[i+31:i] := MEM[addr+31:addr]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_i64gather_ps
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI64 vindex, 
    FP32 base_addr, 
    IMM scale

.. code-block:: C

    __m256 _mm512_mask_i64gather_ps(__m256 src, __mmask8 k,
                                    __m512i vindex,
                                    void const* base_addr,
                                    int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	m := j*64
        	IF k[j]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_maskz_load_pd
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m512d _mm512_maskz_load_pd(__mmask8 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). "mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_load_ps
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m512 _mm512_maskz_load_ps(__mmask16 k,
                                void const* mem_addr)

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). "mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_load_epi32
-----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_load_epi32(__mmask16 k,
                                    void const* mem_addr)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_load_epi64
-----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_load_epi64(__mmask8 k,
                                    void const* mem_addr)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_loadu_si512
------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI64 mem_addr

.. code-block:: C

    __m512i _mm512_loadu_si512(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits of integer data from memory into "dst".
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_mask_loadu_epi32
-----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
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

    __m512i _mm512_mask_loadu_epi32(__m512i src, __mmask16 k,
                                    void const* mem_addr)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_loadu_epi32
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI32 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_loadu_epi32(__mmask16 k,
                                     void const* mem_addr)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_loadu_epi64
-----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
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

    __m512i _mm512_mask_loadu_epi64(__m512i src, __mmask8 k,
                                    void const* mem_addr)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_loadu_epi64
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    UI64 mem_addr

.. code-block:: C

    __m512i _mm512_maskz_loadu_epi64(__mmask8 k,
                                     void const* mem_addr)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_stream_load_si512
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    M512 mem_addr

.. code-block:: C

    __m512i _mm512_stream_load_si512(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits of integer data from memory into "dst" using a non-temporal memory hint. 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_loadu_pd
---------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m512d _mm512_loadu_pd(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 8 packed double-precision (64-bit) floating-point elements) from memory into "dst". 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_mask_loadu_pd
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
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

    __m512d _mm512_mask_loadu_pd(__m512d src, __mmask8 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memoy into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_loadu_pd
---------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP64 mem_addr

.. code-block:: C

    __m512d _mm512_maskz_loadu_pd(__mmask8 k,
                                  void const* mem_addr)

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memoy into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_loadu_ps
---------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m512 _mm512_loadu_ps(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 16 packed single-precision (32-bit) floating-point elements) from memory into "dst". 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_mask_loadu_ps
--------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
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

    __m512 _mm512_mask_loadu_ps(__m512 src, __mmask16 k,
                                void const* mem_addr)

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_loadu_ps
---------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    void const* mem_addr
:Param ETypes:
    MASK k, 
    FP32 mem_addr

.. code-block:: C

    __m512 _mm512_maskz_loadu_ps(__mmask16 k,
                                 void const* mem_addr)

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_i32gather_epi64
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m256i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI64 vindex, 
    UI64 base_addr, 
    IMM scale

.. code-block:: C

    __m512i _mm512_i32gather_epi64(__m256i vindex,
                                   void const* base_addr,
                                   int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_i32gather_epi64
---------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m256i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    UI64 src, 
    MASK k, 
    SI32 vindex, 
    UI64 base_addr, 
    IMM scale

.. code-block:: C

    __m512i _mm512_mask_i32gather_epi64(__m512i src, __mmask8 k,
                                        __m256i vindex,
                                        void const* base_addr,
                                        int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_i64gather_epi32
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI64 vindex, 
    UI32 base_addr, 
    IMM scale

.. code-block:: C

    __m256i _mm512_i64gather_epi32(__m512i vindex,
                                   void const* base_addr,
                                   int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	m := j*64
        	addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        	dst[i+31:i] := MEM[addr+31:addr]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_mask_i64gather_epi32
---------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    UI32 src, 
    MASK k, 
    SI64 vindex, 
    UI32 base_addr, 
    IMM scale

.. code-block:: C

    __m256i _mm512_mask_i64gather_epi32(__m256i src, __mmask8 k,
                                        __m512i vindex,
                                        void const* base_addr,
                                        int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	m := j*64
        	IF k[j]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm512_i64gather_epi64
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI64 vindex, 
    UI64 base_addr, 
    IMM scale

.. code-block:: C

    __m512i _mm512_i64gather_epi64(__m512i vindex,
                                   void const* base_addr,
                                   int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*64
        	addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_i64gather_epi64
---------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    UI64 src, 
    MASK k, 
    SI64 vindex, 
    UI64 base_addr, 
    IMM scale

.. code-block:: C

    __m512i _mm512_mask_i64gather_epi64(__m512i src, __mmask8 k,
                                        __m512i vindex,
                                        void const* base_addr,
                                        int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*64
        	IF k[j]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_i32gather_ps
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI32 vindex, 
    FP32 base_addr, 
    IMM scale

.. code-block:: C

    __m512 _mm512_i32gather_ps(__m512i vindex,
                               void const* base_addr,
                               int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+31:i] := MEM[addr+31:addr]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_i32gather_ps
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    FP32 src, 
    MASK k, 
    SI32 vindex, 
    FP32 base_addr, 
    IMM scale

.. code-block:: C

    __m512 _mm512_mask_i32gather_ps(__m512 src, __mmask16 k,
                                    __m512i vindex,
                                    void const* base_addr,
                                    int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_load_pd
--------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m512d _mm512_load_pd(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 8 packed double-precision (64-bit) floating-point elements) from memory into "dst". 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_mask_load_pd
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
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

    __m512d _mm512_mask_load_pd(__m512d src, __mmask8 k,
                                void const* mem_addr)

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_load_ps
--------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m512 _mm512_load_ps(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 16 packed single-precision (32-bit) floating-point elements) from memory into "dst". 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_mask_load_ps
-------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
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

    __m512 _mm512_mask_load_ps(__m512 src, __mmask16 k,
                               void const* mem_addr)

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_load_epi32
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI32 mem_addr

.. code-block:: C

    __m512i _mm512_load_epi32(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 16 packed 32-bit integers) from memory into "dst". 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_load_si512
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    M512 mem_addr

.. code-block:: C

    __m512i _mm512_load_si512(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits of integer data from memory into "dst". 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_mask_load_epi32
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
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

    __m512i _mm512_mask_load_epi32(__m512i src, __mmask16 k,
                                   void const* mem_addr)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_load_epi64
-----------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI64 mem_addr

.. code-block:: C

    __m512i _mm512_load_epi64(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 8 packed 64-bit integers) from memory into "dst". 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_mask_load_epi64
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
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

    __m512i _mm512_mask_load_epi64(__m512i src, __mmask8 k,
                                   void const* mem_addr)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_i32gather_epi32
----------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI32 vindex, 
    UI32 base_addr, 
    IMM scale

.. code-block:: C

    __m512i _mm512_i32gather_epi32(__m512i vindex,
                                   void const* base_addr,
                                   int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+31:i] := MEM[addr+31:addr]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_i32gather_epi32
---------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    UI32 src, 
    MASK k, 
    SI32 vindex, 
    UI32 base_addr, 
    IMM scale

.. code-block:: C

    __m512i _mm512_mask_i32gather_epi32(__m512i src,
                                        __mmask16 k,
                                        __m512i vindex,
                                        void const* base_addr,
                                        int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_i32logather_epi64
------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI32 vindex, 
    UI64 base_addr, 
    IMM scale

.. code-block:: C

    __m512i _mm512_i32logather_epi64(__m512i vindex,
                                     void const* base_addr,
                                     int scale)

.. admonition:: Intel Description

    Loads 8 64-bit integer elements from memory starting at location "base_addr" at packed 32-bit integer indices stored in the lower half of "vindex" scaled by "scale" and stores them in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_i32logather_epi64
-----------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    UI64 src, 
    MASK k, 
    SI64 vindex, 
    UI64 base_addr, 
    IMM scale

.. code-block:: C

    __m512i _mm512_mask_i32logather_epi64(__m512i src,
                                          __mmask8 k,
                                          __m512i vindex,
                                          void const* base_addr,
                                          int scale)

.. admonition:: Intel Description

    Loads 8 64-bit integer elements from memory starting at location "base_addr" at packed 32-bit integer indices stored in the lower half of "vindex" scaled by "scale" and stores them in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_i32logather_pd
---------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    SI64 vindex, 
    FP64 base_addr, 
    IMM scale

.. code-block:: C

    __m512d _mm512_i32logather_pd(__m512i vindex,
                                  void const* base_addr,
                                  int scale)

.. admonition:: Intel Description

    Loads 8 double-precision (64-bit) floating-point elements stored at memory locations starting at location "base_addr" at packed 32-bit integer indices stored in the lower half of "vindex" scaled by "scale" them in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_i32logather_pd
--------------------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512i vindex, 
    void const* base_addr, 
    int scale
:Param ETypes:
    FP64 src, 
    MASK k, 
    SI64 vindex, 
    FP64 base_addr, 
    IMM scale

.. code-block:: C

    __m512d _mm512_mask_i32logather_pd(__m512d src, __mmask8 k,
                                       __m512i vindex,
                                       void const* base_addr,
                                       int scale)

.. admonition:: Intel Description

    Loads 8 double-precision (64-bit) floating-point elements from memory starting at location "base_addr" at packed 32-bit integer indices stored in the lower half of "vindex" scaled by "scale" into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	m := j*32
        	IF k[j]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_load_ph
--------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP16 mem_addr

.. code-block:: C

    __m512h _mm512_load_ph(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 32 packed half-precision (16-bit) floating-point elements) from memory into "dst". 
    	"mem_addr" must be aligned on a 64-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

_mm512_loadu_ph
---------------
:Tech: AVX-512
:Category: Load
:Header: immintrin.h
:Searchable: AVX-512-Load-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    void const* mem_addr
:Param ETypes:
    FP16 mem_addr

.. code-block:: C

    __m512h _mm512_loadu_ph(void const* mem_addr);

.. admonition:: Intel Description

    Load 512-bits (composed of 32 packed half-precision (16-bit) floating-point elements) from memory into "dst". 
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := MEM[mem_addr+511:mem_addr]
        dst[MAX:512] := 0
        	

