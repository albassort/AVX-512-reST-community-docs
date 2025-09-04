Other-General Support-Other
===========================

_readfsbase_u32
---------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned int

.. code-block:: C

    

.. admonition:: Intel Description

    Read the FS segment base register and store the 32-bit result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[31:0] := FS_Segment_Base_Register
        dst[63:32] := 0
        	

_readfsbase_u64
---------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned __int64

.. code-block:: C

    

.. admonition:: Intel Description

    Read the FS segment base register and store the 64-bit result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[63:0] := FS_Segment_Base_Register
        	

_readgsbase_u32
---------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned int

.. code-block:: C

    

.. admonition:: Intel Description

    Read the GS segment base register and store the 32-bit result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[31:0] := GS_Segment_Base_Register
        dst[63:32] := 0
        	

_readgsbase_u64
---------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned __int64

.. code-block:: C

    

.. admonition:: Intel Description

    Read the GS segment base register and store the 64-bit result in "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[63:0] := GS_Segment_Base_Register
        	

_writefsbase_u32
----------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    unsigned int a
:Param ETypes:
    UI32 a

.. code-block:: C

    void _writefsbase_u32(unsigned int a);

.. admonition:: Intel Description

    Write the unsigned 32-bit integer "a" to the FS segment base register.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FS_Segment_Base_Register[31:0] := a[31:0]
        FS_Segment_Base_Register[63:32] := 0
        	

_writefsbase_u64
----------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    unsigned __int64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    void _writefsbase_u64(unsigned __int64 a);

.. admonition:: Intel Description

    Write the unsigned 64-bit integer "a" to the FS segment base register.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        FS_Segment_Base_Register[63:0] := a[63:0]
        	

_writegsbase_u32
----------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    unsigned int a
:Param ETypes:
    UI32 a

.. code-block:: C

    void _writegsbase_u32(unsigned int a);

.. admonition:: Intel Description

    Write the unsigned 32-bit integer "a" to the GS segment base register.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        GS_Segment_Base_Register[31:0] := a[31:0]
        GS_Segment_Base_Register[63:32] := 0
        	

_writegsbase_u64
----------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    unsigned __int64 a
:Param ETypes:
    UI64 a

.. code-block:: C

    void _writegsbase_u64(unsigned __int64 a);

.. admonition:: Intel Description

    Write the unsigned 64-bit integer "a" to the GS segment base register.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        GS_Segment_Base_Register[63:0] := a[63:0]
        	

_hreset
-------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    int __eax
:Param ETypes:
    SI32 __eax

.. code-block:: C

    void _hreset(int __eax);

.. admonition:: Intel Description

    Provides a hint to the processor to selectively reset the prediction history of the current logical processor specified by a signed 32-bit integer "__eax".

_allow_cpu_features
-------------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    unsigned __int64 a
:Param ETypes:
    IMM a

.. code-block:: C

    void _allow_cpu_features(unsigned __int64 a);

.. admonition:: Intel Description

    Treat the processor-specific feature(s) specified in "a" as available. Multiple features may be OR'd together. See the valid feature flags below:

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        _FEATURE_GENERIC_IA32
        _FEATURE_FPU
        _FEATURE_CMOV
        _FEATURE_MMX
        _FEATURE_FXSAVE
        _FEATURE_SSE
        _FEATURE_SSE2
        _FEATURE_SSE3
        _FEATURE_SSSE3
        _FEATURE_SSE4_1
        _FEATURE_SSE4_2
        _FEATURE_MOVBE
        _FEATURE_POPCNT
        _FEATURE_PCLMULQDQ
        _FEATURE_AES
        _FEATURE_F16C
        _FEATURE_AVX
        _FEATURE_RDRND
        _FEATURE_FMA
        _FEATURE_BMI
        _FEATURE_LZCNT
        _FEATURE_HLE
        _FEATURE_RTM
        _FEATURE_AVX2
        _FEATURE_KNCNI
        _FEATURE_AVX512F
        _FEATURE_ADX
        _FEATURE_RDSEED
        _FEATURE_AVX512ER
        _FEATURE_AVX512PF
        _FEATURE_AVX512CD
        _FEATURE_SHA
        _FEATURE_MPX
        _FEATURE_AVX512BW
        _FEATURE_AVX512VL
        _FEATURE_AVX512VBMI
        _FEATURE_AVX512_4FMAPS
        _FEATURE_AVX512_4VNNIW
        _FEATURE_AVX512_VPOPCNTDQ
        _FEATURE_AVX512_BITALG
        _FEATURE_AVX512_VBMI2
        _FEATURE_GFNI
        _FEATURE_VAES
        _FEATURE_VPCLMULQDQ
        _FEATURE_AVX512_VNNI
        _FEATURE_CLWB
        _FEATURE_RDPID
        _FEATURE_IBT
        _FEATURE_SHSTK
        _FEATURE_SGX
        _FEATURE_WBNOINVD
        _FEATURE_PCONFIG
        _FEATURE_AXV512_4VNNIB
        _FEATURE_AXV512_4FMAPH
        _FEATURE_AXV512_BITALG2
        _FEATURE_AXV512_VP2INTERSECT
        	

_may_i_use_cpu_feature
----------------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: int
:Param Types:
    unsigned __int64 a
:Param ETypes:
    IMM a

.. code-block:: C

    int _may_i_use_cpu_feature(unsigned __int64 a);

.. admonition:: Intel Description

    Dynamically query the processor to determine if the processor-specific feature(s) specified in "a" are available, and return true or false (1 or 0) if the set of features is available. Multiple features may be OR'd together. This function is limited to bitmask values in the first 'page' of the libirc cpu-id information. This intrinsic does not check the processor vendor. See the valid feature flags below:

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        _FEATURE_GENERIC_IA32
        _FEATURE_FPU
        _FEATURE_CMOV
        _FEATURE_MMX
        _FEATURE_FXSAVE
        _FEATURE_SSE
        _FEATURE_SSE2
        _FEATURE_SSE3
        _FEATURE_SSSE3
        _FEATURE_SSE4_1
        _FEATURE_SSE4_2
        _FEATURE_MOVBE
        _FEATURE_POPCNT
        _FEATURE_PCLMULQDQ
        _FEATURE_AES
        _FEATURE_F16C
        _FEATURE_AVX
        _FEATURE_RDRND
        _FEATURE_FMA
        _FEATURE_BMI
        _FEATURE_LZCNT
        _FEATURE_HLE
        _FEATURE_RTM
        _FEATURE_AVX2
        _FEATURE_KNCNI
        _FEATURE_AVX512F
        _FEATURE_ADX
        _FEATURE_RDSEED
        _FEATURE_AVX512ER
        _FEATURE_AVX512PF
        _FEATURE_AVX512CD
        _FEATURE_SHA
        _FEATURE_MPX
        _FEATURE_AVX512BW
        _FEATURE_AVX512VL
        _FEATURE_AVX512VBMI
        _FEATURE_AVX512_4FMAPS
        _FEATURE_AVX512_4VNNIW
        _FEATURE_AVX512_VPOPCNTDQ
        _FEATURE_AVX512_BITALG
        _FEATURE_AVX512_VBMI2
        _FEATURE_GFNI
        _FEATURE_VAES
        _FEATURE_VPCLMULQDQ
        _FEATURE_AVX512_VNNI
        _FEATURE_CLWB
        _FEATURE_RDPID
        _FEATURE_IBT
        _FEATURE_SHSTK
        _FEATURE_SGX
        _FEATURE_WBNOINVD
        _FEATURE_PCONFIG
        _FEATURE_AXV512_4VNNIB
        _FEATURE_AXV512_4FMAPH
        _FEATURE_AXV512_BITALG2
        _FEATURE_AXV512_VP2INTERSECT
        _FEATURE_AXV512_FP16
        	

_may_i_use_cpu_feature_ext
--------------------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: int
:Param Types:
    unsigned __int64 a, 
    unsigned page
:Param ETypes:
    IMM a, 
    IMM page

.. code-block:: C

    int _may_i_use_cpu_feature_ext(unsigned __int64 a,
                                   unsigned page)

.. admonition:: Intel Description

    Dynamically query the processor to determine if the processor-specific feature(s) specified in "a" are available, and return true or false (1 or 0) if the set of features is available. Multiple features may be OR'd together. This works identically to the previous variant, except it also accepts a 'page' index that permits checking features on the 2nd page of the libirc information. When provided with a '0' in the 'page' parameter, this works identically to _may_i_use_cpu_feature. This intrinsic does not check the processor vendor. See the valid feature flags on the 2nd page below: (provided with a '1' in the 'page' parameter)

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        _FEATURE_CLDEMOTE
        _FEATURE_MOVDIRI
        _FEATURE_MOVDIR64B
        _FEATURE_WAITPKG
        _FEATURE_AVX512_Bf16
        _FEATURE_ENQCMD
        _FEATURE_AVX_VNNI
        _FEATURE_AMX_TILE
        _FEATURE_AMX_INT8
        _FEATURE_AMX_BF16
        _FEATURE_KL
        _FEATURE_WIDE_KL
        _FEATURE_HRESET
        _FEATURE_UINTR
        _FEATURE_PREFETCHI
        _FEATURE_AVXVNNIINT8
        _FEATURE_CMPCCXADD
        _FEATURE_AVXIFMA
        _FEATURE_AVXNECONVERT
        _FEATURE_RAOINT
        _FEATURE_AMX_FP16
        _FEATURE_AMX_COMPLEX
        _FEATURE_SHA512
        _FEATURE_SM3
        _FEATURE_SM4
        _FEATURE_AVXVNNIINT16
        _FEATURE_USERMSR
        _FEATURE_AVX10_1_256
        _FEATURE_AVX10_1_512
        _FEATURE_APXF
        _FEATURE_MSRLIST
        _FEATURE_WRMSRNS
        _FEATURE_PBNDKB
        	

_may_i_use_cpu_feature_str
--------------------------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: int

.. code-block:: C

    int _may_i_use_cpu_feature_str(string literal feature, ...);

.. admonition:: Intel Description

    Dynamically query the processor to determine if the processor-specific feature(s) specified a series of compile-time string literals in "feature, ..." are available, and return true or false (1 or 0) if the set of features is available. These feature names are converted to a bitmask and uses the same infrastructure as _may_i_use_cpu_feature_ext to validate it. The behavior is the same as the previous variants. This intrinsic does not check the processor vendor. Supported string literals are one-to-one corresponding in the "Operation" sections of _may_i_use_cpu_feature and _may_i_use_cpu_feature_ext. Example string literals are "avx2", "bmi", "avx512fp16", "amx-int8"...

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        
        	

_rdpmc
------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: __int64
:Param Types:
    int a
:Param ETypes:
    UI32 a

.. code-block:: C

    __int64 _rdpmc(int a);

.. admonition:: Intel Description

    Read the Performance Monitor Counter (PMC) specified by "a", and store up to 64-bits in "dst". The width of performance counters is implementation specific.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[63:0] := ReadPMC(a)
        	

_rdpid_u32
----------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned int

.. code-block:: C

    unsigned int _rdpid_u32(void );

.. admonition:: Intel Description

    Copy the IA32_TSC_AUX MSR (signature value) into "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[31:0] := IA32_TSC_AUX[31:0]
        	

__rdtscp
--------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned __int64
:Param Types:
    unsigned int * mem_addr
:Param ETypes:
    UI32 mem_addr

.. code-block:: C

    unsigned __int64 __rdtscp(unsigned int * mem_addr);

.. admonition:: Intel Description

    Copy the current 64-bit value of the processor's time-stamp counter into "dst", and store the IA32_TSC_AUX MSR (signature value) into memory at "mem_addr".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[63:0] := TimeStampCounter
        MEM[mem_addr+31:mem_addr] := IA32_TSC_AUX[31:0]
        	

_xabort
-------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    const unsigned int imm8
:Param ETypes:
    IMM imm8

.. code-block:: C

    void _xabort(const unsigned int imm8);

.. admonition:: Intel Description

    Force an RTM abort. The EAX register is updated to reflect an XABORT instruction caused the abort, and the "imm8" parameter will be provided in bits [31:24] of EAX.
    	Following an RTM abort, the logical processor resumes execution at the fallback address computed through the outermost XBEGIN instruction.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        IF RTM_ACTIVE == 0
        	// nop
        ELSE
        	// restore architectural register state
        	// discard memory updates performed in transaction
        	// update EAX with status and imm8 value
        	eax[31:24] := imm8[7:0]
        	RTM_NEST_COUNT := 0
        	RTM_ACTIVE := 0
        	IF _64_BIT_MODE
        		RIP := fallbackRIP
        	ELSE
        		EIP := fallbackEIP
        	FI
        FI
        	

_xbegin
-------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned int

.. code-block:: C

    unsigned int _xbegin(void );

.. admonition:: Intel Description

    Specify the start of an RTM code region. 
    	If the logical processor was not already in transactional execution, then this call causes the logical processor to transition into transactional execution. 
    	On an RTM abort, the logical processor discards all architectural register and memory updates performed during the RTM execution, restores architectural state, and starts execution beginning at the fallback address computed from the outermost XBEGIN instruction. Return status of ~0 (0xFFFF) if continuing inside transaction; all other codes are aborts.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        IF RTM_NEST_COUNT < MAX_RTM_NEST_COUNT
        	RTM_NEST_COUNT := RTM_NEST_COUNT + 1
        	IF RTM_NEST_COUNT == 1
        		IF _64_BIT_MODE
        			fallbackRIP := RIP
        		ELSE IF _32_BIT_MODE
        			fallbackEIP := EIP
        		FI
        		
        		RTM_ACTIVE := 1
        		// enter RTM execution, record register state, start tracking memory state
        	FI
        ELSE
        	// RTM abort (see _xabort)
        FI
        	

_xend
-----
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void

.. code-block:: C

    void _xend(void );

.. admonition:: Intel Description

    Specify the end of an RTM code region.
    	If this corresponds to the outermost scope, the logical processor will attempt to commit the logical processor state atomically. 
    	If the commit fails, the logical processor will perform an RTM abort.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        IF RTM_ACTIVE == 1
        	RTM_NEST_COUNT := RTM_NEST_COUNT - 1
        	IF RTM_NEST_COUNT == 0
        		// try to commit transaction
        		IF FAIL_TO_COMMIT_TRANSACTION
        			// RTM abort (see _xabort)
        		ELSE
        			RTM_ACTIVE := 0
        		FI
        	FI
        FI
        	

_xtest
------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned char

.. code-block:: C

    unsigned char _xtest(void );

.. admonition:: Intel Description

    Query the transactional execution status, return 1 if inside a transactionally executing RTM or HLE region, and return 0 otherwise.

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        IF (RTM_ACTIVE == 1 OR HLE_ACTIVE == 1)
        	dst := 1
        ELSE
        	dst := 0
        FI
        	

_serialize
----------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void

.. code-block:: C

    

.. admonition:: Intel Description

    Serialize instruction execution, ensuring all modifications to flags, registers, and memory by previous instructions are completed before the next instruction is fetched.

_rdtsc
------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: __int64

.. code-block:: C

    __int64 _rdtsc(void );

.. admonition:: Intel Description

    Copy the current 64-bit value of the processor's time-stamp counter into "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        dst[63:0] := TimeStampCounter
        	

_clui
-----
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void

.. code-block:: C

    void _clui(void );

.. admonition:: Intel Description

    Clear the user interrupt flag (UIF).

_senduipi
---------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    unsigned __int64 __a
:Param ETypes:
    UI64 __a

.. code-block:: C

    void _senduipi(unsigned __int64 __a);

.. admonition:: Intel Description

    Send user interprocessor interrupts specified in unsigned 64-bit integer "__a".

_stui
-----
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: void

.. code-block:: C

    void _stui(void );

.. admonition:: Intel Description

    Sets the user interrupt flag (UIF).

_testui
-------
:Tech: Other
:Category: General Support
:Header: immintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned char

.. code-block:: C

    unsigned char _testui(void );

.. admonition:: Intel Description

    Store the current user interrupt flag (UIF) in unsigned 8-bit integer "dst".

_urdmsr
-------
:Tech: Other
:Category: General Support
:Header: x86gprintrin.h
:Searchable: Other-General Support-Other
:Return Type: unsigned __int64
:Param Types:
    unsigned __int64 __A
:Param ETypes:
    UI64 __A

.. code-block:: C

    unsigned __int64 _urdmsr(unsigned __int64 __A);

.. admonition:: Intel Description

    Reads the contents of a 64-bit MSR specified in "__A" into "dst".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        DEST := MSR[__A]
        	

_uwrmsr
-------
:Tech: Other
:Category: General Support
:Header: x86gprintrin.h
:Searchable: Other-General Support-Other
:Return Type: void
:Param Types:
    unsigned __int64 __A, 
    unsigned __int64 __B
:Param ETypes:
    UI64 __A, 
    UI64 __B

.. code-block:: C

    void _uwrmsr(unsigned __int64 __A, unsigned __int64 __B);

.. admonition:: Intel Description

    Writes the contents of "__B" into the 64-bit MSR specified in "__A".

.. admonition:: Intel Implementation Psudeo-Code

    .. code-block:: text

        MSR[__A] := __B
        	

