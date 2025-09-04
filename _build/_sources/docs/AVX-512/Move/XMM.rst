AVX-512-Move-XMM
================

_mm_mask_mov_epi16
------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_mask_mov_epi16(__m128i src, __mmask8 k,
                               __m128i a)

.. admonition:: Intel Description

    Move packed 16-bit integers from "a" into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_mov_epi16
-------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m128i _mm_maskz_mov_epi16(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Move packed 16-bit integers from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_mov_epi8
-----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask16 k, 
    __m128i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_mask_mov_epi8(__m128i src, __mmask16 k,
                              __m128i a)

.. admonition:: Intel Description

    Move packed 8-bit integers from "a" into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_mov_epi8
------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask16 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m128i _mm_maskz_mov_epi8(__mmask16 k, __m128i a);

.. admonition:: Intel Description

    Move packed 8-bit integers from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_mov_pd
---------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128d _mm_mask_mov_pd(__m128d src, __mmask8 k, __m128d a);

.. admonition:: Intel Description

    Move packed double-precision (64-bit) floating-point elements from "a" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_mov_pd
----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128d _mm_maskz_mov_pd(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Move packed double-precision (64-bit) floating-point elements from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_mov_ps
---------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128 _mm_mask_mov_ps(__m128 src, __mmask8 k, __m128 a);

.. admonition:: Intel Description

    Move packed single-precision (32-bit) floating-point elements from "a" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_mov_ps
----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128 _mm_maskz_mov_ps(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Move packed single-precision (32-bit) floating-point elements from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_movedup_pd
-------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m128d _mm_mask_movedup_pd(__m128d src, __mmask8 k,
                                __m128d a)

.. admonition:: Intel Description

    Duplicate even-indexed double-precision (64-bit) floating-point elements from "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[63:0] := a[63:0]
        tmp[127:64] := a[63:0]
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_movedup_pd
--------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m128d _mm_maskz_movedup_pd(__mmask8 k, __m128d a);

.. admonition:: Intel Description

    Duplicate even-indexed double-precision (64-bit) floating-point elements from "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[63:0] := a[63:0]
        tmp[127:64] := a[63:0]
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_mov_epi32
------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_mask_mov_epi32(__m128i src, __mmask8 k,
                               __m128i a)

.. admonition:: Intel Description

    Move packed 32-bit integers from "a" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_mov_epi32
-------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m128i _mm_maskz_mov_epi32(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Move packed 32-bit integers from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_mov_epi64
------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i src, 
    __mmask8 k, 
    __m128i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_mask_mov_epi64(__m128i src, __mmask8 k,
                               __m128i a)

.. admonition:: Intel Description

    Move packed 64-bit integers from "a" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_mov_epi64
-------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __mmask8 k, 
    __m128i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m128i _mm_maskz_mov_epi64(__mmask8 k, __m128i a);

.. admonition:: Intel Description

    Move packed 64-bit integers from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_movehdup_ps
--------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128 _mm_mask_movehdup_ps(__m128 src, __mmask8 k,
                                __m128 a)

.. admonition:: Intel Description

    Duplicate odd-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := a[63:32] 
        tmp[63:32] := a[63:32] 
        tmp[95:64] := a[127:96] 
        tmp[127:96] := a[127:96]
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_maskz_movehdup_ps
---------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128 _mm_maskz_movehdup_ps(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Duplicate odd-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := a[63:32] 
        tmp[63:32] := a[63:32] 
        tmp[95:64] := a[127:96] 
        tmp[127:96] := a[127:96]
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_moveldup_ps
--------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m128 _mm_mask_moveldup_ps(__m128 src, __mmask8 k,
                                __m128 a)

.. admonition:: Intel Description

    Duplicate even-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := a[31:0] 
        tmp[63:32] := a[31:0] 
        tmp[95:64] := a[95:64] 
        tmp[127:96] := a[95:64]
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:128] := 0
        	

_mm_maskz_moveldup_ps
---------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m128 _mm_maskz_moveldup_ps(__mmask8 k, __m128 a);

.. admonition:: Intel Description

    Duplicate even-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := a[31:0] 
        tmp[63:32] := a[31:0] 
        tmp[95:64] := a[95:64] 
        tmp[127:96] := a[95:64]
        FOR j := 0 to 3
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_mask_move_sd
----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d src, 
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_mask_move_sd(__m128d src, __mmask8 k, __m128d a,
                             __m128d b)

.. admonition:: Intel Description

    Move the lower double-precision (64-bit) floating-point element from "b" to the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := b[63:0]
        ELSE
        	dst[63:0] := src[63:0]
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_maskz_move_sd
-----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __mmask8 k, 
    __m128d a, 
    __m128d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_maskz_move_sd(__mmask8 k, __m128d a, __m128d b);

.. admonition:: Intel Description

    Move the lower double-precision (64-bit) floating-point element from "b" to the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper element from "a" to the upper element of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[63:0] := b[63:0]
        ELSE
        	dst[63:0] := 0
        FI
        dst[127:64] := a[127:64]
        dst[MAX:128] := 0
        	

_mm_mask_move_ss
----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 src, 
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_mask_move_ss(__m128 src, __mmask8 k, __m128 a,
                            __m128 b)

.. admonition:: Intel Description

    Move the lower single-precision (32-bit) floating-point element from "b" to the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := b[31:0]
        ELSE
        	dst[31:0] := src[31:0]
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_maskz_move_ss
-----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __mmask8 k, 
    __m128 a, 
    __m128 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_maskz_move_ss(__mmask8 k, __m128 a, __m128 b);

.. admonition:: Intel Description

    Move the lower single-precision (32-bit) floating-point element from "b" to the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 3 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst[31:0] := b[31:0]
        ELSE
        	dst[31:0] := 0
        FI
        dst[127:32] := a[127:32]
        dst[MAX:128] := 0
        	

_mm_move_sh
-----------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_move_sh(__m128h a, __m128h b);

.. admonition:: Intel Description

    Move the lower half-precision (16-bit) floating-point element from "b" to the lower element of "dst", and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := b.fp16[0]
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_mask_move_sh
----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __m128h src, 
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_mask_move_sh(__m128h src, __mmask8 k, __m128h a,
                             __m128h b)

.. admonition:: Intel Description

    Move the lower half-precision (16-bit) floating-point element from "b" to the lower element of "dst" using writemask "k" (the element is copied from "src" when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := b.fp16[0]
        ELSE
        	dst.fp16[0] := src.fp16[0]
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

_mm_maskz_move_sh
-----------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-XMM
:Register: XMM 128 bit
:Return Type: __m128h
:Param Types:
    __mmask8 k, 
    __m128h a, 
    __m128h b
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b

.. code-block:: C

    __m128h _mm_maskz_move_sh(__mmask8 k, __m128h a, __m128h b);

.. admonition:: Intel Description

    Move the lower half-precision (16-bit) floating-point element from "b" to the lower element of "dst" using zeromask "k" (the element is zeroed out when mask bit 0 is not set), and copy the upper 7 packed elements from "a" to the upper elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF k[0]
        	dst.fp16[0] := b.fp16[0]
        ELSE
        	dst.fp16[0] := 0
        FI
        dst[127:16] := a[127:16]
        dst[MAX:128] := 0
        	

