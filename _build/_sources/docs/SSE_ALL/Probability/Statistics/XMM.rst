SSE_ALL-Probability/Statistics-XMM
==================================

_mm_avg_pu8
-----------
:Tech: SSE_ALL
:Category: Probability/Statistics
:Header: xmmintrin.h
:Searchable: SSE_ALL-Probability/Statistics-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _mm_avg_pu8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Average packed unsigned 8-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := (a[i+7:i] + b[i+7:i] + 1) >> 1
        ENDFOR
        	

_mm_avg_pu16
------------
:Tech: SSE_ALL
:Category: Probability/Statistics
:Header: xmmintrin.h
:Searchable: SSE_ALL-Probability/Statistics-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m64 _mm_avg_pu16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Average packed unsigned 16-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := (a[i+15:i] + b[i+15:i] + 1) >> 1
        ENDFOR
        	

_mm_avg_epu8
------------
:Tech: SSE_ALL
:Category: Probability/Statistics
:Header: emmintrin.h
:Searchable: SSE_ALL-Probability/Statistics-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m128i _mm_avg_epu8(__m128i a, __m128i b);

.. admonition:: Intel Description

    Average packed unsigned 8-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 15
        	i := j*8
        	dst[i+7:i] := (a[i+7:i] + b[i+7:i] + 1) >> 1
        ENDFOR
        	

_mm_avg_epu16
-------------
:Tech: SSE_ALL
:Category: Probability/Statistics
:Header: emmintrin.h
:Searchable: SSE_ALL-Probability/Statistics-XMM
:Register: XMM 128 bit
:Return Type: __m128i
:Param Types:
    __m128i a, 
    __m128i b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m128i _mm_avg_epu16(__m128i a, __m128i b);

.. admonition:: Intel Description

    Average packed unsigned 16-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*16
        	dst[i+15:i] := (a[i+15:i] + b[i+15:i] + 1) >> 1
        ENDFOR
        	

