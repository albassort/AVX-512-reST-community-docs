Other-Store-Other
=================

_storebe_i16
------------
:Tech: Other
:Category: Store
:Header: immintrin.h
:Searchable: Other-Store-Other
:Return Type: void
:Param Types:
    void * ptr, 
    short data
:Param ETypes:
    UI16 ptr, 
    UI16 data

.. code-block:: C

    void _storebe_i16(void * ptr, short data);

.. admonition:: Intel Description

    Perform a bit swap operation of the 16 bits in "data", and store the results to memory.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*8
        	MEM[ptr+i+7:ptr+i] := data[15-i:8-i]
        ENDFOR
        	

_storebe_i32
------------
:Tech: Other
:Category: Store
:Header: immintrin.h
:Searchable: Other-Store-Other
:Return Type: void
:Param Types:
    void * ptr, 
    int data
:Param ETypes:
    UI32 ptr, 
    UI32 data

.. code-block:: C

    void _storebe_i32(void * ptr, int data);

.. admonition:: Intel Description

    Perform a bit swap operation of the 32 bits in "data", and store the results to memory.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        addr := MEM[ptr]
        FOR j := 0 to 3
        	i := j*8
        	MEM[ptr+i+7:ptr+i] := data[31-i:24-i]
        ENDFOR
        	

_storebe_i64
------------
:Tech: Other
:Category: Store
:Header: immintrin.h
:Searchable: Other-Store-Other
:Return Type: void
:Param Types:
    void * ptr, 
    __int64 data
:Param ETypes:
    UI64 ptr, 
    UI64 data

.. code-block:: C

    void _storebe_i64(void * ptr, __int64 data);

.. admonition:: Intel Description

    Perform a bit swap operation of the 64 bits in "data", and store the results to memory.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        addr := MEM[ptr]
        FOR j := 0 to 7
        	i := j*8
        	MEM[ptr+i+7:ptr+i] := data[63-i:56-i]
        ENDFOR
        	

_movdir64b
----------
:Tech: Other
:Category: Store
:Header: immintrin.h
:Searchable: Other-Store-Other
:Return Type: void
:Param Types:
    void* dst, 
    const void* src
:Param ETypes:
    M512 dst, 
    M512 src

.. code-block:: C

    void _movdir64b(void* dst, const void* src);

.. admonition:: Intel Description

    Move 64-byte (512-bit) value using direct store from source memory address "src" to destination memory address "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[dst+511:dst] := MEM[src+511:src]
        	

_directstoreu_u64
-----------------
:Tech: Other
:Category: Store
:Header: immintrin.h
:Searchable: Other-Store-Other
:Return Type: void
:Param Types:
    void* dst, 
    unsigned __int64 val
:Param ETypes:
    UI64 dst, 
    UI64 val

.. code-block:: C

    void _directstoreu_u64(void* dst, unsigned __int64 val);

.. admonition:: Intel Description

    Store 64-bit integer from "val" into memory using direct store.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[dst+63:dst] := val[63:0]
        	

_directstoreu_u32
-----------------
:Tech: Other
:Category: Store
:Header: immintrin.h
:Searchable: Other-Store-Other
:Return Type: void
:Param Types:
    void* dst, 
    unsigned int val
:Param ETypes:
    UI32 dst, 
    UI32 val

.. code-block:: C

    void _directstoreu_u32(void* dst, unsigned int val);

.. admonition:: Intel Description

    Store 32-bit integer from "val" into memory using direct store.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[dst+31:dst] := val[31:0]
        	

