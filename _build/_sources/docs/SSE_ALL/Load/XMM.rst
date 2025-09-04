SSE_ALL-Load-XMM
================

_mm_loadh_pi
------------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m64 const* mem_addr
:Param ETypes:
    FP32 a, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_loadh_pi(__m128 a, __m64 const* mem_addr);

.. admonition:: Intel Description

    Load 2 single-precision (32-bit) floating-point elements from memory into the upper 2 elements of "dst", and copy the lower 2 elements from "a" to "dst". "mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0]
        dst[63:32] := a[63:32]
        dst[95:64] := MEM[mem_addr+31:mem_addr]
        dst[127:96] := MEM[mem_addr+63:mem_addr+32]
        	

_mm_loadl_pi
------------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m64 const* mem_addr
:Param ETypes:
    FP32 a, 
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_loadl_pi(__m128 a, __m64 const* mem_addr);

.. admonition:: Intel Description

    Load 2 single-precision (32-bit) floating-point elements from memory into the lower 2 elements of "dst", and copy the upper 2 elements from "a" to "dst". "mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MEM[mem_addr+31:mem_addr]
        dst[63:32] := MEM[mem_addr+63:mem_addr+32]
        dst[95:64] := a[95:64]
        dst[127:96] := a[127:96]
        	

_mm_load_ss
-----------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const* mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_load_ss(float const* mem_addr);

.. admonition:: Intel Description

    Load a single-precision (32-bit) floating-point element from memory into the lower of "dst", and zero the upper 3 elements. "mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MEM[mem_addr+31:mem_addr]
        dst[127:32] := 0
        	

_mm_load1_ps
------------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const* mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_load1_ps(float const* mem_addr);

.. admonition:: Intel Description

    Load a single-precision (32-bit) floating-point element from memory into all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MEM[mem_addr+31:mem_addr]
        dst[63:32] := MEM[mem_addr+31:mem_addr]
        dst[95:64] := MEM[mem_addr+31:mem_addr]
        dst[127:96] := MEM[mem_addr+31:mem_addr]
        	

_mm_load_ps1
------------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const* mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_load_ps1(float const* mem_addr);

.. admonition:: Intel Description

    Load a single-precision (32-bit) floating-point element from memory into all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MEM[mem_addr+31:mem_addr]
        dst[63:32] := MEM[mem_addr+31:mem_addr]
        dst[95:64] := MEM[mem_addr+31:mem_addr]
        dst[127:96] := MEM[mem_addr+31:mem_addr]
        	

_mm_load_ps
-----------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const* mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_load_ps(float const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 4 packed single-precision (32-bit) floating-point elements) from memory into "dst".
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        	

_mm_loadu_ps
------------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const* mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_loadu_ps(float const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 4 packed single-precision (32-bit) floating-point elements) from memory into "dst".
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        	

_mm_loadr_ps
------------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const* mem_addr
:Param ETypes:
    FP32 mem_addr

.. code-block:: C

    __m128 _mm_loadr_ps(float const* mem_addr);

.. admonition:: Intel Description

    Load 4 single-precision (32-bit) floating-point elements from memory into "dst" in reverse order. mem_addr must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MEM[mem_addr+127:mem_addr+96]
        dst[63:32] := MEM[mem_addr+95:mem_addr+64]
        dst[95:64] := MEM[mem_addr+63:mem_addr+32]
        dst[127:96] := MEM[mem_addr+31:mem_addr]
        	

_mm_loadu_si64
--------------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_loadu_si64(void const* mem_addr);

.. admonition:: Intel Description

    Load unaligned 64-bit integer from memory into the first element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MEM[mem_addr+63:mem_addr]
        dst[MAX:64] := 0
        	

_mm_loadu_si16
--------------
:Tech: SSE_ALL
:Category: Load
:Header: immintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI16 mem_addr

.. code-block:: C

    __m128i _mm_loadu_si16(void const* mem_addr);

.. admonition:: Intel Description

    Load unaligned 16-bit integer from memory into the first element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := MEM[mem_addr+15:mem_addr]
        dst[MAX:16] := 0
        	

_mm_loadu_si32
--------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void const* mem_addr
:Param ETypes:
    UI32 mem_addr

.. code-block:: C

    __m128i _mm_loadu_si32(void const* mem_addr);

.. admonition:: Intel Description

    Load unaligned 32-bit integer from memory into the first element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := MEM[mem_addr+31:mem_addr]
        dst[MAX:32] := 0
        	

_mm_loadl_epi64
---------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i const* mem_addr
:Param ETypes:
    UI64 mem_addr

.. code-block:: C

    __m128i _mm_loadl_epi64(__m128i const* mem_addr);

.. admonition:: Intel Description

    Load 64-bit integer from memory into the first element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MEM[mem_addr+63:mem_addr]
        dst[MAX:64] := 0
        	

_mm_load_si128
--------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i const* mem_addr
:Param ETypes:
    M128 mem_addr

.. code-block:: C

    __m128i _mm_load_si128(__m128i const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits of integer data from memory into "dst". 
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        	

_mm_loadu_si128
---------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i const* mem_addr
:Param ETypes:
    M128 mem_addr

.. code-block:: C

    __m128i _mm_loadu_si128(__m128i const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits of integer data from memory into "dst".
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        	

_mm_load_pd
-----------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_load_pd(double const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 2 packed double-precision (64-bit) floating-point elements) from memory into "dst".
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        	

_mm_load1_pd
------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_load1_pd(double const* mem_addr);

.. admonition:: Intel Description

    Load a double-precision (64-bit) floating-point element from memory into both elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MEM[mem_addr+63:mem_addr]
        dst[127:64] := MEM[mem_addr+63:mem_addr]
        	

_mm_load_pd1
------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_load_pd1(double const* mem_addr);

.. admonition:: Intel Description

    Load a double-precision (64-bit) floating-point element from memory into both elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MEM[mem_addr+63:mem_addr]
        dst[127:64] := MEM[mem_addr+63:mem_addr]
        	

_mm_loadr_pd
------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_loadr_pd(double const* mem_addr);

.. admonition:: Intel Description

    Load 2 double-precision (64-bit) floating-point elements from memory into "dst" in reverse order. mem_addr must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MEM[mem_addr+127:mem_addr+64]
        dst[127:64] := MEM[mem_addr+63:mem_addr]
        	

_mm_loadu_pd
------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_loadu_pd(double const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits (composed of 2 packed double-precision (64-bit) floating-point elements) from memory into "dst".
    	"mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        	

_mm_load_sd
-----------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_load_sd(double const* mem_addr);

.. admonition:: Intel Description

    Load a double-precision (64-bit) floating-point element from memory into the lower of "dst", and zero the upper element. "mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MEM[mem_addr+63:mem_addr]
        dst[127:64] := 0
        	

_mm_loadh_pd
------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    double const* mem_addr
:Param ETypes:
    FP64 a, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_loadh_pd(__m128d a, double const* mem_addr);

.. admonition:: Intel Description

    Load a double-precision (64-bit) floating-point element from memory into the upper element of "dst", and copy the lower element from "a" to "dst". "mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[127:64] := MEM[mem_addr+63:mem_addr]
        	

_mm_loadl_pd
------------
:Tech: SSE_ALL
:Category: Load
:Header: emmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    double const* mem_addr
:Param ETypes:
    FP64 a, 
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_loadl_pd(__m128d a, double const* mem_addr);

.. admonition:: Intel Description

    Load a double-precision (64-bit) floating-point element from memory into the lower element of "dst", and copy the upper element from "a" to "dst". "mem_addr" does not need to be aligned on any particular boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MEM[mem_addr+63:mem_addr]
        dst[127:64] := a[127:64]
        	

_mm_lddqu_si128
---------------
:Tech: SSE_ALL
:Category: Load
:Header: pmmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i const* mem_addr
:Param ETypes:
    M128 mem_addr

.. code-block:: C

    __m128i _mm_lddqu_si128(__m128i const* mem_addr);

.. admonition:: Intel Description

    Load 128-bits of integer data from unaligned memory into "dst". This intrinsic may perform better than "_mm_loadu_si128" when the data crosses a cache line boundary.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        	

_mm_loaddup_pd
--------------
:Tech: SSE_ALL
:Category: Load
:Header: pmmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* mem_addr
:Param ETypes:
    FP64 mem_addr

.. code-block:: C

    __m128d _mm_loaddup_pd(double const* mem_addr);

.. admonition:: Intel Description

    Load a double-precision (64-bit) floating-point element from memory into both elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := MEM[mem_addr+63:mem_addr]
        dst[127:64] := MEM[mem_addr+63:mem_addr]
        	

_mm_stream_load_si128
---------------------
:Tech: SSE_ALL
:Category: Load
:Header: smmintrin.h
:Searchable: SSE_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    void* mem_addr
:Param ETypes:
    M128 mem_addr

.. code-block:: C

    __m128i _mm_stream_load_si128(void* mem_addr);

.. admonition:: Intel Description

    Load 128-bits of integer data from memory into "dst" using a non-temporal memory hint.
    	"mem_addr" must be aligned on a 16-byte boundary or a general-protection exception may be generated.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := MEM[mem_addr+127:mem_addr]
        	

