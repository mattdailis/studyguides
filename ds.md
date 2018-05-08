---
title: Distributed Systems Study Guide
comment: Exam will be on May 30
---
<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Synchronization and Communication</a>
<ul>
<li><a href="#sec-1-1">1.1. Processes and threads</a></li>
<li><a href="#sec-1-2">1.2. Concurrency</a></li>
</ul>
</li>
</ul>
</div>
</div>



# Synchronization and Communication<a id="sec-1" name="sec-1"></a>

A **Distributed system** consists of physically distributed 
resources (hardware and software) which are connected via 
a network and are able to collaborate to accomplish a given
task.

## Processes and threads<a id="sec-1-1" name="sec-1-1"></a>

A process can consist of one execution flow (monothread) or 
more (multithread).

Each thread has its own:
-   Program counter / Registers
-   Stack
-   Status (executing, ready, blocked)

Threads of the same process share:
-   a memory space.
-   global variables
-   open files
-   child processes
-   timers
-   signals and semaphores
-   statistics

## Concurrency<a id="sec-1-2" name="sec-1-2"></a>

Separate a step of the program that can be modularized and run
parallel and independent from the others.

When one is blocked, the others can continue executing.

<object data="{{ 'dsmaterials/slides/Unit 2a - Synchronization and Communication.pdf#page=9' | absulute<sub>url</sub> }}" type="application/pdf" width="700px" height="525px"> <embed src="{{  'dsmaterials/slides/Unit 2a - Synchronization and Communication.pdf#page=9' | absulute<sub>url</sub> }}"> <p>This browser does not support PDFs. Please download the PDF to view it: <a href="{{ 'dsmaterials/slides/Unit 2a - Synchronization and Communication.pdf#page=9' | absolute<sub>url</sub>}}">Download PDF</a>.</p>  </embed> </object>