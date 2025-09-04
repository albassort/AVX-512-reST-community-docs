AVX_ALL-Logical-YMM
===================

_mm256_and_pd
-------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_and_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := (a[i+63:i] AND b[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_and_ps
-------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_and_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise AND of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := (a[i+31:i] AND b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_andnot_pd
----------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_andnot_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the bitwise NOT of packed double-precision (64-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := ((NOT a[i+63:i]) AND b[i+63:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_andnot_ps
----------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_andnot_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise NOT of packed single-precision (32-bit) floating-point elements in "a" and then AND with "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := ((NOT a[i+31:i]) AND b[i+31:i])
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_or_pd
------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_or_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] OR b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_or_ps
------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_or_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise OR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] OR b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_xor_pd
-------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    __m256d _mm256_xor_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed double-precision (64-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[i+63:i] XOR b[i+63:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_xor_ps
-------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    __m256 _mm256_xor_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise XOR of packed single-precision (32-bit) floating-point elements in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[i+31:i] XOR b[i+31:i]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_testz_si256
------------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    M256 a, 
    M256 b

.. code-block:: C

    int _mm256_testz_si256(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing integer data) in "a" and "b", and set "ZF" to 1 if the result is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", and set "CF" to 1 if the result is zero, otherwise set "CF" to 0. Return the "ZF" value.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF ((a[255:0] AND b[255:0]) == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        IF (((NOT a[255:0]) AND b[255:0]) == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        RETURN ZF
        	

_mm256_testc_si256
------------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    M256 a, 
    M256 b

.. code-block:: C

    int _mm256_testc_si256(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing integer data) in "a" and "b", and set "ZF" to 1 if the result is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", and set "CF" to 1 if the result is zero, otherwise set "CF" to 0. Return the "CF" value.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF ((a[255:0] AND b[255:0]) == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        IF (((NOT a[255:0]) AND b[255:0]) == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        RETURN CF
        	

_mm256_testnzc_si256
--------------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    M256 a, 
    M256 b

.. code-block:: C

    int _mm256_testnzc_si256(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing integer data) in "a" and "b", and set "ZF" to 1 if the result is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", and set "CF" to 1 if the result is zero, otherwise set "CF" to 0. Return 1 if both the "ZF" and "CF" values are zero, otherwise return 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        IF ((a[255:0] AND b[255:0]) == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        IF (((NOT a[255:0]) AND b[255:0]) == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        IF (ZF == 0 && CF == 0)
        	dst := 1
        ELSE
        	dst := 0
        FI
        	

_mm256_testz_pd
---------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    int _mm256_testz_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing double-precision (64-bit) floating-point elements) in "a" and "b", producing an intermediate 256-bit value, and set "ZF" to 1 if the sign bit of each 64-bit element in the intermediate value is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", producing an intermediate value, and set "CF" to 1 if the sign bit of each 64-bit element in the intermediate value is zero, otherwise set "CF" to 0. Return the "ZF" value.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0] AND b[255:0]
        IF (tmp[63] == 0 && tmp[127] == 0 && tmp[191] == 0 && tmp[255] == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        tmp[255:0] := (NOT a[255:0]) AND b[255:0]
        IF (tmp[63] == 0 && tmp[127] == 0 && tmp[191] == 0 && tmp[255] == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        dst := ZF
        	

_mm256_testc_pd
---------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    int _mm256_testc_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing double-precision (64-bit) floating-point elements) in "a" and "b", producing an intermediate 256-bit value, and set "ZF" to 1 if the sign bit of each 64-bit element in the intermediate value is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", producing an intermediate value, and set "CF" to 1 if the sign bit of each 64-bit element in the intermediate value is zero, otherwise set "CF" to 0. Return the "CF" value.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0] AND b[255:0]
        IF (tmp[63] == 0 && tmp[127] == 0 && tmp[191] == 0 && tmp[255] == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        tmp[255:0] := (NOT a[255:0]) AND b[255:0]
        IF (tmp[63] == 0 && tmp[127] == 0 && tmp[191] == 0 && tmp[255] == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        dst := CF
        	

_mm256_testnzc_pd
-----------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256d a, 
    __m256d b
:Param ETypes:
    FP64 a, 
    FP64 b

.. code-block:: C

    int _mm256_testnzc_pd(__m256d a, __m256d b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing double-precision (64-bit) floating-point elements) in "a" and "b", producing an intermediate 256-bit value, and set "ZF" to 1 if the sign bit of each 64-bit element in the intermediate value is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", producing an intermediate value, and set "CF" to 1 if the sign bit of each 64-bit element in the intermediate value is zero, otherwise set "CF" to 0. Return 1 if both the "ZF" and "CF" values are zero, otherwise return 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0] AND b[255:0]
        IF (tmp[63] == 0 && tmp[127] == 0 && tmp[191] == 0 && tmp[255] == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        tmp[255:0] := (NOT a[255:0]) AND b[255:0]
        IF (tmp[63] == 0 && tmp[127] == 0 && tmp[191] == 0 && tmp[255] == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        IF (ZF == 0 && CF == 0)
        	dst := 1
        ELSE
        	dst := 0
        FI
        	

_mm256_testz_ps
---------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    int _mm256_testz_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing single-precision (32-bit) floating-point elements) in "a" and "b", producing an intermediate 256-bit value, and set "ZF" to 1 if the sign bit of each 32-bit element in the intermediate value is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", producing an intermediate value, and set "CF" to 1 if the sign bit of each 32-bit element in the intermediate value is zero, otherwise set "CF" to 0. Return the "ZF" value.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0] AND b[255:0]
        IF (tmp[31] == 0 && tmp[63] == 0 && tmp[95] == 0 && tmp[127] == 0 && \
            tmp[159] == 0 && tmp[191] == 0 && tmp[223] == 0 && tmp[255] == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        tmp[255:0] := (NOT a[255:0]) AND b[255:0]
        IF (tmp[31] == 0 && tmp[63] == 0 && tmp[95] == 0 && tmp[127] == 0 && \
            tmp[159] == 0 && tmp[191] == 0 && tmp[223] == 0 && tmp[255] == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        dst := ZF
        	

_mm256_testc_ps
---------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    int _mm256_testc_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing single-precision (32-bit) floating-point elements) in "a" and "b", producing an intermediate 256-bit value, and set "ZF" to 1 if the sign bit of each 32-bit element in the intermediate value is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", producing an intermediate value, and set "CF" to 1 if the sign bit of each 32-bit element in the intermediate value is zero, otherwise set "CF" to 0. Return the "CF" value.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0] AND b[255:0]
        IF (tmp[31] == 0 && tmp[63] == 0 && tmp[95] == 0 && tmp[127] == 0 && \
            tmp[159] == 0 && tmp[191] == 0 && tmp[223] == 0 && tmp[255] == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        tmp[255:0] := (NOT a[255:0]) AND b[255:0]
        IF (tmp[31] == 0 && tmp[63] == 0 && tmp[95] == 0 && tmp[127] == 0 && \
            tmp[159] == 0 && tmp[191] == 0 && tmp[223] == 0 && tmp[255] == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        dst := CF
        	

_mm256_testnzc_ps
-----------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: int
:Param Types:
    __m256 a, 
    __m256 b
:Param ETypes:
    FP32 a, 
    FP32 b

.. code-block:: C

    int _mm256_testnzc_ps(__m256 a, __m256 b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing single-precision (32-bit) floating-point elements) in "a" and "b", producing an intermediate 256-bit value, and set "ZF" to 1 if the sign bit of each 32-bit element in the intermediate value is zero, otherwise set "ZF" to 0. Compute the bitwise NOT of "a" and then AND with "b", producing an intermediate value, and set "CF" to 1 if the sign bit of each 32-bit element in the intermediate value is zero, otherwise set "CF" to 0. Return 1 if both the "ZF" and "CF" values are zero, otherwise return 0.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp[255:0] := a[255:0] AND b[255:0]
        IF (tmp[31] == 0 && tmp[63] == 0 && tmp[95] == 0 && tmp[127] == 0 && \
            tmp[159] == 0 && tmp[191] == 0 && tmp[223] == 0 && tmp[255] == 0)
        	ZF := 1
        ELSE
        	ZF := 0
        FI
        tmp[255:0] := (NOT a[255:0]) AND b[255:0]
        IF (tmp[31] == 0 && tmp[63] == 0 && tmp[95] == 0 && tmp[127] == 0 && \
            tmp[159] == 0 && tmp[191] == 0 && tmp[223] == 0 && tmp[255] == 0)
        	CF := 1
        ELSE
        	CF := 0
        FI
        IF (ZF == 0 && CF == 0)
        	dst := 1
        ELSE
        	dst := 0
        FI
        	

_mm256_and_si256
----------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    M256 a, 
    M256 b

.. code-block:: C

    __m256i _mm256_and_si256(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise AND of 256 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[255:0] := (a[255:0] AND b[255:0])
        dst[MAX:256] := 0
        	

_mm256_andnot_si256
-------------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    M256 a, 
    M256 b

.. code-block:: C

    __m256i _mm256_andnot_si256(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise NOT of 256 bits (representing integer data) in "a" and then AND with "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[255:0] := ((NOT a[255:0]) AND b[255:0])
        dst[MAX:256] := 0
        	

_mm256_or_si256
---------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    M256 a, 
    M256 b

.. code-block:: C

    __m256i _mm256_or_si256(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise OR of 256 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[255:0] := (a[255:0] OR b[255:0])
        dst[MAX:256] := 0
        	

_mm256_xor_si256
----------------
:Tech: AVX_ALL
:Category: Logical
:Header: immintrin.h
:Searchable: AVX_ALL-Logical-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m256i a, 
    __m256i b
:Param ETypes:
    M256 a, 
    M256 b

.. code-block:: C

    __m256i _mm256_xor_si256(__m256i a, __m256i b);

.. admonition:: Intel Description

    Compute the bitwise XOR of 256 bits (representing integer data) in "a" and "b", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[255:0] := (a[255:0] XOR b[255:0])
        dst[MAX:256] := 0
        	

