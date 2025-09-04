AVX_ALL-Set-YMM
===============

_mm256_setzero_pd
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256d

.. code-block:: C

    __m256d _mm256_setzero_pd(void );

.. admonition:: Intel Description

    Return vector of type __m256d with all elements set to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[MAX:0] := 0
        	

_mm256_setzero_ps
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256

.. code-block:: C

    __m256 _mm256_setzero_ps(void );

.. admonition:: Intel Description

    Return vector of type __m256 with all elements set to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[MAX:0] := 0
        	

_mm256_setzero_si256
--------------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i

.. code-block:: C

    __m256i _mm256_setzero_si256(void );

.. admonition:: Intel Description

    Return vector of type __m256i with all elements set to zero.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[MAX:0] := 0
        	

_mm256_set_pd
-------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    double e3, 
    double e2, 
    double e1, 
    double e0
:Param ETypes:
    FP64 e3, 
    FP64 e2, 
    FP64 e1, 
    FP64 e0

.. code-block:: C

    __m256d _mm256_set_pd(double e3, double e2, double e1,
                          double e0)

.. admonition:: Intel Description

    Set packed double-precision (64-bit) floating-point elements in "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := e0
        dst[127:64] := e1
        dst[191:128] := e2
        dst[255:192] := e3
        dst[MAX:256] := 0
        	

_mm256_set_ps
-------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    float e7, 
    float e6, 
    float e5, 
    float e4, 
    float e3, 
    float e2, 
    float e1, 
    float e0
:Param ETypes:
    FP32 e7, 
    FP32 e6, 
    FP32 e5, 
    FP32 e4, 
    FP32 e3, 
    FP32 e2, 
    FP32 e1, 
    FP32 e0

.. code-block:: C

    __m256 _mm256_set_ps(float e7, float e6, float e5, float e4,
                         float e3, float e2, float e1,
                         float e0)

.. admonition:: Intel Description

    Set packed single-precision (32-bit) floating-point elements in "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := e0
        dst[63:32] := e1
        dst[95:64] := e2
        dst[127:96] := e3
        dst[159:128] := e4
        dst[191:160] := e5
        dst[223:192] := e6
        dst[255:224] := e7
        dst[MAX:256] := 0
        	

_mm256_set_epi8
---------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    char e31, 
    char e30, 
    char e29, 
    char e28, 
    char e27, 
    char e26, 
    char e25, 
    char e24, 
    char e23, 
    char e22, 
    char e21, 
    char e20, 
    char e19, 
    char e18, 
    char e17, 
    char e16, 
    char e15, 
    char e14, 
    char e13, 
    char e12, 
    char e11, 
    char e10, 
    char e9, 
    char e8, 
    char e7, 
    char e6, 
    char e5, 
    char e4, 
    char e3, 
    char e2, 
    char e1, 
    char e0
:Param ETypes:
    UI8 e31, 
    UI8 e30, 
    UI8 e29, 
    UI8 e28, 
    UI8 e27, 
    UI8 e26, 
    UI8 e25, 
    UI8 e24, 
    UI8 e23, 
    UI8 e22, 
    UI8 e21, 
    UI8 e20, 
    UI8 e19, 
    UI8 e18, 
    UI8 e17, 
    UI8 e16, 
    UI8 e15, 
    UI8 e14, 
    UI8 e13, 
    UI8 e12, 
    UI8 e11, 
    UI8 e10, 
    UI8 e9, 
    UI8 e8, 
    UI8 e7, 
    UI8 e6, 
    UI8 e5, 
    UI8 e4, 
    UI8 e3, 
    UI8 e2, 
    UI8 e1, 
    UI8 e0

.. code-block:: C

    __m256i _mm256_set_epi8(
        char e31, char e30, char e29, char e28, char e27,
        char e26, char e25, char e24, char e23, char e22,
        char e21, char e20, char e19, char e18, char e17,
        char e16, char e15, char e14, char e13, char e12,
        char e11, char e10, char e9, char e8, char e7, char e6,
        char e5, char e4, char e3, char e2, char e1, char e0)

.. admonition:: Intel Description

    Set packed 8-bit integers in "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[7:0] := e0
        dst[15:8] := e1
        dst[23:16] := e2
        dst[31:24] := e3
        dst[39:32] := e4
        dst[47:40] := e5
        dst[55:48] := e6
        dst[63:56] := e7
        dst[71:64] := e8
        dst[79:72] := e9
        dst[87:80] := e10
        dst[95:88] := e11
        dst[103:96] := e12
        dst[111:104] := e13
        dst[119:112] := e14
        dst[127:120] := e15
        dst[135:128] := e16
        dst[143:136] := e17
        dst[151:144] := e18
        dst[159:152] := e19
        dst[167:160] := e20
        dst[175:168] := e21
        dst[183:176] := e22
        dst[191:184] := e23
        dst[199:192] := e24
        dst[207:200] := e25
        dst[215:208] := e26
        dst[223:216] := e27
        dst[231:224] := e28
        dst[239:232] := e29
        dst[247:240] := e30
        dst[255:248] := e31
        dst[MAX:256] := 0
        	

_mm256_set_epi16
----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    short e15, 
    short e14, 
    short e13, 
    short e12, 
    short e11, 
    short e10, 
    short e9, 
    short e8, 
    short e7, 
    short e6, 
    short e5, 
    short e4, 
    short e3, 
    short e2, 
    short e1, 
    short e0
:Param ETypes:
    UI16 e15, 
    UI16 e14, 
    UI16 e13, 
    UI16 e12, 
    UI16 e11, 
    UI16 e10, 
    UI16 e9, 
    UI16 e8, 
    UI16 e7, 
    UI16 e6, 
    UI16 e5, 
    UI16 e4, 
    UI16 e3, 
    UI16 e2, 
    UI16 e1, 
    UI16 e0

.. code-block:: C

    __m256i _mm256_set_epi16(short e15, short e14, short e13,
                             short e12, short e11, short e10,
                             short e9, short e8, short e7,
                             short e6, short e5, short e4,
                             short e3, short e2, short e1,
                             short e0)

.. admonition:: Intel Description

    Set packed 16-bit integers in "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := e0
        dst[31:16] := e1
        dst[47:32] := e2
        dst[63:48] := e3
        dst[79:64] := e4
        dst[95:80] := e5
        dst[111:96] := e6
        dst[127:112] := e7
        dst[143:128] := e8
        dst[159:144] := e9
        dst[175:160] := e10
        dst[191:176] := e11
        dst[207:192] := e12
        dst[223:208] := e13
        dst[239:224] := e14
        dst[255:240] := e15
        dst[MAX:256] := 0
        	

_mm256_set_epi32
----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    int e7, 
    int e6, 
    int e5, 
    int e4, 
    int e3, 
    int e2, 
    int e1, 
    int e0
:Param ETypes:
    UI32 e7, 
    UI32 e6, 
    UI32 e5, 
    UI32 e4, 
    UI32 e3, 
    UI32 e2, 
    UI32 e1, 
    UI32 e0

.. code-block:: C

    __m256i _mm256_set_epi32(int e7, int e6, int e5, int e4,
                             int e3, int e2, int e1, int e0)

.. admonition:: Intel Description

    Set packed 32-bit integers in "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := e0
        dst[63:32] := e1
        dst[95:64] := e2
        dst[127:96] := e3
        dst[159:128] := e4
        dst[191:160] := e5
        dst[223:192] := e6
        dst[255:224] := e7
        dst[MAX:256] := 0
        	

_mm256_set_epi64x
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __int64 e3, 
    __int64 e2, 
    __int64 e1, 
    __int64 e0
:Param ETypes:
    UI64 e3, 
    UI64 e2, 
    UI64 e1, 
    UI64 e0

.. code-block:: C

    __m256i _mm256_set_epi64x(__int64 e3, __int64 e2,
                              __int64 e1, __int64 e0)

.. admonition:: Intel Description

    Set packed 64-bit integers in "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := e0
        dst[127:64] := e1
        dst[191:128] := e2
        dst[255:192] := e3
        dst[MAX:256] := 0
        	

_mm256_setr_pd
--------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    double e3, 
    double e2, 
    double e1, 
    double e0
:Param ETypes:
    FP64 e3, 
    FP64 e2, 
    FP64 e1, 
    FP64 e0

.. code-block:: C

    __m256d _mm256_setr_pd(double e3, double e2, double e1,
                           double e0)

.. admonition:: Intel Description

    Set packed double-precision (64-bit) floating-point elements in "dst" with the supplied values in reverse order.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := e3
        dst[127:64] := e2
        dst[191:128] := e1
        dst[255:192] := e0
        dst[MAX:256] := 0
        	

_mm256_setr_ps
--------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    float e7, 
    float e6, 
    float e5, 
    float e4, 
    float e3, 
    float e2, 
    float e1, 
    float e0
:Param ETypes:
    FP32 e7, 
    FP32 e6, 
    FP32 e5, 
    FP32 e4, 
    FP32 e3, 
    FP32 e2, 
    FP32 e1, 
    FP32 e0

.. code-block:: C

    __m256 _mm256_setr_ps(float e7, float e6, float e5,
                          float e4, float e3, float e2,
                          float e1, float e0)

.. admonition:: Intel Description

    Set packed single-precision (32-bit) floating-point elements in "dst" with the supplied values in reverse order.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := e7
        dst[63:32] := e6
        dst[95:64] := e5
        dst[127:96] := e4
        dst[159:128] := e3
        dst[191:160] := e2
        dst[223:192] := e1
        dst[255:224] := e0
        dst[MAX:256] := 0
        	

_mm256_setr_epi8
----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    char e31, 
    char e30, 
    char e29, 
    char e28, 
    char e27, 
    char e26, 
    char e25, 
    char e24, 
    char e23, 
    char e22, 
    char e21, 
    char e20, 
    char e19, 
    char e18, 
    char e17, 
    char e16, 
    char e15, 
    char e14, 
    char e13, 
    char e12, 
    char e11, 
    char e10, 
    char e9, 
    char e8, 
    char e7, 
    char e6, 
    char e5, 
    char e4, 
    char e3, 
    char e2, 
    char e1, 
    char e0
:Param ETypes:
    UI8 e31, 
    UI8 e30, 
    UI8 e29, 
    UI8 e28, 
    UI8 e27, 
    UI8 e26, 
    UI8 e25, 
    UI8 e24, 
    UI8 e23, 
    UI8 e22, 
    UI8 e21, 
    UI8 e20, 
    UI8 e19, 
    UI8 e18, 
    UI8 e17, 
    UI8 e16, 
    UI8 e15, 
    UI8 e14, 
    UI8 e13, 
    UI8 e12, 
    UI8 e11, 
    UI8 e10, 
    UI8 e9, 
    UI8 e8, 
    UI8 e7, 
    UI8 e6, 
    UI8 e5, 
    UI8 e4, 
    UI8 e3, 
    UI8 e2, 
    UI8 e1, 
    UI8 e0

.. code-block:: C

    __m256i _mm256_setr_epi8(
        char e31, char e30, char e29, char e28, char e27,
        char e26, char e25, char e24, char e23, char e22,
        char e21, char e20, char e19, char e18, char e17,
        char e16, char e15, char e14, char e13, char e12,
        char e11, char e10, char e9, char e8, char e7, char e6,
        char e5, char e4, char e3, char e2, char e1, char e0)

.. admonition:: Intel Description

    Set packed 8-bit integers in "dst" with the supplied values in reverse order.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[7:0] := e31
        dst[15:8] := e30
        dst[23:16] := e29
        dst[31:24] := e28
        dst[39:32] := e27
        dst[47:40] := e26
        dst[55:48] := e25
        dst[63:56] := e24
        dst[71:64] := e23
        dst[79:72] := e22
        dst[87:80] := e21
        dst[95:88] := e20
        dst[103:96] := e19
        dst[111:104] := e18
        dst[119:112] := e17
        dst[127:120] := e16
        dst[135:128] := e15
        dst[143:136] := e14
        dst[151:144] := e13
        dst[159:152] := e12
        dst[167:160] := e11
        dst[175:168] := e10
        dst[183:176] := e9
        dst[191:184] := e8
        dst[199:192] := e7
        dst[207:200] := e6
        dst[215:208] := e5
        dst[223:216] := e4
        dst[231:224] := e3
        dst[239:232] := e2
        dst[247:240] := e1
        dst[255:248] := e0
        dst[MAX:256] := 0
        	

_mm256_setr_epi16
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    short e15, 
    short e14, 
    short e13, 
    short e12, 
    short e11, 
    short e10, 
    short e9, 
    short e8, 
    short e7, 
    short e6, 
    short e5, 
    short e4, 
    short e3, 
    short e2, 
    short e1, 
    short e0
:Param ETypes:
    UI16 e15, 
    UI16 e14, 
    UI16 e13, 
    UI16 e12, 
    UI16 e11, 
    UI16 e10, 
    UI16 e9, 
    UI16 e8, 
    UI16 e7, 
    UI16 e6, 
    UI16 e5, 
    UI16 e4, 
    UI16 e3, 
    UI16 e2, 
    UI16 e1, 
    UI16 e0

.. code-block:: C

    __m256i _mm256_setr_epi16(short e15, short e14, short e13,
                              short e12, short e11, short e10,
                              short e9, short e8, short e7,
                              short e6, short e5, short e4,
                              short e3, short e2, short e1,
                              short e0)

.. admonition:: Intel Description

    Set packed 16-bit integers in "dst" with the supplied values in reverse order.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[15:0] := e15
        dst[31:16] := e14
        dst[47:32] := e13
        dst[63:48] := e12
        dst[79:64] := e11
        dst[95:80] := e10
        dst[111:96] := e9
        dst[127:112] := e8
        dst[143:128] := e7
        dst[159:144] := e6
        dst[175:160] := e5
        dst[191:176] := e4
        dst[207:192] := e3
        dst[223:208] := e2
        dst[239:224] := e1
        dst[255:240] := e0
        dst[MAX:256] := 0
        	

_mm256_setr_epi32
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    int e7, 
    int e6, 
    int e5, 
    int e4, 
    int e3, 
    int e2, 
    int e1, 
    int e0
:Param ETypes:
    UI32 e7, 
    UI32 e6, 
    UI32 e5, 
    UI32 e4, 
    UI32 e3, 
    UI32 e2, 
    UI32 e1, 
    UI32 e0

.. code-block:: C

    __m256i _mm256_setr_epi32(int e7, int e6, int e5, int e4,
                              int e3, int e2, int e1, int e0)

.. admonition:: Intel Description

    Set packed 32-bit integers in "dst" with the supplied values in reverse order.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := e7
        dst[63:32] := e6
        dst[95:64] := e5
        dst[127:96] := e4
        dst[159:128] := e3
        dst[191:160] := e2
        dst[223:192] := e1
        dst[255:224] := e0
        dst[MAX:256] := 0
        	

_mm256_setr_epi64x
------------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __int64 e3, 
    __int64 e2, 
    __int64 e1, 
    __int64 e0
:Param ETypes:
    UI64 e3, 
    UI64 e2, 
    UI64 e1, 
    UI64 e0

.. code-block:: C

    __m256i _mm256_setr_epi64x(__int64 e3, __int64 e2,
                               __int64 e1, __int64 e0)

.. admonition:: Intel Description

    Set packed 64-bit integers in "dst" with the supplied values in reverse order.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := e3
        dst[127:64] := e2
        dst[191:128] := e1
        dst[255:192] := e0
        dst[MAX:256] := 0
        	

_mm256_set1_pd
--------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    double a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_set1_pd(double a);

.. admonition:: Intel Description

    Broadcast double-precision (64-bit) floating-point value "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[63:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_set1_ps
--------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    float a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_set1_ps(float a);

.. admonition:: Intel Description

    Broadcast single-precision (32-bit) floating-point value "a" to all elements of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[31:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_set1_epi8
----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    char a
:Param ETypes:
    UI8 a

.. code-block:: C

    __m256i _mm256_set1_epi8(char a);

.. admonition:: Intel Description

    Broadcast 8-bit integer "a" to all elements of "dst". This intrinsic may generate the "vpbroadcastb".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 31
        	i := j*8
        	dst[i+7:i] := a[7:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_set1_epi16
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    short a
:Param ETypes:
    UI16 a

.. code-block:: C

    __m256i _mm256_set1_epi16(short a);

.. admonition:: Intel Description

    Broadcast 16-bit integer "a" to all all elements of "dst". This intrinsic may generate the "vpbroadcastw".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*16
        	dst[i+15:i] := a[15:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_set1_epi32
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    int a
:Param ETypes:
    UI32 a

.. code-block:: C

    __m256i _mm256_set1_epi32(int a);

.. admonition:: Intel Description

    Broadcast 32-bit integer "a" to all elements of "dst". This intrinsic may generate the "vpbroadcastd".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*32
        	dst[i+31:i] := a[31:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_set1_epi64x
------------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    long long a
:Param ETypes:
    UI64 a

.. code-block:: C

    __m256i _mm256_set1_epi64x(long long a);

.. admonition:: Intel Description

    Broadcast 64-bit integer "a" to all elements of "dst". This intrinsic may generate the "vpbroadcastq".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*64
        	dst[i+63:i] := a[63:0]
        ENDFOR
        dst[MAX:256] := 0
        	

_mm256_set_m128
---------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m128 hi, 
    __m128 lo
:Param ETypes:
    FP32 hi, 
    FP32 lo

.. code-block:: C

    __m256 _mm256_set_m128(__m128 hi, __m128 lo);

.. admonition:: Intel Description

    Set packed __m256 vector "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := lo[127:0]
        dst[255:128] := hi[127:0]
        dst[MAX:256] := 0
        	

_mm256_set_m128d
----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m128d hi, 
    __m128d lo
:Param ETypes:
    FP64 hi, 
    FP64 lo

.. code-block:: C

    __m256d _mm256_set_m128d(__m128d hi, __m128d lo);

.. admonition:: Intel Description

    Set packed __m256d vector "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := lo[127:0]
        dst[255:128] := hi[127:0]
        dst[MAX:256] := 0
        	

_mm256_set_m128i
----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i hi, 
    __m128i lo
:Param ETypes:
    M128 hi, 
    M128 lo

.. code-block:: C

    __m256i _mm256_set_m128i(__m128i hi, __m128i lo);

.. admonition:: Intel Description

    Set packed __m256i vector "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := lo[127:0]
        dst[255:128] := hi[127:0]
        dst[MAX:256] := 0
        	

_mm256_setr_m128
----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m128 lo, 
    __m128 hi
:Param ETypes:
    FP32 lo, 
    FP32 hi

.. code-block:: C

    __m256 _mm256_setr_m128(__m128 lo, __m128 hi);

.. admonition:: Intel Description

    Set packed __m256 vector "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := lo[127:0]
        dst[255:128] := hi[127:0]
        dst[MAX:256] := 0
        	

_mm256_setr_m128d
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m128d lo, 
    __m128d hi
:Param ETypes:
    FP64 lo, 
    FP64 hi

.. code-block:: C

    __m256d _mm256_setr_m128d(__m128d lo, __m128d hi);

.. admonition:: Intel Description

    Set packed __m256d vector "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := lo[127:0]
        dst[255:128] := hi[127:0]
        dst[MAX:256] := 0
        	

_mm256_setr_m128i
-----------------
:Tech: AVX_ALL
:Category: Set
:Header: immintrin.h
:Searchable: AVX_ALL-Set-YMM
:Register: YMM 256 bit
:Return Type: __m256i
:Param Types:
    __m128i lo, 
    __m128i hi
:Param ETypes:
    M128 lo, 
    M128 hi

.. code-block:: C

    __m256i _mm256_setr_m128i(__m128i lo, __m128i hi);

.. admonition:: Intel Description

    Set packed __m256i vector "dst" with the supplied values.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[127:0] := lo[127:0]
        dst[255:128] := hi[127:0]
        dst[MAX:256] := 0
        	

