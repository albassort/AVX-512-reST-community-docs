AVX-512-Special Math Functions-ZMM
==================================

_mm512_mask_max_pd
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512d _mm512_mask_max_pd(__m512d src, __mmask8 k,
                               __m512d a, __m512d b)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_round_pd
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_max_round_pd(__m512d src, __mmask8 k,
                                     __m512d a, __m512d b,
                                     int sae)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).   [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_pd
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512d _mm512_maskz_max_pd(__mmask8 k, __m512d a,
                                __m512d b)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_round_pd
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_max_round_pd(__mmask8 k, __m512d a,
                                      __m512d b, int sae)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_pd
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_max_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_round_pd
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int sae
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m512d _mm512_max_round_pd(__m512d a, __m512d b, int sae);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst".  [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_ps
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512 _mm512_mask_max_ps(__m512 src, __mmask16 k, __m512 a,
                              __m512 b)

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_round_ps
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_max_round_ps(__m512 src, __mmask16 k,
                                    __m512 a, __m512 b,
                                    int sae)

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).   [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_ps
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512 _mm512_maskz_max_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_round_ps
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_max_round_ps(__mmask16 k, __m512 a,
                                     __m512 b, int sae)

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_ps
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_max_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_round_ps
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int sae
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m512 _mm512_max_round_ps(__m512 a, __m512 b, int sae);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst".  [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_pd
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512d _mm512_mask_min_pd(__m512d src, __mmask8 k,
                               __m512d a, __m512d b)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_round_pd
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int sae
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m512d _mm512_mask_min_round_pd(__m512d src, __mmask8 k,
                                     __m512d a, __m512d b,
                                     int sae)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).   [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_pd
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512d _mm512_maskz_min_pd(__mmask8 k, __m512d a,
                                __m512d b)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_round_pd
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __mmask8 k, 
    __m512d a, 
    __m512d b, 
    int sae
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m512d _mm512_maskz_min_round_pd(__mmask8 k, __m512d a,
                                      __m512d b, int sae)

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_pd
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_min_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_round_pd
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b, 
    int sae
:Param ETypes:
    FP64 a, 
    FP64 b, 
    IMM sae

.. code-block:: C

    __m512d _mm512_min_round_pd(__m512d a, __m512d b, int sae);

.. admonition:: Intel Description

    Compare packed double-precision (64-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst".  [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_ps
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512 _mm512_mask_min_ps(__m512 src, __mmask16 k, __m512 a,
                              __m512 b)

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_round_ps
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int sae
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m512 _mm512_mask_min_round_ps(__m512 src, __mmask16 k,
                                    __m512 a, __m512 b,
                                    int sae)

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).   [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_ps
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512 _mm512_maskz_min_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_round_ps
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __mmask16 k, 
    __m512 a, 
    __m512 b, 
    int sae
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m512 _mm512_maskz_min_round_ps(__mmask16 k, __m512 a,
                                     __m512 b, int sae)

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).  [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_ps
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_min_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_round_ps
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b, 
    int sae
:Param ETypes:
    FP32 a, 
    FP32 b, 
    IMM sae

.. code-block:: C

    __m512 _mm512_min_round_ps(__m512 a, __m512 b, int sae);

.. admonition:: Intel Description

    Compare packed single-precision (32-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst".  [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_abs_epi32
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    SI32 a

.. code-block:: C

    __m512i _mm512_abs_epi32(__m512i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 32-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ABS(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_abs_epi32
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i a
:Param ETypes:
    UI32 src, 
    MASK k, 
    SI32 a

.. code-block:: C

    __m512i _mm512_mask_abs_epi32(__m512i src, __mmask16 k,
                                  __m512i a)

.. admonition:: Intel Description

    Compute the absolute value of packed signed 32-bit integers in "a", and store the unsigned results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ABS(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_abs_epi32
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    __m512i _mm512_maskz_abs_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 32-bit integers in "a", and store the unsigned results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ABS(a[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_abs_epi64
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __m512i _mm512_abs_epi64(__m512i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 64-bit integers in "a", and store the unsigned results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ABS(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_abs_epi64
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask8 k, 
    __m512i a
:Param ETypes:
    UI64 src, 
    MASK k, 
    SI64 a

.. code-block:: C

    __m512i _mm512_mask_abs_epi64(__m512i src, __mmask8 k,
                                  __m512i a)

.. admonition:: Intel Description

    Compute the absolute value of packed signed 64-bit integers in "a", and store the unsigned results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ABS(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_abs_epi64
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __m512i _mm512_maskz_abs_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Compute the absolute value of packed signed 64-bit integers in "a", and store the unsigned results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ABS(a[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_epi32
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_maskz_max_epi32(__mmask16 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0 
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_epi64
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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
    SI64 a, 
    SI64 b

.. code-block:: C

    __m512i _mm512_mask_max_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_epi64
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI64 a, 
    SI64 b

.. code-block:: C

    __m512i _mm512_maskz_max_epi64(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_epi64
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __m512i _mm512_max_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_epu32
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512i _mm512_maskz_max_epu32(__mmask16 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_epu64
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512i _mm512_mask_max_epu64(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_epu64
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512i _mm512_maskz_max_epu64(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_epu64
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_max_epu64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := MAX(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_epi32
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_maskz_min_epi32(__mmask16 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_epi64
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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
    SI64 a, 
    SI64 b

.. code-block:: C

    __m512i _mm512_mask_min_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_epi64
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k, 
    SI64 a, 
    SI64 b

.. code-block:: C

    __m512i _mm512_maskz_min_epi64(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_epi64
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __m512i _mm512_min_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed signed 64-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_epu32
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512i _mm512_maskz_min_epu32(__mmask16 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_epu64
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512i _mm512_mask_min_epu64(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_epu64
----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512i _mm512_maskz_min_epu64(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_epu64
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_min_epu64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed unsigned 64-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := MIN(a[i+63:i], b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_epi32
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_mask_max_epi32(__m512i src, __mmask16 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_epi32
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_max_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_epu32
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512i _mm512_mask_max_epu32(__m512i src, __mmask16 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_epu32
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_max_epu32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := MAX(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_epi32
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_mask_min_epi32(__m512i src, __mmask16 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_epi32
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    SI32 a, 
    SI32 b

.. code-block:: C

    __m512i _mm512_min_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed signed 32-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_epu32
---------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512i _mm512_mask_min_epu32(__m512i src, __mmask16 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_epu32
----------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_min_epu32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compare packed unsigned 32-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := MIN(a[i+31:i], b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_max_epi32
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    int _mm512_mask_reduce_max_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed signed 32-bit integers in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[31:0] > src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] > src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := Int32(-0x80000000)
        	FI
        ENDFOR
        dst[31:0] := REDUCE_MAX(tmp, 16)
        	

_mm512_mask_reduce_max_epi64
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __int64 _mm512_mask_reduce_max_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed signed 64-bit integers in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[63:0] > src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] > src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := Int64(-0x8000000000000000)
        	FI
        ENDFOR
        dst[63:0] := REDUCE_MAX(tmp, 8)
        	

_mm512_mask_reduce_max_epu32
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: unsigned int
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    unsigned int _mm512_mask_reduce_max_epu32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 32-bit integers in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[31:0] > src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] > src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := 0
        	FI
        ENDFOR
        dst[31:0] := REDUCE_MAX(tmp, 16)
        	

_mm512_mask_reduce_max_epu64
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: unsigned __int64
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    unsigned __int64 _mm512_mask_reduce_max_epu64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 64-bit integers in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[63:0] > src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] > src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := 0
        	FI
        ENDFOR
        dst[63:0] := REDUCE_MAX(tmp, 8)
        	

_mm512_mask_reduce_max_pd
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    double _mm512_mask_reduce_max_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Reduce the packed double-precision (64-bit) floating-point elements in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[63:0] > src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] > src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := Cast_FP64(0xFFEFFFFFFFFFFFFF)
        	FI
        ENDFOR
        dst[63:0] := REDUCE_MAX(tmp, 8)
        	

_mm512_mask_reduce_max_ps
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    float _mm512_mask_reduce_max_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Reduce the packed single-precision (32-bit) floating-point elements in "a" by maximum using mask "k". Returns the maximum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[31:0] > src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] > src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := Cast_FP32(0xFF7FFFFF)
        	FI
        ENDFOR
        dst[31:0] := REDUCE_MAX(tmp, 16)
        	

_mm512_mask_reduce_min_epi32
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI32 a

.. code-block:: C

    int _mm512_mask_reduce_min_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed signed 32-bit integers in "a" by maximum using mask "k". Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[31:0] < src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] < src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := Int32(0x7FFFFFFF)
        	FI
        ENDFOR
        dst[31:0] := REDUCE_MIN(tmp, 16)
        	

_mm512_mask_reduce_min_epi64
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    SI64 a

.. code-block:: C

    __int64 _mm512_mask_reduce_min_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed signed 64-bit integers in "a" by maximum using mask "k". Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[63:0] < src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] < src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := Int64(0x7FFFFFFFFFFFFFFF)
        	FI
        ENDFOR
        dst[63:0] := REDUCE_MIN(tmp, 8)
        	

_mm512_mask_reduce_min_epu32
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: unsigned int
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    unsigned int _mm512_mask_reduce_min_epu32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 32-bit integers in "a" by maximum using mask "k". Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[31:0] < src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] < src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := 0xFFFFFFFF
        	FI
        ENDFOR
        dst[31:0] := REDUCE_MIN(tmp, 16)
        	

_mm512_mask_reduce_min_epu64
----------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: unsigned __int64
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    unsigned __int64 _mm512_mask_reduce_min_epu64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 64-bit integers in "a" by minimum using mask "k". Returns the minimum of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[63:0] < src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] < src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := 0xFFFFFFFFFFFFFFFF
        	FI
        ENDFOR
        dst[63:0] := REDUCE_MIN(tmp, 8)
        	

_mm512_mask_reduce_min_pd
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __mmask8 k, 
    __m512d a
:Param ETypes:
    MASK k, 
    FP64 a

.. code-block:: C

    double _mm512_mask_reduce_min_pd(__mmask8 k, __m512d a);

.. admonition:: Intel Description

    Reduce the packed double-precision (64-bit) floating-point elements in "a" by maximum using mask "k". Returns the minimum of all active elements in "a". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[63:0] < src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] < src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[64*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 8
        	i := j*64
        	IF k[j]
        		tmp[i+63:i] := a[i+63:i]
        	ELSE
        		tmp[i+63:i] := Cast_FP64(0x7FEFFFFFFFFFFFFF)
        	FI
        ENDFOR
        dst[63:0] := REDUCE_MIN(tmp, 8)
        	

_mm512_mask_reduce_min_ps
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __mmask16 k, 
    __m512 a
:Param ETypes:
    MASK k, 
    FP32 a

.. code-block:: C

    float _mm512_mask_reduce_min_ps(__mmask16 k, __m512 a);

.. admonition:: Intel Description

    Reduce the packed single-precision (32-bit) floating-point elements in "a" by maximum using mask "k". Returns the minimum of all active elements in "a". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[31:0] < src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] < src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[32*len-1:0], len)
        }
        tmp := a
        FOR j := 0 to 16
        	i := j*32
        	IF k[j]
        		tmp[i+31:i] := a[i+31:i]
        	ELSE
        		tmp[i+31:i] := Cast_FP32(0x7F7FFFFF)
        	FI
        ENDFOR
        dst[31:0] := REDUCE_MIN(tmp, 16)
        	

_mm512_reduce_max_epi32
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __m512i a
:Param ETypes:
    SI32 a

.. code-block:: C

    int _mm512_reduce_max_epi32(__m512i a);

.. admonition:: Intel Description

    Reduce the packed signed 32-bit integers in "a" by maximum. Returns the maximum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[31:0] > src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] > src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_MAX(a, 16)
        	

_mm512_reduce_max_epi64
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __int64 _mm512_reduce_max_epi64(__m512i a);

.. admonition:: Intel Description

    Reduce the packed signed 64-bit integers in "a" by maximum. Returns the maximum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[63:0] > src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] > src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_MAX(a, 8)
        	

_mm512_reduce_max_epu32
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: unsigned int
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    unsigned int _mm512_reduce_max_epu32(__m512i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 32-bit integers in "a" by maximum. Returns the maximum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[31:0] > src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] > src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_MAX(a, 16)
        	

_mm512_reduce_max_epu64
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: unsigned __int64
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    unsigned __int64 _mm512_reduce_max_epu64(__m512i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 64-bit integers in "a" by maximum. Returns the maximum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[63:0] > src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] > src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_MAX(a, 8)
        	

_mm512_reduce_max_pd
--------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    double _mm512_reduce_max_pd(__m512d a);

.. admonition:: Intel Description

    Reduce the packed double-precision (64-bit) floating-point elements in "a" by maximum. Returns the maximum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[63:0] > src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] > src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_MAX(a, 8)
        	

_mm512_reduce_max_ps
--------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    float _mm512_reduce_max_ps(__m512 a);

.. admonition:: Intel Description

    Reduce the packed single-precision (32-bit) floating-point elements in "a" by maximum. Returns the maximum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MAX(src, len) {
        	IF len == 2
        		RETURN (src[31:0] > src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] > src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MAX(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_MAX(a, 16)
        	

_mm512_reduce_min_epi32
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __m512i a
:Param ETypes:
    SI32 a

.. code-block:: C

    int _mm512_reduce_min_epi32(__m512i a);

.. admonition:: Intel Description

    Reduce the packed signed 32-bit integers in "a" by minimum. Returns the minimum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[31:0] < src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] < src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_MIN(a, 16)
        	

_mm512_reduce_min_epi64
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __m512i a
:Param ETypes:
    SI64 a

.. code-block:: C

    __int64 _mm512_reduce_min_epi64(__m512i a);

.. admonition:: Intel Description

    Reduce the packed signed 64-bit integers in "a" by minimum. Returns the minimum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[63:0] < src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] < src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_MIN(a, 8)
        	

_mm512_reduce_min_epu32
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: unsigned int
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    unsigned int _mm512_reduce_min_epu32(__m512i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 32-bit integers in "a" by minimum. Returns the minimum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[31:0] < src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] < src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_MIN(a, 16)
        	

_mm512_reduce_min_epu64
-----------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: unsigned __int64
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    unsigned __int64 _mm512_reduce_min_epu64(__m512i a);

.. admonition:: Intel Description

    Reduce the packed unsigned 64-bit integers in "a" by minimum. Returns the minimum of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[63:0] < src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] < src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_MIN(a, 8)
        	

_mm512_reduce_min_pd
--------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: double
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    double _mm512_reduce_min_pd(__m512d a);

.. admonition:: Intel Description

    Reduce the packed double-precision (64-bit) floating-point elements in "a" by minimum. Returns the minimum of all elements in "a". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[63:0] < src[127:64] ? src[63:0] : src[127:64])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := (src[i+63:i] < src[i+64*len+63:i+64*len] ? src[i+63:i] : src[i+64*len+63:i+64*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_MIN(a, 8)
        	

_mm512_reduce_min_ps
--------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: float
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    float _mm512_reduce_min_ps(__m512 a);

.. admonition:: Intel Description

    Reduce the packed single-precision (32-bit) floating-point elements in "a" by minimum. Returns the minimum of all elements in "a". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_MIN(src, len) {
        	IF len == 2
        		RETURN (src[31:0] < src[63:32] ? src[31:0] : src[63:32])
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := (src[i+31:i] < src[i+32*len+31:i+32*len] ? src[i+31:i] : src[i+32*len+31:i+32*len])
        	ENDFOR
        	RETURN REDUCE_MIN(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_MIN(a, 16)
        	

_mm512_max_ph
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_max_ph(__m512h a, __m512h b);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_ph
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512h _mm512_mask_max_ph(__m512h src, __mmask32 k,
                               __m512h a, __m512h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_ph
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512h _mm512_maskz_max_ph(__mmask32 k, __m512h a,
                                __m512h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_max_round_ph
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    int sae
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m512h _mm512_max_round_ph(__m512h a, __m512h b, int sae);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst". [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_max_round_ph
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m512h _mm512_mask_max_round_ph(__m512h src, __mmask32 k,
                                     __m512h a, __m512h b,
                                     int sae)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_max_round_ph
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m512h _mm512_maskz_max_round_ph(__mmask32 k, __m512h a,
                                      __m512h b, int sae)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed maximum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note][max_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] > b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_ph
-------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b
:Param ETypes:
    FP16 a, 
    FP16 b

.. code-block:: C

    __m512h _mm512_min_ph(__m512h a, __m512h b);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_ph
------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512h _mm512_mask_min_ph(__m512h src, __mmask32 k,
                               __m512h a, __m512h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_ph
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
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

    __m512h _mm512_maskz_min_ph(__mmask32 k, __m512h a,                            __m512h b)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_min_round_ph
-------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a, 
    __m512h b, 
    int sae
:Param ETypes:
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m512h _mm512_min_round_ph(__m512h a, __m512h b, int sae);

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst". [sae_note] [min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_min_round_ph
------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int sae
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m512h _mm512_mask_min_round_ph(__m512h src, __mmask32 k,
                                     __m512h a, __m512h b,
                                     int sae)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set). [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := src.fp16[j]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_min_round_ph
-------------------------
:Tech: AVX-512
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: AVX-512-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __mmask32 k, 
    __m512h a, 
    __m512h b, 
    int sae
:Param ETypes:
    MASK k, 
    FP16 a, 
    FP16 b, 
    IMM sae

.. code-block:: C

    __m512h _mm512_maskz_min_round_ph(__mmask32 k, __m512h a,
                                      __m512h b, int sae)

.. admonition:: Intel Description

    Compare packed half-precision (16-bit) floating-point elements in "a" and "b", and store packed minimum values in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set). [sae_note][min_float_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	IF k[j]
        		dst.fp16[j] := (a.fp16[j] < b.fp16[j] ? a.fp16[j] : b.fp16[j])
        	ELSE
        		dst.fp16[j] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

