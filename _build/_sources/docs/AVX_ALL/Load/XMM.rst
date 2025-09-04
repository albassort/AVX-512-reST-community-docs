AVX_ALL-Load-XMM
================

_mm_maskload_pd
---------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const * mem_addr, 
    __m128i mask
:Param ETypes:
    FP64 mem_addr, 
    MASK mask

.. code-block:: C

    __m128d _mm_maskload_pd(double const* mem_addr,
                            __m128i mask)

.. admonition:: Intel Description

    Load packed double-precision (64-bit) floating-point elements from memory into "dst" using "mask" (elements are zeroed out when the high bit of the corresponding element is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF mask[i+63]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskload_ps
---------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const * mem_addr, 
    __m128i mask
:Param ETypes:
    FP32 mem_addr, 
    MASK mask

.. code-block:: C

    __m128 _mm_maskload_ps(float const* mem_addr, __m128i mask)

.. admonition:: Intel Description

    Load packed single-precision (32-bit) floating-point elements from memory into "dst" using "mask" (elements are zeroed out when the high bit of the corresponding element is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF mask[i+31]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_i32gather_pd
----------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* base_addr, 
    __m128i vindex, 
    const int scale
:Param ETypes:
    FP64 base_addr, 
    SI32 vindex, 
    IMM scale

.. code-block:: C

    __m128d _mm_i32gather_pd(double const* base_addr,
                             __m128i vindex, const int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_i32gather_ps
----------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const* base_addr, 
    __m128i vindex, 
    const int scale
:Param ETypes:
    FP32 base_addr, 
    SI32 vindex, 
    IMM scale

.. code-block:: C

    __m128 _mm_i32gather_ps(float const* base_addr,
                            __m128i vindex, const int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+31:i] := MEM[addr+31:addr]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_i32gather_epi32
-------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    int const* base_addr, 
    __m128i vindex, 
    const int scale
:Param ETypes:
    UI32 base_addr, 
    SI32 vindex, 
    IMM scale

.. code-block:: C

    __m128i _mm_i32gather_epi32(int const* base_addr,
                                __m128i vindex,
                                const int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+31:i] := MEM[addr+31:addr]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_i32gather_epi64
-------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __int64 const* base_addr, 
    __m128i vindex, 
    const int scale
:Param ETypes:
    UI64 base_addr, 
    SI32 vindex, 
    IMM scale

.. code-block:: C

    __m128i _mm_i32gather_epi64(__int64 const* base_addr,
                                __m128i vindex,
                                const int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*32
        	addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_i64gather_pd
----------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    double const* base_addr, 
    __m128i vindex, 
    const int scale
:Param ETypes:
    FP64 base_addr, 
    SI64 vindex, 
    IMM scale

.. code-block:: C

    __m128d _mm_i64gather_pd(double const* base_addr,
                             __m128i vindex, const int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*64
        	addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_i64gather_ps
----------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    float const* base_addr, 
    __m128i vindex, 
    const int scale
:Param ETypes:
    FP32 base_addr, 
    SI64 vindex, 
    IMM scale

.. code-block:: C

    __m128 _mm_i64gather_ps(float const* base_addr,
                            __m128i vindex, const int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        	dst[i+31:i] := MEM[addr+31:addr]
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_i64gather_epi32
-------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    int const* base_addr, 
    __m128i vindex, 
    const int scale
:Param ETypes:
    UI32 base_addr, 
    SI64 vindex, 
    IMM scale

.. code-block:: C

    __m128i _mm_i64gather_epi32(int const* base_addr,
                                __m128i vindex,
                                const int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        	dst[i+31:i] := MEM[addr+31:addr]
        ENDFOR
        dst[MAX:64] := 0
        	

_mm_i64gather_epi64
-------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __int64 const* base_addr, 
    __m128i vindex, 
    const int scale
:Param ETypes:
    UI64 base_addr, 
    SI64 vindex, 
    IMM scale

.. code-block:: C

    __m128i _mm_i64gather_epi64(__int64 const* base_addr,
                                __m128i vindex,
                                const int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst". "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*64
        	addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        	dst[i+63:i] := MEM[addr+63:addr]
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_i32gather_pd
---------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    double const* base_addr, 
    __m128i vindex, 
    __m128d mask, 
    const int scale
:Param ETypes:
    FP64 src, 
    FP64 base_addr, 
    SI32 vindex, 
    MASK mask, 
    IMM scale

.. code-block:: C

    __m128d _mm_mask_i32gather_pd(__m128d src,
                                  double const* base_addr,
                                  __m128i vindex, __m128d mask,
                                  const int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using "mask" (elements are copied from "src" when the highest bit is not set in the corresponding element). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*32
        	IF mask[i+63]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        mask[MAX:128] := 0
        dst[MAX:128] := 0
        	

_mm_mask_i32gather_ps
---------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    float const* base_addr, 
    __m128i vindex, 
    __m128 mask, 
    const int scale
:Param ETypes:
    FP32 src, 
    FP32 base_addr, 
    SI32 vindex, 
    MASK mask, 
    IMM scale

.. code-block:: C

    __m128 _mm_mask_i32gather_ps(__m128 src,
                                 float const* base_addr,
                                 __m128i vindex, __m128 mask,
                                 const int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using "mask" (elements are copied from "src" when the highest bit is not set in the corresponding element). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*32
        	IF mask[i+31]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        mask[MAX:128] := 0
        dst[MAX:128] := 0
        	

_mm_mask_i32gather_epi32
------------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    int const* base_addr, 
    __m128i vindex, 
    __m128i mask, 
    const int scale
:Param ETypes:
    UI32 src, 
    UI32 base_addr, 
    SI32 vindex, 
    MASK mask, 
    IMM scale

.. code-block:: C

    __m128i _mm_mask_i32gather_epi32(__m128i src,
                                     int const* base_addr,
                                     __m128i vindex,
                                     __m128i mask,
                                     const int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 32-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using "mask" (elements are copied from "src" when the highest bit is not set in the corresponding element). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	m := j*32
        	IF mask[i+31]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        mask[MAX:128] := 0
        dst[MAX:128] := 0
        	

_mm_mask_i32gather_epi64
------------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __int64 const* base_addr, 
    __m128i vindex, 
    __m128i mask, 
    const int scale
:Param ETypes:
    UI64 src, 
    UI64 base_addr, 
    SI32 vindex, 
    MASK mask, 
    IMM scale

.. code-block:: C

    __m128i _mm_mask_i32gather_epi64(__m128i src,
                                     __int64 const* base_addr,
                                     __m128i vindex,
                                     __m128i mask,
                                     const int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 32-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 32-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using "mask" (elements are copied from "src" when the highest bit is not set in the corresponding element). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*32
        	IF mask[i+63]
        		addr := base_addr + SignExtend64(vindex[m+31:m]) * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        mask[MAX:128] := 0
        dst[MAX:128] := 0
        	

_mm_mask_i64gather_pd
---------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    double const* base_addr, 
    __m128i vindex, 
    __m128d mask, 
    const int scale
:Param ETypes:
    FP64 src, 
    FP64 base_addr, 
    SI64 vindex, 
    MASK mask, 
    IMM scale

.. code-block:: C

    __m128d _mm_mask_i64gather_pd(__m128d src,
                                  double const* base_addr,
                                  __m128i vindex, __m128d mask,
                                  const int scale)

.. admonition:: Intel Description

    Gather double-precision (64-bit) floating-point elements from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using "mask" (elements are copied from "src" when the highest bit is not set in the corresponding element). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*64
        	IF mask[i+63]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        mask[MAX:128] := 0
        dst[MAX:128] := 0
        	

_mm_mask_i64gather_ps
---------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    float const* base_addr, 
    __m128i vindex, 
    __m128 mask, 
    const int scale
:Param ETypes:
    FP32 src, 
    FP32 base_addr, 
    SI64 vindex, 
    MASK mask, 
    IMM scale

.. code-block:: C

    __m128 _mm_mask_i64gather_ps(__m128 src,
                                 float const* base_addr,
                                 __m128i vindex, __m128 mask,
                                 const int scale)

.. admonition:: Intel Description

    Gather single-precision (32-bit) floating-point elements from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using "mask" (elements are copied from "src" when the highest bit is not set in the corresponding element). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	IF mask[i+31]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        mask[MAX:64] := 0
        dst[MAX:64] := 0
        	

_mm_mask_i64gather_epi32
------------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    int const* base_addr, 
    __m128i vindex, 
    __m128i mask, 
    const int scale
:Param ETypes:
    UI32 src, 
    UI32 base_addr, 
    SI64 vindex, 
    MASK mask, 
    IMM scale

.. code-block:: C

    __m128i _mm_mask_i64gather_epi32(__m128i src,
                                     int const* base_addr,
                                     __m128i vindex,
                                     __m128i mask,
                                     const int scale)

.. admonition:: Intel Description

    Gather 32-bit integers from memory using 64-bit indices. 32-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using "mask" (elements are copied from "src" when the highest bit is not set in the corresponding element). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	m := j*64
        	IF mask[i+31]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+31:i] := MEM[addr+31:addr]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        mask[MAX:64] := 0
        dst[MAX:64] := 0
        	

_mm_mask_i64gather_epi64
------------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __int64 const* base_addr, 
    __m128i vindex, 
    __m128i mask, 
    const int scale
:Param ETypes:
    UI64 src, 
    UI64 base_addr, 
    SI64 vindex, 
    MASK mask, 
    IMM scale

.. code-block:: C

    __m128i _mm_mask_i64gather_epi64(__m128i src,
                                     __int64 const* base_addr,
                                     __m128i vindex,
                                     __m128i mask,
                                     const int scale)

.. admonition:: Intel Description

    Gather 64-bit integers from memory using 64-bit indices. 64-bit elements are loaded from addresses starting at "base_addr" and offset by each 64-bit element in "vindex" (each index is scaled by the factor in "scale"). Gathered elements are merged into "dst" using "mask" (elements are copied from "src" when the highest bit is not set in the corresponding element). "scale" should be 1, 2, 4 or 8.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	m := j*64
        	IF mask[i+63]
        		addr := base_addr + vindex[m+63:m] * ZeroExtend64(scale) * 8
        		dst[i+63:i] := MEM[addr+63:addr]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        mask[MAX:128] := 0
        dst[MAX:128] := 0
        	

_mm_maskload_epi32
------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    int const* mem_addr, 
    __m128i mask
:Param ETypes:
    UI32 mem_addr, 
    MASK mask

.. code-block:: C

    __m128i _mm_maskload_epi32(int const* mem_addr,
                               __m128i mask)

.. admonition:: Intel Description

    Load packed 32-bit integers from memory into "dst" using "mask" (elements are zeroed out when the highest bit is not set in the corresponding element).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF mask[i+31]
        		dst[i+31:i] := MEM[mem_addr+i+31:mem_addr+i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskload_epi64
------------------
:Tech: AVX_ALL
:Category: Load
:Header: immintrin.h
:Searchable: AVX_ALL-Load-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __int64 const* mem_addr, 
    __m128i mask
:Param ETypes:
    UI64 mem_addr, 
    MASK mask

.. code-block:: C

    __m128i _mm_maskload_epi64(__int64 const* mem_addr,
                               __m128i mask)

.. admonition:: Intel Description

    Load packed 64-bit integers from memory into "dst" using "mask" (elements are zeroed out when the highest bit is not set in the corresponding element).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF mask[i+63]
        		dst[i+63:i] := MEM[mem_addr+i+63:mem_addr+i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

