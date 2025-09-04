Other-General Support-MMX
=========================

_m_prefetchit0
--------------
:Tech: Other
:Category: General Support
:Header: x86gprintrin.h
:Searchable: Other-General Support-MMX
:Register: MMX 64 bit
:Return Type: void
:Param Types:
    const void* __P
:Param ETypes:
    UI8 __P

.. code-block:: C

    void _m_prefetchit0(const void* __P);

.. admonition:: Intel Description

    Loads an instruction sequence containing the specified memory address into all level cache.

_m_prefetchit1
--------------
:Tech: Other
:Category: General Support
:Header: x86gprintrin.h
:Searchable: Other-General Support-MMX
:Register: MMX 64 bit
:Return Type: void
:Param Types:
    const void* __P
:Param ETypes:
    UI8 __P

.. code-block:: C

    void _m_prefetchit1(const void* __P);

.. admonition:: Intel Description

    Loads an instruction sequence containing the specified memory address into all but the first-level cache.

