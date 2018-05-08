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
<li><a href="#sec-1-3">1.3. Synchonization mechanisms</a></li>
<li><a href="#sec-1-4">1.4. Communication mechanisms</a></li>
<li><a href="#sec-1-5">1.5. POSIX</a></li>
</ul>
</li>
<li><a href="#sec-2">2. Message Passing</a></li>
<li><a href="#sec-3">3. Client Server paradigm</a></li>
<li><a href="#sec-4">4. Communication with sockets</a></li>
<li><a href="#sec-5">5. Distributed coordination</a></li>
<li><a href="#sec-6">6. Remote Procedure Calls</a></li>
<li><a href="#sec-7">7. SUN RPCs</a></li>
<li><a href="#sec-8">8. Web services and gSOAP</a></li>
<li><a href="#sec-9">9. Distributed file systems</a></li>
<li><a href="#sec-10">10. Fault Tolerance</a></li>
</ul>
</div>
</div>

# Synchronization and Communication

A **Distributed system** consists of physically distributed 
resources (hardware and software) which are connected via 
a network and are able to collaborate to accomplish a given
task.

## Processes and threads

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

## Concurrency

Separate a step of the program that can be modularized and run
parallel and independent from the others.

When one is blocked, the others can continue executing.

## Synchonization mechanisms

## Communication mechanisms

## POSIX

# Message Passing

# Client Server paradigm

# Communication with sockets

# Distributed coordination

# Remote Procedure Calls

# SUN RPCs

# Web services and gSOAP

# Distributed file systems

# Fault Tolerance
