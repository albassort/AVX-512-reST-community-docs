Other-Bit Manipulation-XMM
==========================

_mm_tzcnt_32
------------
:Tech: Other
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: Other-Bit Manipulation-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    unsigned int a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm_tzcnt_32(unsigned int a);

.. admonition:: Intel Description

    Count the number of trailing zero bits in unsigned 32-bit integer "a", and return that count in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := 0
        dst := 0
        DO WHILE ((tmp < 32) AND a[tmp] == 0)
        	tmp := tmp + 1
        	dst := dst + 1
        OD
        	

_mm_tzcnt_64
------------
:Tech: Other
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: Other-Bit Manipulation-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    unsigned __int64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    __int64 _mm_tzcnt_64(unsigned __int64 a);

.. admonition:: Intel Description

    Count the number of trailing zero bits in unsigned 64-bit integer "a", and return that count in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        tmp := 0
        dst := 0
        DO WHILE ((tmp < 64) AND a[tmp] == 0)
        	tmp := tmp + 1
        	dst := dst + 1
        OD
        	

_mm_popcnt_u32
--------------
:Tech: Other
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: Other-Bit Manipulation-XMM
:Register: XMM 128 bit
:Return Type: int
:Param Types:
    unsigned int a
:Param ETypes:
    UI32 a

.. code-block:: C

    int _mm_popcnt_u32(unsigned int a);

.. admonition:: Intel Description

    Count the number of bits set to 1 in unsigned 32-bit integer "a", and return that count in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst := 0
        FOR i := 0 to 31
        	IF a[i]
        		dst := dst + 1
        	FI
        ENDFOR
        	

_mm_popcnt_u64
--------------
:Tech: Other
:Category: Bit Manipulation
:Header: immintrin.h
:Searchable: Other-Bit Manipulation-XMM
:Register: XMM 128 bit
:Return Type: __int64
:Param Types:
    unsigned __int64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    __int64 _mm_popcnt_u64(unsigned __int64 a);

.. admonition:: Intel Description

    Count the number of bits set to 1 in unsigned 64-bit integer "a", and return that count in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        dst := 0
        FOR i := 0 to 63
        	IF a[i]
        		dst := dst + 1
        	FI
        ENDFOR
        	

