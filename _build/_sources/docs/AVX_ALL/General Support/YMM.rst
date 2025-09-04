AVX_ALL-General Support-YMM
===========================

_mm256_zeroall
--------------
:Tech: AVX_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: AVX_ALL-General Support-YMM
:Register: YMM 256 bit
:Return Type: void

.. code-block:: C

    void _mm256_zeroall(void );

.. admonition:: Intel Description

    Zero the contents of all XMM or YMM registers.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        YMM0[MAX:0] := 0
        YMM1[MAX:0] := 0
        YMM2[MAX:0] := 0
        YMM3[MAX:0] := 0
        YMM4[MAX:0] := 0
        YMM5[MAX:0] := 0
        YMM6[MAX:0] := 0
        YMM7[MAX:0] := 0
        IF _64_BIT_MODE
        	YMM8[MAX:0] := 0
        	YMM9[MAX:0] := 0
        	YMM10[MAX:0] := 0
        	YMM11[MAX:0] := 0
        	YMM12[MAX:0] := 0
        	YMM13[MAX:0] := 0
        	YMM14[MAX:0] := 0
        	YMM15[MAX:0] := 0
        FI
        	

_mm256_zeroupper
----------------
:Tech: AVX_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: AVX_ALL-General Support-YMM
:Register: YMM 256 bit
:Return Type: void

.. code-block:: C

    void _mm256_zeroupper(void );

.. admonition:: Intel Description

    Zero the upper 128 bits of all YMM registers; the lower 128-bits of the registers are unmodified.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        YMM0[MAX:128] := 0
        YMM1[MAX:128] := 0
        YMM2[MAX:128] := 0
        YMM3[MAX:128] := 0
        YMM4[MAX:128] := 0
        YMM5[MAX:128] := 0
        YMM6[MAX:128] := 0
        YMM7[MAX:128] := 0
        IF _64_BIT_MODE
        	YMM8[MAX:128] := 0
        	YMM9[MAX:128] := 0
        	YMM10[MAX:128] := 0
        	YMM11[MAX:128] := 0
        	YMM12[MAX:128] := 0
        	YMM13[MAX:128] := 0
        	YMM14[MAX:128] := 0
        	YMM15[MAX:128] := 0
        FI
        	

_mm256_undefined_ps
-------------------
:Tech: AVX_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: AVX_ALL-General Support-YMM
:Register: YMM 256 bit
:Return Type: __m256

.. code-block:: C

    __m256 _mm256_undefined_ps(void );

.. admonition:: Intel Description

    Return vector of type __m256 with undefined elements.

_mm256_undefined_pd
-------------------
:Tech: AVX_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: AVX_ALL-General Support-YMM
:Register: YMM 256 bit
:Return Type: __m256d

.. code-block:: C

    __m256d _mm256_undefined_pd(void );

.. admonition:: Intel Description

    Return vector of type __m256d with undefined elements.

_mm256_undefined_si256
----------------------
:Tech: AVX_ALL
:Category: General Support
:Header: immintrin.h
:Searchable: AVX_ALL-General Support-YMM
:Register: YMM 256 bit
:Return Type: __m256i

.. code-block:: C

    __m256i _mm256_undefined_si256(void );

.. admonition:: Intel Description

    Return vector of type __m256i with undefined elements.

