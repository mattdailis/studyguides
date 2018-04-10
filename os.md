<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. OS Notes and stuff</a>
<ul>
<li><a href="#sec-1-1">1.1. Memory management</a>
<ul>
<li><a href="#sec-1-1-1">1.1.1. Dynamic loading</a></li>
<li><a href="#sec-1-1-2">1.1.2. Dynamic linking</a></li>
<li><a href="#sec-1-1-3">1.1.3. Dynamic Storage-allocation</a></li>
<li><a href="#sec-1-1-4">1.1.4. External Fragmentation:</a></li>
<li><a href="#sec-1-1-5">1.1.5. Internal Fragmentation:</a></li>
<li><a href="#sec-1-1-6">1.1.6. Segmentation</a></li>
<li><a href="#sec-1-1-7">1.1.7. Memory map file (mmap)</a></li>
</ul>
</li>
<li><a href="#sec-1-2">1.2. File Systems Exercises</a></li>
</ul>
</li>
</ul>
</div>
</div>


# OS Notes and stuff<a id="sec-1" name="sec-1"></a>

## Memory management<a id="sec-1-1" name="sec-1-1"></a>

### Dynamic loading<a id="sec-1-1-1" name="sec-1-1-1"></a>

-   Not the same thing as Dynamic Linking

Routines are not loaded until they are called.

### Dynamic linking<a id="sec-1-1-2" name="sec-1-1-2"></a>

-   Linking postponed until execution time. (Like .jar files)
-   Typically have a "stub" that is later (dynamically) replaced by the address of the routine to be run
-   Known as "Shared libraries"

### Dynamic Storage-allocation<a id="sec-1-1-3" name="sec-1-1-3"></a>

1.  First-fit

    Very fast, allocate the first hole that is big enough

2.  Best-fit

3.  Worst-fit

    Allocate largest hole
    
    P1: 5k
    P2: 10k
    P3: 15k
    
    2k, 4k, 9k
    p1, p2, p3

### External Fragmentation:<a id="sec-1-1-4" name="sec-1-1-4"></a>

-   Regions of memory allocated with spaces inbetween
-   Total memory exists to satisfy request, but it is not continuous

### Internal Fragmentation:<a id="sec-1-1-5" name="sec-1-1-5"></a>

-   Too much space is given to each process
-   To fix, reduce the block size

### Segmentation<a id="sec-1-1-6" name="sec-1-1-6"></a>

-   A **Segment** is a logical unit such as:
    -   Main program
    -   procedure
    -   function etc&#x2026;
-   **Segmentation** is a memory management scheme
-   <span class="underline">Logical address</span> consists of tuple
    -   < segment-number, offset >

### Memory map file (mmap)<a id="sec-1-1-7" name="sec-1-1-7"></a>

You can read/write/close a file
OR: you can map a file to memory, and use that memory to access the file.

## File Systems Exercises<a id="sec-1-2" name="sec-1-2"></a>

<span class="timestamp-wrapper"><span class="timestamp">&lt;2018-04-10 Tue&gt;</span></span>

[The pdf of the exercise](os_materials/example-4b-filesystem-v1d.pdf)

Magic number identifies the file system type (must be in memory)