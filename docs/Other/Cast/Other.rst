Other-Cast-Other
================

_castf32_u32
------------
:Tech: Other
:Category: Cast
:Header: immintrin.h
:Searchable: Other-Cast-Other
:Return Type: unsigned __int32
:Param Types:
    float a
:Param ETypes:
    FP32 a

.. code-block:: C

    unsigned __int32 _castf32_u32(float a);

.. admonition:: Intel Description

    Cast from type float to type unsigned __int32 without conversion.
    	This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

_castf64_u64
------------
:Tech: Other
:Category: Cast
:Header: immintrin.h
:Searchable: Other-Cast-Other
:Return Type: unsigned __int64
:Param Types:
    double a
:Param ETypes:
    FP64 a

.. code-block:: C

    unsigned __int64 _castf64_u64(double a);

.. admonition:: Intel Description

    Cast from type double to type unsigned __int64 without conversion.
    	This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

_castu32_f32
------------
:Tech: Other
:Category: Cast
:Header: immintrin.h
:Searchable: Other-Cast-Other
:Return Type: float
:Param Types:
    unsigned __int32 a
:Param ETypes:
    UI32 a

.. code-block:: C

    float _castu32_f32(unsigned __int32 a);

.. admonition:: Intel Description

    Cast from type unsigned __int32 to type float without conversion.
    	This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

_castu64_f64
------------
:Tech: Other
:Category: Cast
:Header: immintrin.h
:Searchable: Other-Cast-Other
:Return Type: double
:Param Types:
    unsigned __int64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    double _castu64_f64(unsigned __int64 a);

.. admonition:: Intel Description

    Cast from type unsigned __int64 to type double without conversion.
    	This intrinsic is only used for compilation and does not generate any instructions, thus it has zero latency.

