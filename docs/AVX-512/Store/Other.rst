AVX-512-Store-Other
===================

_store_mask32
-------------
:Tech: AVX-512
:Category: Store
:Header: immintrin.h
:Searchable: AVX-512-Store-Other
:Return Type: void
:Param Types:
    __mmask32* mem_addr, 
    __mmask32 a
:Param ETypes:
    MASK mem_addr, 
    MASK a

.. code-block:: C

    void _store_mask32(__mmask32* mem_addr, __mmask32 a);

.. admonition:: Intel Description

    Store 32-bit mask from "a" into memory.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[mem_addr+31:mem_addr] := a[31:0]
        	

_store_mask64
-------------
:Tech: AVX-512
:Category: Store
:Header: immintrin.h
:Searchable: AVX-512-Store-Other
:Return Type: void
:Param Types:
    __mmask64* mem_addr, 
    __mmask64 a
:Param ETypes:
    MASK mem_addr, 
    MASK a

.. code-block:: C

    void _store_mask64(__mmask64* mem_addr, __mmask64 a);

.. admonition:: Intel Description

    Store 64-bit mask from "a" into memory.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[mem_addr+63:mem_addr] := a[63:0]
        	

_store_mask8
------------
:Tech: AVX-512
:Category: Store
:Header: immintrin.h
:Searchable: AVX-512-Store-Other
:Return Type: void
:Param Types:
    __mmask8* mem_addr, 
    __mmask8 a
:Param ETypes:
    MASK mem_addr, 
    MASK a

.. code-block:: C

    void _store_mask8(__mmask8* mem_addr, __mmask8 a);

.. admonition:: Intel Description

    Store 8-bit mask from "a" into memory.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[mem_addr+7:mem_addr] := a[7:0]
        	

_store_mask16
-------------
:Tech: AVX-512
:Category: Store
:Header: immintrin.h
:Searchable: AVX-512-Store-Other
:Return Type: void
:Param Types:
    __mmask16* mem_addr, 
    __mmask16 a
:Param ETypes:
    MASK mem_addr, 
    MASK a

.. code-block:: C

    void _store_mask16(__mmask16* mem_addr, __mmask16 a);

.. admonition:: Intel Description

    Store 16-bit mask from "a" into memory.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        MEM[mem_addr+15:mem_addr] := a[15:0]
        	

