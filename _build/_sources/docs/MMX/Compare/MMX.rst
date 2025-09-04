MMX-Compare-MMX
===============

_m_pcmpeqb
----------
:Tech: MMX
:Category: Compare
:Header: mmintrin.h
:Searchable: MMX-Compare-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_pcmpeqb(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed 8-bit integers in "a" and "b" for equality, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := ( a[i+7:i] == b[i+7:i] ) ? 0xFF : 0
        ENDFOR
        	

_m_pcmpeqw
----------
:Tech: MMX
:Category: Compare
:Header: mmintrin.h
:Searchable: MMX-Compare-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_pcmpeqw(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed 16-bit integers in "a" and "b" for equality, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := ( a[i+15:i] == b[i+15:i] ) ? 0xFFFF : 0
        ENDFOR
        	

_m_pcmpeqd
----------
:Tech: MMX
:Category: Compare
:Header: mmintrin.h
:Searchable: MMX-Compare-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI64 a, 
    UI64 b

.. code-block:: C

    __m64 _m_pcmpeqd(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed 32-bit integers in "a" and "b" for equality, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	dst[i+31:i] := ( a[i+31:i] == b[i+31:i] ) ? 0xFFFFFFFF : 0
        ENDFOR
        	

_m_pcmpgtb
----------
:Tech: MMX
:Category: Compare
:Header: mmintrin.h
:Searchable: MMX-Compare-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __m64 _m_pcmpgtb(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed 8-bit integers in "a" and "b" for greater-than, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := ( a[i+7:i] > b[i+7:i] ) ? 0xFF : 0
        ENDFOR
        	

_m_pcmpgtw
----------
:Tech: MMX
:Category: Compare
:Header: mmintrin.h
:Searchable: MMX-Compare-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __m64 _m_pcmpgtw(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed 16-bit integers in "a" and "b" for greater-than, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := ( a[i+15:i] > b[i+15:i] ) ? 0xFFFF : 0
        ENDFOR
        	

_m_pcmpgtd
----------
:Tech: MMX
:Category: Compare
:Header: mmintrin.h
:Searchable: MMX-Compare-MMX
:Register: MMX 64 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI64 a, 
    SI64 b

.. code-block:: C

    __m64 _m_pcmpgtd(__m64 a, __m64 b);

.. admonition:: Intel Description

    Compare packed 32-bit integers in "a" and "b" for greater-than, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	dst[i+31:i] := ( a[i+31:i] > b[i+31:i] ) ? 0xFFFFFFFF : 0
        ENDFOR
        	

