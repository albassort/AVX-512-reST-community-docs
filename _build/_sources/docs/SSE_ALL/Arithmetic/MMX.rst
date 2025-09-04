SSE_ALL-Arithmetic-MMX
======================

_m_pmulhuw
----------
:Tech: SSE_ALL
:Category: Arithmetic
:Header: xmmintrin.h
:Searchable: SSE_ALL-Arithmetic-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m64 _m_pmulhuw(__m64 a, __m64 b);

.. admonition:: Intel Description

    Multiply the packed unsigned 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	tmp[31:0] := a[i+15:i] * b[i+15:i]
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        	

