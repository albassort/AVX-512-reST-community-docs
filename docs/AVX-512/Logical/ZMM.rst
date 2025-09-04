AVX-512-Logical-ZMM
===================

_mm512_andnot_pd
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_andnot_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Compute the bitwise NOT of packed double-precision (64-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_andnot_pd
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512d _mm512_mask_andnot_pd(__m512d src, __mmask8 k,
                                  __m512d a, __m512d b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed double-precision (64-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_andnot_pd
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512d _mm512_maskz_andnot_pd(__mmask8 k, __m512d a,
                                   __m512d b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed double-precision (64-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_andnot_ps
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_andnot_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Compute the bitwise NOT of packed single-precision (32-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_andnot_ps
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512 _mm512_mask_andnot_ps(__m512 src, __mmask16 k,
                                 __m512 a, __m512 b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed single-precision (32-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_andnot_ps
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512 _mm512_maskz_andnot_ps(__mmask16 k, __m512 a,
                                  __m512 b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed single-precision (32-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_and_pd
-------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_and_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] AND b[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_and_pd
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512d _mm512_mask_and_pd(__m512d src, __mmask8 k,
                               __m512d a, __m512d b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_and_pd
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512d _mm512_maskz_and_pd(__mmask8 k, __m512d a,
                                __m512d b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (a[i+63:i] AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_and_ps
-------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_and_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] AND b[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_and_ps
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512 _mm512_mask_and_ps(__m512 src, __mmask16 k, __m512 a,
                              __m512 b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_and_ps
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512 _mm512_maskz_and_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (a[i+31:i] AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_or_pd
-----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512d _mm512_mask_or_pd(__m512d src, __mmask8 k,
                              __m512d a, __m512d b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_or_pd
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512d _mm512_maskz_or_pd(__mmask8 k, __m512d a,
                               __m512d b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_or_pd
------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_or_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_or_ps
-----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512 _mm512_mask_or_ps(__m512 src, __mmask16 k, __m512 a,
                             __m512 b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_or_ps
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512 _mm512_maskz_or_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_or_ps
------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_or_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_xor_pd
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512d _mm512_mask_xor_pd(__m512d src, __mmask8 k,
                               __m512d a, __m512d b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_xor_pd
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512d _mm512_maskz_xor_pd(__mmask8 k, __m512d a,
                                __m512d b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_xor_pd
-------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a, 
    __m512d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m512d _mm512_xor_pd(__m512d a, __m512d b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_xor_ps
------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512 _mm512_mask_xor_ps(__m512 src, __mmask16 k, __m512 a,
                              __m512 b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_xor_ps
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512 _mm512_maskz_xor_ps(__mmask16 k, __m512 a, __m512 b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_xor_ps
-------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a, 
    __m512 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m512 _mm512_xor_ps(__m512 a, __m512 b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_and_epi32
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_maskz_and_epi32(__mmask16 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 32-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] AND b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_andnot_epi32
-------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_maskz_andnot_epi32(__mmask16 k, __m512i a,
                                      __m512i b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 32-bit integers in "a" and then AND with "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := (NOT a[i+31:i]) AND b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_andnot_epi64
-------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_maskz_andnot_epi64(__mmask8 k, __m512i a,
                                      __m512i b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 64-bit integers in "a" and then AND with "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := (NOT a[i+63:i]) AND b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_and_epi64
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_maskz_and_epi64(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 64-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] AND b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_or_epi32
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_maskz_or_epi32(__mmask16 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed 32-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_or_epi64
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_maskz_or_epi64(__mmask8 k, __m512i a,
                                  __m512i b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed 64-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_ternarylogic_epi32
------------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask16 k, 
    __m512i b, 
    __m512i c, 
    int imm8
:Param ETypes:
    UI32 a, 
    MASK k, 
    UI32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_ternarylogic_epi32(__m512i a,
                                           __mmask16 k,
                                           __m512i b, __m512i c,
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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		FOR h := 0 to 31
        			dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        		ENDFOR
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_ternarylogic_epi32
-------------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask16 k, 
    __m512i a, 
    __m512i b, 
    __m512i c, 
    int imm8
:Param ETypes:
    MASK k, 
    UI32 a, 
    UI32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_ternarylogic_epi32(
        __mmask16 k, __m512i a, __m512i b, __m512i c, int imm8)

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
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		FOR h := 0 to 31
        			dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        		ENDFOR
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_ternarylogic_epi32
-------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c, 
    int imm8
:Param ETypes:
    UI32 a, 
    UI32 b, 
    UI32 c, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_ternarylogic_epi32(__m512i a, __m512i b,
                                      __m512i c, int imm8)

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
        FOR j := 0 to 15
        	i := j*32
        	FOR h := 0 to 31
        		dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        	ENDFOR
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_ternarylogic_epi64
------------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __mmask8 k, 
    __m512i b, 
    __m512i c, 
    int imm8
:Param ETypes:
    UI64 a, 
    MASK k, 
    UI64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_mask_ternarylogic_epi64(__m512i a,
                                           __mmask8 k,
                                           __m512i b, __m512i c,
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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		FOR h := 0 to 63
        			dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        		ENDFOR
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_ternarylogic_epi64
-------------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __mmask8 k, 
    __m512i a, 
    __m512i b, 
    __m512i c, 
    int imm8
:Param ETypes:
    MASK k, 
    UI64 a, 
    UI64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_maskz_ternarylogic_epi64(
        __mmask8 k, __m512i a, __m512i b, __m512i c, int imm8)

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
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		FOR h := 0 to 63
        			dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        		ENDFOR
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_ternarylogic_epi64
-------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b, 
    __m512i c, 
    int imm8
:Param ETypes:
    UI64 a, 
    UI64 b, 
    UI64 c, 
    IMM imm8

.. code-block:: C

    __m512i _mm512_ternarylogic_epi64(__m512i a, __m512i b,
                                      __m512i c, int imm8)

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
        FOR j := 0 to 7
        	i := j*64
        	FOR h := 0 to 63
        		dst[i+h] := TernaryOP(imm8[7:0], a[i+h], b[i+h], c[i+h])
        	ENDFOR
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_test_epi64_mask
---------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm512_mask_test_epi64_mask(__mmask8 k1, __m512i a,
                                         __m512i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 64-bit integers in "a" and "b", producing intermediate 64-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k1[j]
        		k[j] := ((a[i+63:i] AND b[i+63:i]) != 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm512_test_epi64_mask
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask8
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm512_test_epi64_mask(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed 64-bit integers in "a" and "b", producing intermediate 64-bit values, and set the corresponding bit in result mask "k" if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	k[j] := ((a[i+63:i] AND b[i+63:i]) != 0) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm512_mask_testn_epi32_mask
----------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask16 _mm512_mask_testn_epi32_mask(__mmask16 k1,
                                           __m512i a,
                                           __m512i b)

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 32-bit integers in "a" and "b", producing intermediate 32-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k1[j]
        		k[j] := ((a[i+31:i] AND b[i+31:i]) == 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm512_testn_epi32_mask
-----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask16
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask16 _mm512_testn_epi32_mask(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 32-bit integers in "a" and "b", producing intermediate 32-bit values, and set the corresponding bit in result mask "k" if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	k[j] := ((a[i+31:i] AND b[i+31:i]) == 0) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm512_mask_testn_epi64_mask
----------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask8
:Param Types:
    __mmask8 k1, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k1, 
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm512_mask_testn_epi64_mask(__mmask8 k1,
                                          __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 64-bit integers in "a" and "b", producing intermediate 64-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k1[j]
        		k[j] := ((a[i+63:i] AND b[i+63:i]) == 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:8] := 0
        	

_mm512_testn_epi64_mask
-----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask8
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __mmask8 _mm512_testn_epi64_mask(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise NAND of packed 64-bit integers in "a" and "b", producing intermediate 64-bit values, and set the corresponding bit in result mask "k" if the intermediate value is zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	k[j] := ((a[i+63:i] AND b[i+63:i]) == 0) ? 1 : 0
        ENDFOR
        k[MAX:8] := 0
        	

_mm512_maskz_xor_epi32
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_maskz_xor_epi32(__mmask16 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 32-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_maskz_xor_epi64
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_maskz_xor_epi64(__mmask8 k, __m512i a,
                                   __m512i b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 64-bit integers in "a" and "b", and store the results in "dst" using zeromask "k" (elements are zeroed out when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_and_epi32
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_and_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] AND b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_and_si512
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    M512 a, 
    M512 b

.. code-block:: C

    __m512i _mm512_and_si512(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 512 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := (a[511:0] AND b[511:0])
        dst[MAX:512] := 0
        	

_mm512_andnot_epi32
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_andnot_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 32-bit integers in "a" and then AND with "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := (NOT a[i+31:i]) AND b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_andnot_si512
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    M512 a, 
    M512 b

.. code-block:: C

    __m512i _mm512_andnot_si512(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise NOT of 512 bits (representing integer data) in "a" and then AND with "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := ((NOT a[511:0]) AND b[511:0])
        dst[MAX:512] := 0
        	

_mm512_mask_andnot_epi32
------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_mask_andnot_epi32(__m512i src, __mmask16 k,
                                     __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 32-bit integers in "a" and then AND with "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_andnot_epi64
-------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_andnot_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise NOT of 512 bits (composed of packed 64-bit integers) in "a" and then AND with "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := ((NOT a[511:0]) AND b[511:0])
        dst[MAX:512] := 0
        	

_mm512_mask_andnot_epi64
------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_mask_andnot_epi64(__m512i src, __mmask8 k,
                                     __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise NOT of packed 64-bit integers in "a" and then AND with "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_and_epi64
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_and_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 512 bits (composed of packed 64-bit integers) in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := (a[511:0] AND b[511:0])
        dst[MAX:512] := 0
        	

_mm512_mask_and_epi64
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_mask_and_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 64-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] AND b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_or_epi32
--------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_mask_or_epi32(__m512i src, __mmask16 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed 32-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_or_epi32
---------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_or_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_or_si512
---------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    M512 a, 
    M512 b

.. code-block:: C

    __m512i _mm512_or_si512(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise OR of 512 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := (a[511:0] OR b[511:0])
        dst[MAX:512] := 0
        	

_mm512_mask_or_epi64
--------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_mask_or_epi64(__m512i src, __mmask8 k,
                                 __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise OR of packed 64-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_or_epi64
---------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_or_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed 64-bit integers in "a" and "b", and store the resut in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_test_epi32_mask
---------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask16
:Param Types:
    __mmask16 k1, 
    __m512i a, 
    __m512i b
:Param ETypes:
    MASK k1, 
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask16 _mm512_mask_test_epi32_mask(__mmask16 k1,
                                          __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise AND of packed 32-bit integers in "a" and "b", producing intermediate 32-bit values, and set the corresponding bit in result mask "k" (subject to writemask "k") if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k1[j]
        		k[j] := ((a[i+31:i] AND b[i+31:i]) != 0) ? 1 : 0
        	ELSE
        		k[j] := 0
        	FI
        ENDFOR
        k[MAX:16] := 0
        	

_mm512_test_epi32_mask
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __mmask16
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __mmask16 _mm512_test_epi32_mask(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed 32-bit integers in "a" and "b", producing intermediate 32-bit values, and set the corresponding bit in result mask "k" if the intermediate value is non-zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	k[j] := ((a[i+31:i] AND b[i+31:i]) != 0) ? 1 : 0
        ENDFOR
        k[MAX:16] := 0
        	

_mm512_mask_xor_epi32
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_mask_xor_epi32(__m512i src, __mmask16 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 32-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_xor_epi32
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m512i _mm512_xor_epi32(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_xor_si512
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    M512 a, 
    M512 b

.. code-block:: C

    __m512i _mm512_xor_si512(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise XOR of 512 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[511:0] := (a[511:0] XOR b[511:0])
        dst[MAX:512] := 0
        	

_mm512_mask_xor_epi64
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
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

    __m512i _mm512_mask_xor_epi64(__m512i src, __mmask8 k,
                                  __m512i a, __m512i b)

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 64-bit integers in "a" and "b", and store the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_xor_epi64
----------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i a, 
    __m512i b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m512i _mm512_xor_epi64(__m512i a, __m512i b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed 64-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_reduce_and_epi32
----------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    int _mm512_mask_reduce_and_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed 32-bit integers in "a" by bitwise AND using mask "k". Returns the bitwise AND of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_AND(src, len) {
        	IF len == 2
        		RETURN src[31:0] AND src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] AND src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_AND(src[32*len-1:0], len)
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
        dst[31:0] := REDUCE_AND(tmp, 16)
        	

_mm512_mask_reduce_and_epi64
----------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __int64 _mm512_mask_reduce_and_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed 64-bit integers in "a" by bitwise AND using mask "k". Returns the bitwise AND of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_AND(src, len) {
        	IF len == 2
        		RETURN src[63:0] AND src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] AND src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_AND(src[64*len-1:0], len)
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
        dst[63:0] := REDUCE_AND(tmp, 8)
        	

_mm512_mask_reduce_or_epi32
---------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __mmask16 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI32 a

.. code-block:: C

    int _mm512_mask_reduce_or_epi32(__mmask16 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed 32-bit integers in "a" by bitwise OR using mask "k". Returns the bitwise OR of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_OR(src, len) {
        	IF len == 2
        		RETURN src[31:0] OR src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] OR src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_OR(src[32*len-1:0], len)
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
        dst[31:0] := REDUCE_OR(tmp, 16)
        	

_mm512_mask_reduce_or_epi64
---------------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __mmask8 k, 
    __m512i a
:Param ETypes:
    MASK k, 
    UI64 a

.. code-block:: C

    __int64 _mm512_mask_reduce_or_epi64(__mmask8 k, __m512i a);

.. admonition:: Intel Description

    Reduce the packed 64-bit integers in "a" by bitwise OR using mask "k". Returns the bitwise OR of all active elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_OR(src, len) {
        	IF len == 2
        		RETURN src[63:0] OR src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] OR src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_OR(src[64*len-1:0], len)
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
        dst[63:0] := REDUCE_OR(tmp, 8)
        	

_mm512_reduce_and_epi32
-----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm512_reduce_and_epi32(__m512i a);

.. admonition:: Intel Description

    Reduce the packed 32-bit integers in "a" by bitwise AND. Returns the bitwise AND of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_AND(src, len) {
        	IF len == 2
        		RETURN src[31:0] AND src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] AND src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_AND(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_AND(a, 16)
        	

_mm512_reduce_and_epi64
-----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __int64 _mm512_reduce_and_epi64(__m512i a);

.. admonition:: Intel Description

    Reduce the packed 64-bit integers in "a" by bitwise AND. Returns the bitwise AND of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_AND(src, len) {
        	IF len == 2
        		RETURN src[63:0] AND src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] AND src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_AND(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_AND(a, 8)
        	

_mm512_reduce_or_epi32
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: int
:Param Types:
    __m512i a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm512_reduce_or_epi32(__m512i a);

.. admonition:: Intel Description

    Reduce the packed 32-bit integers in "a" by bitwise OR. Returns the bitwise OR of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_OR(src, len) {
        	IF len == 2
        		RETURN src[31:0] OR src[63:32]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*32
        		src[i+31:i] := src[i+31:i] OR src[i+32*len+31:i+32*len]
        	ENDFOR
        	RETURN REDUCE_OR(src[32*len-1:0], len)
        }
        dst[31:0] := REDUCE_OR(a, 16)
        	

_mm512_reduce_or_epi64
----------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __int64
:Param Types:
    __m512i a
:Param ETypes:
    UI64 a

.. code-block:: C

    __int64 _mm512_reduce_or_epi64(__m512i a);

.. admonition:: Intel Description

    Reduce the packed 64-bit integers in "a" by bitwise OR. Returns the bitwise OR of all elements in "a".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        DEFINE REDUCE_OR(src, len) {
        	IF len == 2
        		RETURN src[63:0] OR src[127:64]
        	FI
        	len := len / 2
        	FOR j:= 0 to (len-1)
        		i := j*64
        		src[i+63:i] := src[i+63:i] OR src[i+64*len+63:i+64*len]
        	ENDFOR
        	RETURN REDUCE_OR(src[64*len-1:0], len)
        }
        dst[63:0] := REDUCE_OR(a, 8)
        	

_mm512_mask_and_epi32
---------------------
:Tech: AVX-512
:Category: Logical
:Header: immintrin.h
:Searchable: AVX-512-Logical-ZMM
:Register: ZMM 512 bit
:Return Type: __m512i
:Param Types:
    __m512i src, 
    __mmask16 k, 
    __m512i v2, 
    __m512i v3
:Param ETypes:
    UI32 src, 
    MASK k, 
    UI32 v2, 
    UI32 v3

.. code-block:: C

    __m512i _mm512_mask_and_epi32(__m512i src, __mmask16 k,
                                  __m512i v2, __m512i v3)

.. admonition:: Intel Description

    Performs element-by-element bitwise AND between packed 32-bit integer elements of "v2" and "v3", storing the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := v2[i+31:i] & v3[i+31:i]
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

