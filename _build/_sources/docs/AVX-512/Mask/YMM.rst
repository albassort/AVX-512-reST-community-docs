AVX-512-Mask-YMM
================

_mm256_2intersect_epi32
-----------------------
:Tech: AVX-512
:Category: Mask
:Header: immintrin.h
:Searchable: AVX-512-Mask-YMM
:Register: YMM 256 bit
:Return Type: void
:Param Types:
    __m256i a, 
    __m256i b, 
    __mmask8* k1, 
    __mmask8* k2
:Param ETypes:
    UI32 a, 
    UI32 b, 
    MASK k1, 
    MASK k2

.. code-block:: C

    void _mm256_2intersect_epi32(__m256i a, __m256i b,
                                 __mmask8* k1, __mmask8* k2)

.. admonition:: Intel Description

    Compute intersection of packed 32-bit integer vectors "a" and "b", and store indication of match in the corresponding bit of two mask registers specified by "k1" and "k2". A match in corresponding elements of "a" and "b" is indicated by a set bit in the corresponding bit of the mask registers.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[k1+7:k1] := 0
        MEM[k2+7:k2] := 0
        FOR i := 0 TO 7
        	FOR j := 0 TO 7
        		match := (a.dword[i] == b.dword[j] ? 1 : 0)
        		MEM[k1+7:k1].bit[i] |= match
        		MEM[k2+7:k2].bit[j] |= match
        	ENDFOR
        ENDFOR
        	

_mm256_2intersect_epi64
-----------------------
:Tech: AVX-512
:Category: Mask
:Header: immintrin.h
:Searchable: AVX-512-Mask-YMM
:Register: YMM 256 bit
:Return Type: void
:Param Types:
    __m256i a, 
    __m256i b, 
    __mmask8* k1, 
    __mmask8* k2
:Param ETypes:
    UI64 a, 
    UI64 b, 
    MASK k1, 
    MASK k2

.. code-block:: C

    void _mm256_2intersect_epi64(__m256i a, __m256i b,
                                 __mmask8* k1, __mmask8* k2)

.. admonition:: Intel Description

    Compute intersection of packed 64-bit integer vectors "a" and "b", and store indication of match in the corresponding bit of two mask registers specified by "k1" and "k2". A match in corresponding elements of "a" and "b" is indicated by a set bit in the corresponding bit of the mask registers.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[k1+7:k1] := 0
        MEM[k2+7:k2] := 0
        FOR i := 0 TO 3
        	FOR j := 0 TO 3
        		match := (a.qword[i] == b.qword[j] ? 1 : 0)
        		MEM[k1+7:k1].bit[i] |= match
        		MEM[k2+7:k2].bit[j] |= match
        	ENDFOR
        ENDFOR
        	

