AVX-512-Set-YMM
===============

_mm256_mask_set1_epi8
---------------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask32 k, 
    char a
:Param ETypes:
    UI8 src, 
    MASK k, 
    UI8 a

.. code-block:: C

    __m256i _mm256_mask_set1_epi8(__m256i src, __mmask32 k,
                                  char a)

.. admonition:: Intel Description

    Broadcast 8-bit integer "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[7:0]
        	ELSE
        		dst[i+7:i] := src[i+7:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_set1_epi8
----------------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask32 k, 
    char a
:Param ETypes:
    MASK k, 
    UI8 a

.. code-block:: C

    __m256i _mm256_maskz_set1_epi8(__mmask32 k, char a);

.. admonition:: Intel Description

    Broadcast 8-bit integer "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	IF k[j]
        		dst[i+7:i] := a[7:0]
        	ELSE
        		dst[i+7:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_set1_epi16
----------------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask16 k, 
    short a
:Param ETypes:
    UI16 src, 
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm256_mask_set1_epi16(__m256i src, __mmask16 k,
                                   short a)

.. admonition:: Intel Description

    Broadcast the low packed 16-bit integer from "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[15:0]
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_set1_epi16
-----------------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask16 k, 
    short a
:Param ETypes:
    MASK k, 
    UI16 a

.. code-block:: C

    __m256i _mm256_maskz_set1_epi16(__mmask16 k, short a);

.. admonition:: Intel Description

    Broadcast 16-bit integer "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := a[15:0]
        	ELSE
        		dst[i+15:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_set1_epi32
----------------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    int a
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_mask_set1_epi32(__m256i src, __mmask8 k,
                                   int a)

.. admonition:: Intel Description

    Broadcast 32-bit integer "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_set1_epi32
-----------------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    int a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    __m256i _mm256_maskz_set1_epi32(__mmask8 k, int a);

.. admonition:: Intel Description

    Broadcast 32-bit integer "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[31:0]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_mask_set1_epi64
----------------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i src, 
    __mmask8 k, 
    __int64 a
:Param ETypes:
    UI64 src, 
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_mask_set1_epi64(__m256i src, __mmask8 k,
                                   __int64 a)

.. admonition:: Intel Description

    Broadcast 64-bit integer "a" to all elements of "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_maskz_set1_epi64
-----------------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __mmask8 k, 
    __int64 a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __m256i _mm256_maskz_set1_epi64(__mmask8 k, __int64 a);

.. admonition:: Intel Description

    Broadcast 64-bit integer "a" to all elements of "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[63:0]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_setzero_ph
-----------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256h

.. code-block:: C

    __m256h _mm256_setzero_ph(void );

.. admonition:: Intel Description

    Return vector of type __m256h with all elements set to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[MAX:0] := 0
        	

_mm256_set_ph
-------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    _Float16 e15, 
    _Float16 e14, 
    _Float16 e13, 
    _Float16 e12, 
    _Float16 e11, 
    _Float16 e10, 
    _Float16 e9, 
    _Float16 e8, 
    _Float16 e7, 
    _Float16 e6, 
    _Float16 e5, 
    _Float16 e4, 
    _Float16 e3, 
    _Float16 e2, 
    _Float16 e1, 
    _Float16 e0
:Param ETypes:
    FP16 e15, 
    FP16 e14, 
    FP16 e13, 
    FP16 e12, 
    FP16 e11, 
    FP16 e10, 
    FP16 e9, 
    FP16 e8, 
    FP16 e7, 
    FP16 e6, 
    FP16 e5, 
    FP16 e4, 
    FP16 e3, 
    FP16 e2, 
    FP16 e1, 
    FP16 e0

.. code-block:: C

    __m256h _mm256_set_ph(_Float16 e15, _Float16 e14,
                          _Float16 e13, _Float16 e12,
                          _Float16 e11, _Float16 e10,
                          _Float16 e9, _Float16 e8, _Float16 e7,
                          _Float16 e6, _Float16 e5, _Float16 e4,
                          _Float16 e3, _Float16 e2, _Float16 e1,
                          _Float16 e0)

.. admonition:: Intel Description

    Set packed half-precision (16-bit) floating-point elements in "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := e0
        dst.fp16[1] := e1
        dst.fp16[2] := e2
        dst.fp16[3] := e3
        dst.fp16[4] := e4
        dst.fp16[5] := e5
        dst.fp16[6] := e6
        dst.fp16[7] := e7
        dst.fp16[8] := e8
        dst.fp16[9] := e9
        dst.fp16[10] := e10
        dst.fp16[11] := e11
        dst.fp16[12] := e12
        dst.fp16[13] := e13
        dst.fp16[14] := e14
        dst.fp16[15] := e15
        	

_mm256_setr_ph
--------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    _Float16 e15, 
    _Float16 e14, 
    _Float16 e13, 
    _Float16 e12, 
    _Float16 e11, 
    _Float16 e10, 
    _Float16 e9, 
    _Float16 e8, 
    _Float16 e7, 
    _Float16 e6, 
    _Float16 e5, 
    _Float16 e4, 
    _Float16 e3, 
    _Float16 e2, 
    _Float16 e1, 
    _Float16 e0
:Param ETypes:
    FP16 e15, 
    FP16 e14, 
    FP16 e13, 
    FP16 e12, 
    FP16 e11, 
    FP16 e10, 
    FP16 e9, 
    FP16 e8, 
    FP16 e7, 
    FP16 e6, 
    FP16 e5, 
    FP16 e4, 
    FP16 e3, 
    FP16 e2, 
    FP16 e1, 
    FP16 e0

.. code-block:: C

    __m256h _mm256_setr_ph(
        _Float16 e15, _Float16 e14, _Float16 e13, _Float16 e12,
        _Float16 e11, _Float16 e10, _Float16 e9, _Float16 e8,
        _Float16 e7, _Float16 e6, _Float16 e5, _Float16 e4,
        _Float16 e3, _Float16 e2, _Float16 e1, _Float16 e0)

.. admonition:: Intel Description

    Set packed half-precision (16-bit) floating-point elements in "dst" with the supplied values in reverse order.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst.fp16[0] := e15
        dst.fp16[1] := e14
        dst.fp16[2] := e13
        dst.fp16[3] := e12
        dst.fp16[4] := e11
        dst.fp16[5] := e10
        dst.fp16[6] := e9
        dst.fp16[7] := e8
        dst.fp16[8] := e7
        dst.fp16[9] := e6
        dst.fp16[10] := e5
        dst.fp16[11] := e4
        dst.fp16[12] := e3
        dst.fp16[13] := e2
        dst.fp16[14] := e1
        dst.fp16[15] := e0
        	

_mm256_set1_ph
--------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    _Float16 a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_set1_ph(_Float16 a);

.. admonition:: Intel Description

    Broadcast half-precision (16-bit) floating-point value "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 15
        	dst.fp16[i] := a[15:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_set1_pch
---------------
:Tech: AVX-512
:Category: Set
:Header: immintrin.h
:Searchable: AVX-512-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256h
:Param Types:
    _Float16 _Complex a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m256h _mm256_set1_pch(_Float16 _Complex a);

.. admonition:: Intel Description

    Broadcast half-precision (16-bit) complex floating-point value "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR i := 0 to 7
        	dst.fp16[2*i+0] := a[15:0]
        	dst.fp16[2*i+1] := a[31:16]
        ENDFOR
        dst[MAX:256] := 0
        	

