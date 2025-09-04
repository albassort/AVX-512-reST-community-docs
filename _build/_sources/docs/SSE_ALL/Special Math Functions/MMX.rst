SSE_ALL-Special Math Functions-MMX
==================================

_m_pmaxsw
---------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _m_pmaxsw(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := MAX(a[i+15:i], b[i+15:i])
        ENDFOR
        	

_m_pmaxub
---------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _m_pmaxub(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed maximum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := MAX(a[i+7:i], b[i+7:i])
        ENDFOR
        	

_m_pminsw
---------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _m_pminsw(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed signed 16-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := MIN(a[i+15:i], b[i+15:i])
        ENDFOR
        	

_m_pminub
---------
:Tech: SSE_ALL
:Category: Special Math Functions
:Header: xmmintrin.h
:Searchable: SSE_ALL-Special Math Functions-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _m_pminub(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed unsigned 8-bit integers in "a" and "b", and store packed minimum values in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := MIN(a[i+7:i], b[i+7:i])
        ENDFOR
        	

