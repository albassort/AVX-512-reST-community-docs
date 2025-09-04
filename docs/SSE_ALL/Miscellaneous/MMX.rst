SSE_ALL-Miscellaneous-MMX
=========================

_m_psadbw
---------
:Tech: SSE_ALL
:Category: Miscellaneous
:Header: xmmintrin.h
:Searchable: SSE_ALL-Miscellaneous-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _m_psadbw(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compute the absolute differences of packed unsigned 8-bit integers in "a" and "b", then horizontally sum each consecutive 8 differences to produce four unsigned 16-bit integers, and pack these unsigned 16-bit integers in the low 16 bits of "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	tmp[i+7:i] := ABS(a[i+7:i] - b[i+7:i])
        ENDFOR
        dst[15:0] := tmp[7:0] + tmp[15:8] + tmp[23:16] + tmp[31:24] + tmp[39:32] + tmp[47:40] + tmp[55:48] + tmp[63:56]
        dst[63:16] := 0
        	

_m_pmovmskb
-----------
:Tech: SSE_ALL
:Category: Miscellaneous
:Header: xmmintrin.h
:Searchable: SSE_ALL-Miscellaneous-MMX
:Register: MMX 64 bit
:Return Type: int
:Param Types:
    __m64 a
:Param ETypes:
    UI8 a

.. code-block:: C

    int _m_pmovmskb(__m64 a);

.. admonition:: Intel Description

    Create mask from the most significant bit of each 8-bit element in "a", and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[j] := a[i+7]
        ENDFOR
        dst[MAX:8] := 0
        	

