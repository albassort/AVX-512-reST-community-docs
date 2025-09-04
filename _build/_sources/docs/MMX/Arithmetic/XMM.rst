MMX-Arithmetic-XMM
==================

_mm_add_pi8
-----------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _mm_add_pi8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Add packed 8-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := a[i+7:i] + b[i+7:i]
        ENDFOR
        	

_mm_add_pi16
------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m64 _mm_add_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Add packed 16-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := a[i+15:i] + b[i+15:i]
        ENDFOR
        	

_mm_add_pi32
------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m64 _mm_add_pi32(__m64 a, __m64 b);

.. admonition:: Intel Description

    Add packed 32-bit integers in "a" and "b", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	dst[i+31:i] := a[i+31:i] + b[i+31:i]
        ENDFOR
        	

_mm_adds_pi8
------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m64 _mm_adds_pi8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Add packed signed 8-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := Saturate8( a[i+7:i] + b[i+7:i] )
        ENDFOR
        	

_mm_adds_pi16
-------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_adds_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Add packed signed 16-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := Saturate16( a[i+15:i] + b[i+15:i] )
        ENDFOR
        	

_mm_adds_pu8
------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _mm_adds_pu8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Add packed unsigned 8-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := SaturateU8( a[i+7:i] + b[i+7:i] )
        ENDFOR
        	

_mm_adds_pu16
-------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m64 _mm_adds_pu16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Add packed unsigned 16-bit integers in "a" and "b" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := SaturateU16( a[i+15:i] + b[i+15:i] )
        ENDFOR
        	

_mm_sub_pi8
-----------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _mm_sub_pi8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Subtract packed 8-bit integers in "b" from packed 8-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := a[i+7:i] - b[i+7:i]
        ENDFOR
        	

_mm_sub_pi16
------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m64 _mm_sub_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Subtract packed 16-bit integers in "b" from packed 16-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := a[i+15:i] - b[i+15:i]
        ENDFOR
        	

_mm_sub_pi32
------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI32 a, 
    UI32 b

.. code-block:: C

    __m64 _mm_sub_pi32(__m64 a, __m64 b);

.. admonition:: Intel Description

    Subtract packed 32-bit integers in "b" from packed 32-bit integers in "a", and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	dst[i+31:i] := a[i+31:i] - b[i+31:i]
        ENDFOR
        	

_mm_subs_pi8
------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI8 a, 
    SI8 b

.. code-block:: C

    __m64 _mm_subs_pi8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Subtract packed signed 8-bit integers in "b" from packed 8-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := Saturate8(a[i+7:i] - b[i+7:i])	
        ENDFOR
        	

_mm_subs_pi16
-------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_subs_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Subtract packed signed 16-bit integers in "b" from packed 16-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := Saturate16(a[i+15:i] - b[i+15:i])
        ENDFOR
        	

_mm_subs_pu8
------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI8 a, 
    UI8 b

.. code-block:: C

    __m64 _mm_subs_pu8(__m64 a, __m64 b);

.. admonition:: Intel Description

    Subtract packed unsigned 8-bit integers in "b" from packed unsigned 8-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 7
        	i := j*8
        	dst[i+7:i] := SaturateU8(a[i+7:i] - b[i+7:i])	
        ENDFOR
        	

_mm_subs_pu16
-------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m64 _mm_subs_pu16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Subtract packed unsigned 16-bit integers in "b" from packed unsigned 16-bit integers in "a" using saturation, and store the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	dst[i+15:i] := SaturateU16(a[i+15:i] - b[i+15:i])	
        ENDFOR
        	

_mm_madd_pi16
-------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_madd_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Multiply packed signed 16-bit integers in "a" and "b", producing intermediate signed 32-bit integers. Horizontally add adjacent pairs of intermediate 32-bit integers, and pack the results in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 1
        	i := j*32
        	dst[i+31:i] := SignExtend32(a[i+31:i+16]*b[i+31:i+16]) + SignExtend32(a[i+15:i]*b[i+15:i])
        ENDFOR
        	

_mm_mulhi_pi16
--------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    SI16 a, 
    SI16 b

.. code-block:: C

    __m64 _mm_mulhi_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Multiply the packed signed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the high 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	tmp[31:0] := SignExtend32(a[i+15:i]) * SignExtend32(b[i+15:i])
        	dst[i+15:i] := tmp[31:16]
        ENDFOR
        	

_mm_mullo_pi16
--------------
:Tech: MMX
:Category: Arithmetic
:Header: mmintrin.h
:Searchable: MMX-Arithmetic-XMM
:Register: XMM 128 bit
:Return Type: __m64
:Param Types:
    __m64 a, 
    __m64 b
:Param ETypes:
    UI16 a, 
    UI16 b

.. code-block:: C

    __m64 _mm_mullo_pi16(__m64 a, __m64 b);

.. admonition:: Intel Description

    Multiply the packed 16-bit integers in "a" and "b", producing intermediate 32-bit integers, and store the low 16 bits of the intermediate integers in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FOR j := 0 to 3
        	i := j*16
        	tmp[31:0] := a[i+15:i] * b[i+15:i]
        	dst[i+15:i] := tmp[15:0]
        ENDFOR
        	

