AVX_ALL-Move-YMM
================

_mm256_movehdup_ps
------------------
:Tech: AVX_ALL
:Category: Move
:Header: immintrin.h
:Searchable: AVX_ALL-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_movehdup_ps(__m256 a);

.. admonition:: Intel Description

    Duplicate odd-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[63:32] 
        dst[63:32] := a[63:32] 
        dst[95:64] := a[127:96] 
        dst[127:96] := a[127:96]
        dst[159:128] := a[191:160] 
        dst[191:160] := a[191:160] 
        dst[223:192] := a[255:224] 
        dst[255:224] := a[255:224]
        dst[MAX:256] := 0
        	

_mm256_moveldup_ps
------------------
:Tech: AVX_ALL
:Category: Move
:Header: immintrin.h
:Searchable: AVX_ALL-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256
:Param Types:
    __m256 a
:Param ETypes:
    FP32 a

.. code-block:: C

    __m256 _mm256_moveldup_ps(__m256 a);

.. admonition:: Intel Description

    Duplicate even-indexed single-precision (32-bit) floating-point elements from "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[31:0] := a[31:0] 
        dst[63:32] := a[31:0] 
        dst[95:64] := a[95:64] 
        dst[127:96] := a[95:64]
        dst[159:128] := a[159:128] 
        dst[191:160] := a[159:128] 
        dst[223:192] := a[223:192] 
        dst[255:224] := a[223:192]
        dst[MAX:256] := 0
        	

_mm256_movedup_pd
-----------------
:Tech: AVX_ALL
:Category: Move
:Header: immintrin.h
:Searchable: AVX_ALL-Move-YMM
:Register: YMM 256 bit
:Return Type: __m256d
:Param Types:
    __m256d a
:Param ETypes:
    FP64 a

.. code-block:: C

    __m256d _mm256_movedup_pd(__m256d a);

.. admonition:: Intel Description

    Duplicate even-indexed double-precision (64-bit) floating-point elements from "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst[63:0] := a[63:0]
        dst[127:64] := a[63:0]
        dst[191:128] := a[191:128]
        dst[255:192] := a[191:128]
        dst[MAX:256] := 0
        	

