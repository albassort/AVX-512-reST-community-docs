SSE_ALL-Logical-XMM
===================

_mm_and_ps
----------
:Tech: SSE_ALL
:Category: Logical
:Header: xmmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_and_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] AND b[i+31:i])
        ENDFOR
        	

_mm_andnot_ps
-------------
:Tech: SSE_ALL
:Category: Logical
:Header: xmmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_andnot_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the bitwise NOT of packed single-precision (32-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        ENDFOR
        	

_mm_or_ps
---------
:Tech: SSE_ALL
:Category: Logical
:Header: xmmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_or_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        ENDFOR
        	

_mm_xor_ps
----------
:Tech: SSE_ALL
:Category: Logical
:Header: xmmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128
:Param Types:
    __m128 a, 
    __m128 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m128 _mm_xor_ps(__m128 a, __m128 b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        ENDFOR
        	

_mm_and_si128
-------------
:Tech: SSE_ALL
:Category: Logical
:Header: emmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    M128 a, 
    M128 b

.. code-block:: C

    __m128i _mm_and_si128(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 128 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := (a[127:0] AND b[127:0])
        	

_mm_andnot_si128
----------------
:Tech: SSE_ALL
:Category: Logical
:Header: emmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    M128 a, 
    M128 b

.. code-block:: C

    __m128i _mm_andnot_si128(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compute the bitwise NOT of 128 bits (representing integer data) in "a" and then AND with "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := ((NOT a[127:0]) AND b[127:0])
        	

_mm_or_si128
------------
:Tech: SSE_ALL
:Category: Logical
:Header: emmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    M128 a, 
    M128 b

.. code-block:: C

    __m128i _mm_or_si128(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compute the bitwise OR of 128 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := (a[127:0] OR b[127:0])
        	

_mm_xor_si128
-------------
:Tech: SSE_ALL
:Category: Logical
:Header: emmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    M128 a, 
    M128 b

.. code-block:: C

    __m128i _mm_xor_si128(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compute the bitwise XOR of 128 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := (a[127:0] XOR b[127:0])
        	

_mm_and_pd
----------
:Tech: SSE_ALL
:Category: Logical
:Header: emmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_and_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] AND b[i+63:i])
        ENDFOR
        	

_mm_andnot_pd
-------------
:Tech: SSE_ALL
:Category: Logical
:Header: emmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_andnot_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the bitwise NOT of packed double-precision (64-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        ENDFOR
        	

_mm_or_pd
---------
:Tech: SSE_ALL
:Category: Logical
:Header: emmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_or_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        ENDFOR
        	

_mm_xor_pd
----------
:Tech: SSE_ALL
:Category: Logical
:Header: emmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: __m128d
:Param Types:
    __m128d a, 
    __m128d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m128d _mm_xor_pd(__m128d a, __m128d b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        ENDFOR
        	

_mm_testz_si128
---------------
:Tech: SSE_ALL
:Category: Logical
:Header: smmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    M128 a, 
    M128 b

.. code-block:: C

    int _mm_testz_si128(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 128 bits (representing integer data) in "a" and "b", and set "ZF" to 1 if the result is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", and set "CF" to 1 if the result is zero, otherwise set "CF" to 0. Return the "ZF" value.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF ((a[127:0] AND b[127:0]) == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        IF (((NOT a[127:0]) AND b[127:0]) == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        RETURN ZF
        	

_mm_testc_si128
---------------
:Tech: SSE_ALL
:Category: Logical
:Header: smmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    M128 a, 
    M128 b

.. code-block:: C

    int _mm_testc_si128(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 128 bits (representing integer data) in "a" and "b", and set "ZF" to 1 if the result is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", and set "CF" to 1 if the result is zero, otherwise set "CF" to 0. Return the "CF" value.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF ((a[127:0] AND b[127:0]) == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        IF (((NOT a[127:0]) AND b[127:0]) == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        RETURN CF
        	

_mm_testnzc_si128
-----------------
:Tech: SSE_ALL
:Category: Logical
:Header: smmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    M128 a, 
    M128 b

.. code-block:: C

    int _mm_testnzc_si128(__m128i a, __m128i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 128 bits (representing integer data) in "a" and "b", and set "ZF" to 1 if the result is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", and set "CF" to 1 if the result is zero, otherwise set "CF" to 0. Return 1 if both the "ZF" and "CF" values are zero, otherwise return 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF ((a[127:0] AND b[127:0]) == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        IF (((NOT a[127:0]) AND b[127:0]) == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        IF (ZF == 0 && CF == 0)
        	dst := 1
        ELSE
        	dst := 0
        FI
        	

_mm_test_all_zeros
------------------
:Tech: SSE_ALL
:Category: Logical
:Header: smmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i mask, 
    __m128i a
:Param ETypes:
    M128 mask, 
    M128 a

.. code-block:: C

    int _mm_test_all_zeros(__m128i mask, __m128i a);

.. admonition:: Intel Description

    Compute the bitwise AND of 128 bits (representing integer data) in "a" and "mask", and return 1 if the result is zero, otherwise return 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF ((a[127:0] AND mask[127:0]) == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        dst := ZF
        	

_mm_test_mix_ones_zeros
-----------------------
:Tech: SSE_ALL
:Category: Logical
:Header: smmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i mask, 
    __m128i a
:Param ETypes:
    M128 mask, 
    M128 a

.. code-block:: C

    int _mm_test_mix_ones_zeros(__m128i mask, __m128i a);

.. admonition:: Intel Description

    Compute the bitwise AND of 128 bits (representing integer data) in "a" and "mask", and set "ZF" to 1 if the result is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "mask", and set "CF" to 1 if the result is zero, otherwise set "CF" to 0. Return 1 if both the "ZF" and "CF" values are zero, otherwise return 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF ((a[127:0] AND mask[127:0]) == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        IF (((NOT a[127:0]) AND mask[127:0]) == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        IF (ZF == 0 && CF == 0)
        	dst := 1
        ELSE
        	dst := 0
        FI
        	

_mm_test_all_ones
-----------------
:Tech: SSE_ALL
:Category: Logical
:Header: smmintrin.h
:Searchable: SSE_ALL-Logical-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    __m128i a
:Param ETypes:
    M128 a

.. code-block:: C

    int _mm_test_all_ones(__m128i a);

.. admonition:: Intel Description

    Compute the bitwise NOT of "a" and then AND with a 128-bit vector containing all 1's, and return 1 if the result is zero, otherwise return 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 127
        	tmp[j] := 1
        ENDFOR
        IF (((NOT a[127:0]) AND tmp[127:0]) == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        dst := CF
        	

