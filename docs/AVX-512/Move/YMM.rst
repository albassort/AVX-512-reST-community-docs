AVX-512-Move-YMM
================

_mm256_mask_mov_epi16
---------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    __m256i a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm256_mask_mov_epi16(__m256i src, __mmask16 k,
                                  __m256i a)

.. admonition:: Intel Description

    Move packed 16-bit integers from "a" into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[i+15:i]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_mov_epi16
----------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm256_maskz_mov_epi16(__mmask16 k, __m256i a);

.. admonition:: Intel Description

    Move packed 16-bit integers from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[i+15:i]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_mov_epi8
--------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    __m256i a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m256i _mm256_mask_mov_epi8(__m256i src, __mmask32 k,
                                 __m256i a)

.. admonition:: Intel Description

    Move packed 8-bit integers from "a" into "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[i+7:i]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_mov_epi8
---------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m256i _mm256_maskz_mov_epi8(__mmask32 k, __m256i a);

.. admonition:: Intel Description

    Move packed 8-bit integers from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[i+7:i]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_mov_pd
------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
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

    __m256d _mm256_mask_mov_pd(__m256d src, __mmask8 k,
                               __m256d a)

.. admonition:: Intel Description

    Move packed double-precision (64-bit) floating-point elements from "a" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_mov_pd
-------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_maskz_mov_pd(__mmask8 k, __m256d a);

.. admonition:: Intel Description

    Move packed double-precision (64-bit) floating-point elements from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_mov_ps
------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
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

    __m256 _mm256_mask_mov_ps(__m256 src, __mmask8 k, __m256 a);

.. admonition:: Intel Description

    Move packed single-precision (32-bit) floating-point elements from "a" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_mov_ps
-------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_mov_ps(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Move packed single-precision (32-bit) floating-point elements from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_movedup_pd
----------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
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

    __m256d _mm256_mask_movedup_pd(__m256d src, __mmask8 k,
                                   __m256d a)

.. admonition:: Intel Description

    Duplicate even-indexed double-precision (64-bit) floating-point elements from "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[63:0] := a[63:0]
        tmp[127:64] := a[63:0]
        tmp[191:128] := a[191:128]
        tmp[255:192] := a[191:128]
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_movedup_pd
-----------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    __m256d _mm256_maskz_movedup_pd(__mmask8 k, __m256d a);

.. admonition:: Intel Description

    Duplicate even-indexed double-precision (64-bit) floating-point elements from "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[63:0] := a[63:0]
        tmp[127:64] := a[63:0]
        tmp[191:128] := a[191:128]
        tmp[255:192] := a[191:128]
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := tmp[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_mov_epi32
---------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
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

    __m256i _mm256_mask_mov_epi32(__m256i src, __mmask8 k,
                                  __m256i a)

.. admonition:: Intel Description

    Move packed 32-bit integers from "a" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_mov_epi32
----------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_mov_epi32(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Move packed 32-bit integers from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_mov_epi64
---------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
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

    __m256i _mm256_mask_mov_epi64(__m256i src, __mmask8 k,
                                  __m256i a)

.. admonition:: Intel Description

    Move packed 64-bit integers from "a" to "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_mov_epi64
----------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_maskz_mov_epi64(__mmask8 k, __m256i a);

.. admonition:: Intel Description

    Move packed 64-bit integers from "a" into "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_movehdup_ps
-----------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
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

    __m256 _mm256_mask_movehdup_ps(__m256 src, __mmask8 k,
                                   __m256 a)

.. admonition:: Intel Description

    Duplicate odd-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := a[63:32] 
        tmp[63:32] := a[63:32] 
        tmp[95:64] := a[127:96] 
        tmp[127:96] := a[127:96]
        tmp[159:128] := a[191:160] 
        tmp[191:160] := a[191:160] 
        tmp[223:192] := a[255:224] 
        tmp[255:224] := a[255:224]
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_movehdup_ps
------------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_movehdup_ps(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Duplicate odd-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := a[63:32] 
        tmp[63:32] := a[63:32] 
        tmp[95:64] := a[127:96] 
        tmp[127:96] := a[127:96]
        tmp[159:128] := a[191:160] 
        tmp[191:160] := a[191:160] 
        tmp[223:192] := a[255:224] 
        tmp[255:224] := a[255:224]
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_moveldup_ps
-----------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
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

    __m256 _mm256_mask_moveldup_ps(__m256 src, __mmask8 k,
                                   __m256 a)

.. admonition:: Intel Description

    Duplicate even-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := a[31:0] 
        tmp[63:32] := a[31:0] 
        tmp[95:64] := a[95:64] 
        tmp[127:96] := a[95:64]
        tmp[159:128] := a[159:128] 
        tmp[191:160] := a[159:128] 
        tmp[223:192] := a[223:192] 
        tmp[255:224] := a[223:192]
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR	
        dst[MAX:256] := 0
        	

_mm256_maskz_moveldup_ps
------------------------
:Tech: AVX-512
:Category: Move
:Header: immintrin.h
:Searchable: AVX-512-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    __m256 _mm256_maskz_moveldup_ps(__mmask8 k, __m256 a);

.. admonition:: Intel Description

    Duplicate even-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[31:0] := a[31:0] 
        tmp[63:32] := a[31:0] 
        tmp[95:64] := a[95:64] 
        tmp[127:96] := a[95:64]
        tmp[159:128] := a[159:128] 
        tmp[191:160] := a[159:128] 
        tmp[223:192] := a[223:192] 
        tmp[255:224] := a[223:192]
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := tmp[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

