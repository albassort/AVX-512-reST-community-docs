AVX-512-Logical-YMM
===================

_mm256_mask_andnot_pd
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_andnot_pd(__m256d src, __mmask8 k,
                                  __m256d a, __m256d b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed double-precision (64-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_andnot_pd
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_maskz_andnot_pd(__mmask8 k, __m256d a,
                                   __m256d b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed double-precision (64-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_andnot_ps
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_andnot_ps(__m256 src, __mmask8 k,
                                 __m256 a, __m256 b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed single-precision (32-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_andnot_ps
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_maskz_andnot_ps(__mmask8 k, __m256 a,
                                  __m256 b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed single-precision (32-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_and_pd
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_and_pd(__m256d src, __mmask8 k,
                               __m256d a, __m256d b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_and_pd
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_maskz_and_pd(__mmask8 k, __m256d a,
                                __m256d b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0 
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_and_ps
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_and_ps(__m256 src, __mmask8 k, __m256 a,
                              __m256 b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_and_ps
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_maskz_and_ps(__mmask8 k, __m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_or_pd
-----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_or_pd(__m256d src, __mmask8 k,
                              __m256d a, __m256d b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_or_pd
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_maskz_or_pd(__mmask8 k, __m256d a,
                               __m256d b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_or_ps
-----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_or_ps(__m256 src, __mmask8 k, __m256 a,
                             __m256 b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_or_ps
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_maskz_or_ps(__mmask8 k, __m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_xor_pd
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d src, 
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_mask_xor_pd(__m256d src, __mmask8 k,
                               __m256d a, __m256d b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_xor_pd
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __mmask8 k, 
    __m256d a, 
    __m256d b
:Param ETypes:
    MASK k, 
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_maskz_xor_pd(__mmask8 k, __m256d a,
                                __m256d b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_xor_ps
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 src, 
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_mask_xor_ps(__m256 src, __mmask8 k, __m256 a,
                              __m256 b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_xor_ps
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __mmask8 k, 
    __m256 a, 
    __m256 b
:Param ETypes:
    MASK k, 
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_maskz_xor_ps(__mmask8 k, __m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_and_epi32
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask_and_epi32(__m256i src, __mmask8 k,
                                  __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 32-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] AND b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_and_epi32
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_maskz_and_epi32(__mmask8 k, __m256i a,
                                   __m256i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 32-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] AND b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_andnot_epi32
------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask_andnot_epi32(__m256i src, __mmask8 k,
                                     __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 32-bit integers in "a" and then AND with "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_andnot_epi32
-------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_maskz_andnot_epi32(__mmask8 k, __m256i a,
                                      __m256i b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 32-bit integers in "a" and then AND with "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (NOT a[i+31:i]) AND b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_andnot_epi64
------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask_andnot_epi64(__m256i src, __mmask8 k,
                                     __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 64-bit integers in "a" and then AND with "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_andnot_epi64
-------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_maskz_andnot_epi64(__mmask8 k, __m256i a,
                                      __m256i b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 64-bit integers in "a" and then AND with "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (NOT a[i+63:i]) AND b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_and_epi64
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask_and_epi64(__m256i src, __mmask8 k,
                                  __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 64-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] AND b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_and_epi64
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_maskz_and_epi64(__mmask8 k, __m256i a,
                                   __m256i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 64-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] AND b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_or_epi32
--------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask_or_epi32(__m256i src, __mmask8 k,
                                 __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed 32-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_or_epi32
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_maskz_or_epi32(__mmask8 k, __m256i a,
                                  __m256i b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed 32-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_or_epi64
--------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask_or_epi64(__m256i src, __mmask8 k,
                                 __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed 64-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_or_epi64
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_maskz_or_epi64(__mmask8 k, __m256i a,
                                  __m256i b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed 64-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_ternarylogic_epi32
------------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __mmask8 k, 
    __m256i b, 
    __m256i c, 
    int imm8
:Param ETypes:
    UI32 a, 
    MASK k, 
    UI32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_ternarylogic_epi32(__m256i a,
                                           __mmask8 k,
                                           __m256i b, __m256i c,
                                           int imm8)

.. admonition:: Intel Description

    Bitwise ternary logic that provides the capability to implement any three-operand binary function; the specific binary function is specified by value in "imm8". For each bit in each packed 32-bit integer, the corresponding bit from "a", "b", and "c" are used according to "imm8", and the result is written to the corresponding bit in "dst" using writemask "k" at 32-bit granularity (32-bit elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE TernaryOP(imm8, a, b, c) {
        	CASE imm8[7:0] OF
        	0: dst[0] := 0                   // imm8[7:0] := 0
        	1: dst[0] := NOT (a OR b OR c)   // imm8[7:0] := NOT (_MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C)
        	// ...
        	254: dst[0] := a OR b OR c       // imm8[7:0] := _MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C
        	255: dst[0] := 1                 // imm8[7:0] := 1
        	ESAC
        }
        imm8[7:0] = LogicExp(_MM_TERNLOG_A, _MM_TERNLOG_B, _MM_TERNLOG_C)
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		FOR h := 0 to 31
        			dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        		ENDFOR
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_ternarylogic_epi32
-------------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    __m256i c, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_ternarylogic_epi32(
        __mmask8 k, __m256i a, __m256i b, __m256i c, int imm8)

.. admonition:: Intel Description

    Bitwise ternary logic that provides the capability to implement any three-operand binary function; the specific binary function is specified by value in "imm8". For each bit in each packed 32-bit integer, the corresponding bit from "a", "b", and "c" are used according to "imm8", and the result is written to the corresponding bit in "dst" using zeromask "k" at 32-bit granularity (32-bit elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE TernaryOP(imm8, a, b, c) {
        	CASE imm8[7:0] OF
        	0: dst[0] := 0                   // imm8[7:0] := 0
        	1: dst[0] := NOT (a OR b OR c)   // imm8[7:0] := NOT (_MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C)
        	// ...
        	254: dst[0] := a OR b OR c       // imm8[7:0] := _MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C
        	255: dst[0] := 1                 // imm8[7:0] := 1
        	ESAC
        }
        imm8[7:0] = LogicExp(_MM_TERNLOG_A, _MM_TERNLOG_B, _MM_TERNLOG_C)
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		FOR h := 0 to 31
        			dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        		ENDFOR
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_ternarylogic_epi32
-------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    __m256i c, 
    int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_ternarylogic_epi32(__m256i a, __m256i b,
                                      __m256i c, int imm8)

.. admonition:: Intel Description

    Bitwise ternary logic that provides the capability to implement any three-operand binary function; the specific binary function is specified by value in "imm8". For each bit in each packed 32-bit integer, the corresponding bit from "a", "b", and "c" are used according to "imm8", and the result is written to the corresponding bit in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE TernaryOP(imm8, a, b, c) {
        	CASE imm8[7:0] OF
        	0: dst[0] := 0                   // imm8[7:0] := 0
        	1: dst[0] := NOT (a OR b OR c)   // imm8[7:0] := NOT (_MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C)
        	// ...
        	254: dst[0] := a OR b OR c       // imm8[7:0] := _MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C
        	255: dst[0] := 1                 // imm8[7:0] := 1
        	ESAC
        }
        imm8[7:0] = LogicExp(_MM_TERNLOG_A, _MM_TERNLOG_B, _MM_TERNLOG_C)
        FOR j := 0 to 7
        	i := j*32
        	FOR h := 0 to 31
        		dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        	ENDFOR
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_ternarylogic_epi64
------------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __mmask8 k, 
    __m256i b, 
    __m256i c, 
    int imm8
:Param ETypes:
    UI64 a, 
    MASK k, 
    UI64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_mask_ternarylogic_epi64(__m256i a,
                                           __mmask8 k,
                                           __m256i b, __m256i c,
                                           int imm8)

.. admonition:: Intel Description

    Bitwise ternary logic that provides the capability to implement any three-operand binary function; the specific binary function is specified by value in "imm8". For each bit in each packed 64-bit integer, the corresponding bit from "a", "b", and "c" are used according to "imm8", and the result is written to the corresponding bit in "dst" using writemask "k" at 64-bit granularity (64-bit elements are copied from "a" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE TernaryOP(imm8, a, b, c) {
        	CASE imm8[7:0] OF
        	0: dst[0] := 0                   // imm8[7:0] := 0
        	1: dst[0] := NOT (a OR b OR c)   // imm8[7:0] := NOT (_MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C)
        	// ...
        	254: dst[0] := a OR b OR c       // imm8[7:0] := _MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C
        	255: dst[0] := 1                 // imm8[7:0] := 1
        	ESAC
        }
        imm8[7:0] = LogicExp(_MM_TERNLOG_A, _MM_TERNLOG_B, _MM_TERNLOG_C)
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		FOR h := 0 to 63
        			dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        		ENDFOR
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_ternarylogic_epi64
-------------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b, 
    __m256i c, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_maskz_ternarylogic_epi64(
        __mmask8 k, __m256i a, __m256i b, __m256i c, int imm8)

.. admonition:: Intel Description

    Bitwise ternary logic that provides the capability to implement any three-operand binary function; the specific binary function is specified by value in "imm8". For each bit in each packed 64-bit integer, the corresponding bit from "a", "b", and "c" are used according to "imm8", and the result is written to the corresponding bit in "dst" using zeromask "k" at 64-bit granularity (64-bit elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE TernaryOP(imm8, a, b, c) {
        	CASE imm8[7:0] OF
        	0: dst[0] := 0                   // imm8[7:0] := 0
        	1: dst[0] := NOT (a OR b OR c)   // imm8[7:0] := NOT (_MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C)
        	// ...
        	254: dst[0] := a OR b OR c       // imm8[7:0] := _MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C
        	255: dst[0] := 1                 // imm8[7:0] := 1
        	ESAC
        }
        imm8[7:0] = LogicExp(_MM_TERNLOG_A, _MM_TERNLOG_B, _MM_TERNLOG_C)
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		FOR h := 0 to 63
        			dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        		ENDFOR
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_ternarylogic_epi64
-------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b, 
    __m256i c, 
    int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m256i _mm256_ternarylogic_epi64(__m256i a, __m256i b,
                                      __m256i c, int imm8)

.. admonition:: Intel Description

    Bitwise ternary logic that provides the capability to implement any three-operand binary function; the specific binary function is specified by value in "imm8". For each bit in each packed 64-bit integer, the corresponding bit from "a", "b", and "c" are used according to "imm8", and the result is written to the corresponding bit in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE TernaryOP(imm8, a, b, c) {
        	CASE imm8[7:0] OF
        	0: dst[0] := 0                   // imm8[7:0] := 0
        	1: dst[0] := NOT (a OR b OR c)   // imm8[7:0] := NOT (_MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C)
        	// ...
        	254: dst[0] := a OR b OR c       // imm8[7:0] := _MM_TERNLOG_A OR _MM_TERNLOG_B OR _MM_TERNLOG_C
        	255: dst[0] := 1                 // imm8[7:0] := 1
        	ESAC
        }
        imm8[7:0] = LogicExp(_MM_TERNLOG_A, _MM_TERNLOG_B, _MM_TERNLOG_C)
        FOR j := 0 to 3
        	i := j*64
        	FOR h := 0 to 63
        		dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        	ENDFOR
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_xor_epi32
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_mask_xor_epi32(__m256i src, __mmask8 k,
                                  __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 32-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_xor_epi32
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_maskz_xor_epi32(__mmask8 k, __m256i a,
                                   __m256i b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 32-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_xor_epi64
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_mask_xor_epi64(__m256i src, __mmask8 k,
                                  __m256i a, __m256i b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 64-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_xor_epi64
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __m256i a, 
    __m256i b
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_maskz_xor_epi64(__mmask8 k, __m256i a,
                                   __m256i b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 64-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_xor_epi64
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_xor_epi64(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 64-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_xor_epi32
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_xor_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_or_epi64
---------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m256i _mm256_or_epi64(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed 64-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_or_epi32
---------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m256i _mm256_or_epi32(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

