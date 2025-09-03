## Notes
### unspecified "dst"
In the following example of the intrinsic `_mm_sm4rnds4_epi32(__m128i __A, __m128i __B`

```rst

.. code-block:: C

    __m128i _mm_sm4rnds4_epi32(__m128i __A, __m128i __B);

This intrinisc performs four rounds of SM4 encryption. The intrinisc operates on independent 128-bit lanes. The calculated results are stored in "dst". 
```
We see that, there is no parameter "dst" but yet the intel description implies that such a thing does exist. In this case, the return variable, the __mm128i, is the "dst".


## Prefix's
### _mm_
XMM, operates on 128 bit registers

### _mm256_
YMM, operates on 256 bit registers

### _mm512_
ZMM, operates on 512 bit registers

## Midfix's
### Masks, Maskz
- Where the mask is on, the given lanes of the operation are ignored, thus ignoring the given lanes specified. 

- Maskz, like Masks, but it outputs 0 for the mask rather than the previous integer


### StoreU
This is the primary way of getting the output of a SIMD instruction to an array specifically. It points to an allocated memory space

### Scatter
This is the primary way of getting the output of a SIMD operation wherein the output is **non-sequential**, as in, it goes to arbitrary spots in memory

### Reduce

Applies the given operation left -> right

### Gather

Opposite of scatter --- Gathers from memory addresses to into the register

### Insert / Extract

Like a scalar version of scatter; with directionality

## Sufix's 
### epi
Extened Packed Integer

### EPIXXX
xxx indicates the size of the individual input data. Eg epi32 32 bit integers make up the buffer

### PS, PH, PD
These are float types
PS = Precision Single (32 bit)
PH = Precision Half (16 bit)
PD = Precision Double (64 bit)


### SS, SH, SD
These are float types
SS = Precision Single (32 bit)
SH = Precision Half (16 bit)
SD = Precision Double (64 bit)

- NOTE, specifically, this only does an operation on a single one of these integers. Most useful for when you're doing intermediate operations. E.g you just got done using them as PDs but now you need to use to simply add two of them, so you'll use this.


