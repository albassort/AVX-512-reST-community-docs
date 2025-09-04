SSE_ALL-Swizzle-Other
=====================

_MM_TRANSPOSE4_PS
-----------------
:Tech: SSE_ALL
:Category: Swizzle
:Header: xmmintrin.h
:Searchable: SSE_ALL-Swizzle-Other
:Return Type: void
:Param Types:
    __m128 row0, 
    __m128 row1, 
    __m128 row2, 
    __m128 row3
:Param ETypes:
    FP32 row0, 
    FP32 row1, 
    FP32 row2, 
    FP32 row3

.. code-block:: C

    void _MM_TRANSPOSE4_PS(__m128 row0, __m128 row1,
                           __m128 row2, __m128 row3)

.. admonition:: Intel Description

    Macro: Transpose the 4x4 matrix formed by the 4 rows of single-precision (32-bit) floating-point elements in "row0", "row1", "row2", and "row3", and store the transposed matrix in these vectors ("row0" now contains column 0, etc.).

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        __m128 tmp3, tmp2, tmp1, tmp0;
        tmp0 := _mm_unpacklo_ps(row0, row1);
        tmp2 := _mm_unpacklo_ps(row2, row3);
        tmp1 := _mm_unpackhi_ps(row0, row1);
        tmp3 := _mm_unpackhi_ps(row2, row3);
        row0 := _mm_movelh_ps(tmp0, tmp2);
        row1 := _mm_movehl_ps(tmp2, tmp0);
        row2 := _mm_movelh_ps(tmp1, tmp3);
        row3 := _mm_movehl_ps(tmp3, tmp1);
        	

