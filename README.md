# Unix-like kernel for RISC-V 64IMA

A microkernel written from scratch in C++ and assembly, targeting the
**RISC-V (RV64IMA)** architecture and running under **QEMU**. The project
covers core operating systems concepts at the lowest level: memory
management, threads, CPU scheduling, synchronization, and interrupt
handling — with no standard library, direct register manipulation, a custom
interrupt routine, and manual memory management.

## What it does

- **Memory management** — a custom allocator (`MemoryAllocator`) that manages
  heap memory with continuous allocation (**First Fit**): splitting,
  allocating, and merging free blocks, without a single call to
  `malloc`/`new` from the standard library.
- **Threads** — a custom in-kernel thread implementation: creation,
  termination, and switching between threads (`thread_create`,
  `thread_exit`, `thread_dispatch`), including manually building the initial
  context of a new thread and saving/restoring CPU registers in assembly.
- **Scheduling** — a `Scheduler` implementing **Round Robin**: each thread
  runs for a fixed time quantum before being preempted on a timer interrupt
  and moved to the back of the ready queue.
- **Synchronization** — classic counting semaphores (`sem_open/close/wait/signal`)
  with thread blocking and wakeup.
- **Asynchronous (preemptive) context switching** — CPU time-sharing between
  threads driven by hardware timer interrupts, thread sleep/wakeup
  (`time_sleep`), and console I/O (`getc`/`putc`) driven by keyboard
  interrupts.
- **Interrupt routine** — a single central assembly routine acting as the
  only entry point between user and kernel mode, saving the full register
  set and dispatching to the appropriate syscall/interrupt handler.

The kernel itself is currently **not preemptive** — context switches happen
at controlled points, not at arbitrary points during kernel execution.

## Tech stack

`C++` · `RISC-V assembly` · `QEMU` · `GCC (riscv64 toolchain)` · `GDB` · `Make`

## Running it

The project is compiled with a RISC-V `gcc` toolchain and run in a **QEMU**
RISC-V emulator, via the provided `Makefile`:

```bash
make qemu       # build + run in the emulator
make qemu-gdb   # build + run in debug mode (GDB remote)
make clean      # remove build artifacts
```

It also runs from CLion (the "Make" target, choosing the right goal), and
supports remote debugging via `gdb` (QEMU prints the port, e.g.
`localhost:26000`).

## Next steps

The project is functional, but I plan to keep
improving it:

- **Smarter scheduler** — extending Round Robin with priorities or moving to
  a Multilevel Feedback Queue for better CPU time distribution.
- **Better memory allocator** — adding Best Fit and/or a Buddy System
  algorithm alongside the existing First Fit, and comparing fragmentation
  and allocation speed.
- **Kernel preemptibility** — exploring limited preemption inside the kernel
  itself, with proper synchronization of critical sections.
