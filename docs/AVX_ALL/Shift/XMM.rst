AVX_ALL-Shift-XMM
=================

_mm_sllv_epi32
--------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m128i _mm_sllv_epi32(__m128i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] << count[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_sllv_epi64
--------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m128i _mm_sllv_epi64(__m128i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" left by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF count[i+63:i] < 64
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] << count[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_srav_epi32
--------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i count
:Param ETypes:
    SI32 a, 
    UI32 count

.. code-block:: C

    __m128i _mm_srav_epi32(__m128i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in sign bits, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := SignExtend32(a[i+31:i] >> count[i+31:i])
        	ELSE
        		dst[i+31:i] := (a[i+31] ? 0xFFFFFFFF : 0)
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_srlv_epi32
--------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i count
:Param ETypes:
    UI32 a, 
    UI32 count

.. code-block:: C

    __m128i _mm_srlv_epi32(__m128i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 32-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*32
        	IF count[i+31:i] < 32
        		dst[i+31:i] := ZeroExtend32(a[i+31:i] >> count[i+31:i])
        	ELSE
        		dst[i+31:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

_mm_srlv_epi64
--------------
:Tech: AVX_ALL
:Category: Shift
:Header: immintrin.h
:Searchable: AVX_ALL-Shift-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i count
:Param ETypes:
    UI64 a, 
    UI64 count

.. code-block:: C

    __m128i _mm_srlv_epi64(__m128i a, __m128i count);

.. admonition:: Intel Description

    Shift packed 64-bit integers in "a" right by the amount specified by the corresponding element in "count" while shifting in zeros, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*64
        	IF count[i+63:i] < 64
        		dst[i+63:i] := ZeroExtend64(a[i+63:i] >> count[i+63:i])
        	ELSE
        		dst[i+63:i] := 0
        	FI
        ENDFOR
        dst[MAX:128] := 0
        	

