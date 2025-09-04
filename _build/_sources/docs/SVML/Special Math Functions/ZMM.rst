SVML-Special Math Functions-ZMM
===============================

_mm512_ceil_pd
--------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_ceil_pd(__m512d a);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" up to an integer value, and store the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := CEIL(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_ceil_pd
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_ceil_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" up to an integer value, and store the results as packed double-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := CEIL(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_ceil_ps
--------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_ceil_ps(__m512 a);

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" up to an integer value, and store the results as packed single-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := CEIL(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_ceil_ps
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_ceil_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" up to an integer value, and store the results as packed single-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := CEIL(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_floor_pd
---------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_floor_pd(__m512d a);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" down to an integer value, and store the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := FLOOR(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_floor_pd
--------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_floor_pd(__m512d src, __mmask8 k,
                                 __m512d a)

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" down to an integer value, and store the results as packed double-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := FLOOR(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_floor_ps
---------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_floor_ps(__m512 a);

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" down to an integer value, and store the results as packed single-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := FLOOR(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_floor_ps
--------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_floor_ps(__m512 src, __mmask16 k,
                                __m512 a)

.. admonition:: Intel Description

    Round the packed single-precision (32-bit) floating-point elements in "a" down to an integer value, and store the results as packed single-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := FLOOR(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_nearbyint_pd
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_nearbyint_pd(__m512d a);

.. admonition:: Intel Description

    Rounds each packed double-precision (64-bit) floating-point element in "a" to the nearest integer value and stores the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := NearbyInt(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_nearbyint_pd
------------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_nearbyint_pd(__m512d src, __mmask8 k,
                                     __m512d a)

.. admonition:: Intel Description

    Rounds each packed double-precision (64-bit) floating-point element in "a" to the nearest integer value and stores the results as packed double-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := NearbyInt(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_nearbyint_ps
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_nearbyint_ps(__m512 a);

.. admonition:: Intel Description

    Rounds each packed single-precision (32-bit) floating-point element in "a" to the nearest integer value and stores the results as packed single-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := NearbyInt(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_nearbyint_ps
------------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_nearbyint_ps(__m512 src, __mmask16 k,
                                    __m512 a)

.. admonition:: Intel Description

    Rounds each packed single-precision (32-bit) floating-point element in "a" to the nearest integer value and stores the results as packed single-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := NearbyInt(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rint_pd
--------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_rint_pd(__m512d a);

.. admonition:: Intel Description

    Rounds the packed double-precision (64-bit) floating-point elements in "a" to the nearest even integer value and stores the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := RoundToNearestEven(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rint_pd
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_rint_pd(__m512d src, __mmask8 k,
                                __m512d a)

.. admonition:: Intel Description

    Rounds the packed double-precision (64-bit) floating-point elements in "a" to the nearest even integer value and stores the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := RoundToNearestEven(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_rint_ps
--------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_rint_ps(__m512 a);

.. admonition:: Intel Description

    Rounds the packed single-precision (32-bit) floating-point elements in "a" to the nearest even integer value and stores the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := RoundToNearestEven(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_rint_ps
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_rint_ps(__m512 src, __mmask16 k,
                               __m512 a)

.. admonition:: Intel Description

    Rounds the packed single-precision (32-bit) floating-point elements in "a" to the nearest even integer value and stores the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := RoundToNearestEven(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_svml_round_pd
--------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_svml_round_pd(__m512d a);

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" to the nearest integer value, and store the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := ROUND(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_svml_round_pd
-------------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_svml_round_pd(__m512d src, __mmask8 k,
                                      __m512d a)

.. admonition:: Intel Description

    Round the packed double-precision (64-bit) floating-point elements in "a" to the nearest integer value, and store the results as packed double-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).
    	[round_note]

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := ROUND(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i] 
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_trunc_pd
---------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m512d _mm512_trunc_pd(__m512d a);

.. admonition:: Intel Description

    Truncate the packed double-precision (64-bit) floating-point elements in "a", and store the results as packed double-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	dst[i+63:i] := TRUNCATE(a[i+63:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_trunc_pd
--------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512d
:Param Types:
    __m512d src, 
    __mmask8 k, 
    __m512d a
:Param ETypes:
    FP64 src, 
    MASK k, 
    FP64 a

.. code-block:: C

    __m512d _mm512_mask_trunc_pd(__m512d src, __mmask8 k,
                                 __m512d a)

.. admonition:: Intel Description

    Truncate the packed double-precision (64-bit) floating-point elements in "a", and store the results as packed double-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 7
        	i := j*64
        	IF k[j]
        		dst[i+63:i] := TRUNCATE(a[i+63:i])
        	ELSE
        		dst[i+63:i] := src[i+63:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_trunc_ps
---------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m512 _mm512_trunc_ps(__m512 a);

.. admonition:: Intel Description

    Truncate the packed single-precision (32-bit) floating-point elements in "a", and store the results as packed single-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	dst[i+31:i] := TRUNCATE(a[i+31:i])
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_mask_trunc_ps
--------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512
:Param Types:
    __m512 src, 
    __mmask16 k, 
    __m512 a
:Param ETypes:
    FP32 src, 
    MASK k, 
    FP32 a

.. code-block:: C

    __m512 _mm512_mask_trunc_ps(__m512 src, __mmask16 k,
                                __m512 a)

.. admonition:: Intel Description

    Truncate the packed single-precision (32-bit) floating-point elements in "a", and store the results as packed single-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 15
        	i := j*32
        	IF k[j]
        		dst[i+31:i] := TRUNCATE(a[i+31:i])
        	ELSE
        		dst[i+31:i] := src[i+31:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        	

_mm512_ceil_ph
--------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_ceil_ph(__m512h a);

.. admonition:: Intel Description

    Round the packed half-precision (16-bit) floating-point elements in "a" up to an integer value, and store the results as packed half-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := CEIL(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_floor_ph
---------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_floor_ph(__m512h a);

.. admonition:: Intel Description

    Round the packed half-precision (16-bit) floating-point elements in "a" down to an integer value, and store the results as packed half-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := FLOOR(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_ceil_ph
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_ceil_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Round the packed half-precision (16-bit) floating-point elements in "a" up to an integer value, and store the results as packed half-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := CEIL(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_floor_ph
--------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_floor_ph(__m512h src, __mmask32 k,
                                 __m512h a)

.. admonition:: Intel Description

    Round the packed half-precision (16-bit) floating-point elements in "a" down to an integer value, and store the results as packed half-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := FLOOR(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_nearbyint_ph
------------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_nearbyint_ph(__m512h src, __mmask32 k,
                                     __m512h a)

.. admonition:: Intel Description

    Rounds each packed half-precision (16-bit) floating-point element in "a" to the nearest integer value and stores the results as packed half-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := NearbyInt(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_rint_ph
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_rint_ph(__m512h src, __mmask32 k,
                                __m512h a)

.. admonition:: Intel Description

    Rounds the packed half-precision (16-bit) floating-point elements in "a" to the nearest even integer value and stores the results in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := RoundToNearestEven(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_svml_round_ph
-------------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_svml_round_ph(__m512h src, __mmask32 k,
                                      __m512h a)

.. admonition:: Intel Description

    Round the packed half-precision (16-bit) floating-point elements in "a" to the nearest integer value, and store the results as packed half-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := ROUND(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_mask_trunc_ph
--------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h src, 
    __mmask32 k, 
    __m512h a
:Param ETypes:
    FP16 src, 
    MASK k, 
    FP16 a

.. code-block:: C

    __m512h _mm512_mask_trunc_ph(__m512h src, __mmask32 k,
                                 __m512h a)

.. admonition:: Intel Description

    Truncate the packed half-precision (16-bit) floating-point elements in "a", and store the results as packed half-precision floating-point elements in "dst" using writemask "k" (elements are copied from "src" when the corresponding mask bit is not set).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	IF k[j]
        		dst[i+15:i] := TRUNCATE(a[i+15:i])
        	ELSE
        		dst[i+15:i] := src[i+15:i]
        	FI
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_nearbyint_ph
-------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_nearbyint_ph(__m512h a);

.. admonition:: Intel Description

    Rounds each packed half-precision (16-bit) floating-point element in "a" to the nearest integer value and stores the results as packed half-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := NearbyInt(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_rint_ph
--------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_rint_ph(__m512h a);

.. admonition:: Intel Description

    Rounds the packed half-precision (16-bit) floating-point elements in "a" to the nearest even integer value and stores the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := RoundToNearestEven(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_svml_round_ph
--------------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_svml_round_ph(__m512h a);

.. admonition:: Intel Description

    Round the packed half-precision (16-bit) floating-point elements in "a" to the nearest integer value, and store the results as packed half-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := ROUND(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

_mm512_trunc_ph
---------------
:Tech: SVML
:Category: Special Math Functions
:Header: immintrin.h
:Searchable: SVML-Special Math Functions-ZMM
:Register: ZMM 512 bit
:Return Type: __m512h
:Param Types:
    __m512h a
:Param ETypes:
    FP16 a

.. code-block:: C

    __m512h _mm512_trunc_ph(__m512h a);

.. admonition:: Intel Description

    Truncate the packed half-precision (16-bit) floating-point elements in "a", and store the results as packed half-precision floating-point elements in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        FOR j := 0 to 31
        	i := j*16
        	dst[i+15:i] := TRUNCATE(a[i+15:i])
        ENDFOR
        dst[MAX:512] := 0
        

