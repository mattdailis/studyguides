
# Table of Contents

1.  [Memory management](#orgd8c83d9)
    1.  [Dynamic loading](#orgc5a9730)
    2.  [Dynamic linking](#org70fdfde)
    3.  [Dynamic Storage-allocation](#org80cdbe9)
        1.  [First-fit](#org44dc247)
        2.  [Best-fit](#orgc00fe28)
        3.  [Worst-fit](#orged874ba)
    4.  [External Fragmentation:](#orge68167e)
    5.  [Internal Fragmentation:](#org1c3076e)
    6.  [Segmentation](#orgfc382ee)
    7.  [Memory map file (mmap)](#org213f9ab)
2.  [File Systems Exercises](#orgcca83c9)

[2](#orgcca83c9)


<a id="orgd8c83d9"></a>

# Memory management


<a id="orgc5a9730"></a>

## Dynamic loading

-   Not the same thing as Dynamic Linking

Routines are not loaded until they are called.


<a id="org70fdfde"></a>

## Dynamic linking

-   Linking postponed until execution time. (Like .jar files)
-   Typically have a "stub" that is later (dynamically) replaced by the address of the routine to be run
-   Known as "Shared libraries"


<a id="org80cdbe9"></a>

## Dynamic Storage-allocation


<a id="org44dc247"></a>

### First-fit

Very fast, allocate the first hole that is big enough


<a id="orgc00fe28"></a>

### Best-fit


<a id="orged874ba"></a>

### Worst-fit

Allocate largest hole

P1: 5k
P2: 10k
P3: 15k

2k, 4k, 9k
p1, p2, p3


<a id="orge68167e"></a>

## External Fragmentation:

-   Regions of memory allocated with spaces inbetween
-   Total memory exists to satisfy request, but it is not continuous


<a id="org1c3076e"></a>

## Internal Fragmentation:

-   Too much space is given to each process
-   To fix, reduce the block size


<a id="orgfc382ee"></a>

## Segmentation

-   A **Segment** is a logical unit such as:
    -   Main program
    -   procedure
    -   function etc&#x2026;
-   **Segmentation** is a memory management scheme
-   <span class="underline">Logical address</span> consists of tuple
    -   < segment-number, offset >


<a id="org213f9ab"></a>

## Memory map file (mmap)

You can read/write/close a file
OR: you can map a file to memory, and use that memory to access the file.


<a id="orgcca83c9"></a>

# File Systems Exercises

<span class="timestamp-wrapper"><span class="timestamp">&lt;2018-04-10 Tue&gt;</span></span>

[The pdf of the exercise](os_materials/example-4b-filesystem-v1d.pdf)

Magic number identifies the file system type (must be in memory)

