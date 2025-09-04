Other-Load-Other
================

_loadbe_i16
-----------
:Tech: Other
:Category: Load
:Header: immintrin.h
:Searchable: Other-Load-Other
:Return Type: short
:Param Types:
    void const * ptr
:Param ETypes:
    UI16 ptr

.. code-block:: C

    short _loadbe_i16(void const * ptr);

.. admonition:: Intel Description

    Load 16 bits from memory, perform a byte swap operation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*8
        	dst[i+7:i] := MEM[ptr+15-i:ptr+8-i]
        ENDFOR
        	

_loadbe_i32
-----------
:Tech: Other
:Category: Load
:Header: immintrin.h
:Searchable: Other-Load-Other
:Return Type: int
:Param Types:
    void const * ptr
:Param ETypes:
    UI32 ptr

.. code-block:: C

    int _loadbe_i32(void const * ptr);

.. admonition:: Intel Description

    Load 32 bits from memory, perform a byte swap operation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*8
        	dst[i+7:i] := MEM[ptr+31-i:ptr+24-i]
        ENDFOR
        	

_loadbe_i64
-----------
:Tech: Other
:Category: Load
:Header: immintrin.h
:Searchable: Other-Load-Other
:Return Type: __int64
:Param Types:
    void const * ptr
:Param ETypes:
    UI64 ptr

.. code-block:: C

    __int64 _loadbe_i64(void const * ptr);

.. admonition:: Intel Description

    Load 64 bits from memory, perform a byte swap operation, and store the result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := MEM[ptr+63-i:ptr+56-i]
        ENDFOR
        	

