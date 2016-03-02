# Chapter 3 Review Questions

Name: _Shashank Namala_

Course: _5143 Operating Systems_

Date: _02 Mar 2016_


#### 1.	What is swapping and what is its purpose?

To take a resource away from a process. One such resource is the CPU, and in fact preempt often means to move a process from RUNNING state to READY state. The process involuntarily gives up the CPU. When a higher priority process becomes dispatchable, the kernel interrupts its computation and forces the context switch, preempting the currently running process. A process can be preempted at any time if the kernel finds that a higher-priority process is now dispatchable.

For example, when one process is running and interrupted by the device then that process will be in wait state. Now after completing the device request, another process has come up for execution, then the CPU starts executing the second process. But the device driver which was initiated get the first process running sending the second process from running state to ready state again. Now the secong process is said to be PREMPTED. 

#### 2.	What is swapping and what is its purpose?

To maximize the number of processes in the system, we swap a process from the ready state to the ready suspend state that is giving its memory to another process which is to be executed.

#### 3.	List three general categories of information in a process control block.

The three general categories of information in a Process Control Block are as follows

  > a.	Process identification
  
  > b.	Processor state information
  
  > c.	Process control information
  
  > 1.	Scheduling & state information
  
  > 2.	Data structuring
  
  > 3.	Memory management
  
  > 4.	Process privileges

#### 4.	Why are two modes (user and kernel) needed?

###### Kernel Mode:

In Kernel mode, the executing code has complete and unrestricted access to the underlying hardware. It can execute any CPU instruction and reference any memory address. Kernel mode is generally reserved for the lowest-level, most trusted functions of the operating system. Crashes in kernel mode are catastrophic; they will halt the entire PC.

##### User Mode:

In User mode, the executing code has no ability to directly access hardware or reference memory. Code running in user mode must delegate to system APIs to access hardware or memory. Due to the protection afforded by this sort of isolation, crashes in user mode are always recoverable. Most of the code running on your computer will execute in user mode.

#### 5.	What is the difference between an interrupt and a trap?

*Interrupts* are hardware interrupts, while *Traps* are software-invoked interrupts. Occurrences of hardware interrupts usually disable other hardware interrupts, but this is not true for traps. If you need to disallow hardware interrupts until a trap is served, you need to explicitly clear the interrupt flag. And usually the interrupt flag on the computer affects (hardware) interrupts as opposed to traps. This means that clearing this flag will not prevent traps. Unlike traps, interrupts should preserve the previous state of the CPU.

#### 6.	Give three examples of an interrupt.

Examples of an Interrupt:

> 1.	Input / Output devices like Mouse, Keyboard and Printer cause an Interrupts.
> 2.	When a Reset button is pressed it will cause an interrupt.
> 3.	Power supply failure will cause an interrupt to all the programs running 

#### 7.	What is the difference between a mode switch and a process switch?

###### Mode Switch:

A mode switch may occur without changing the state of the process that is currently in the Running state. 

###### Process Context Switch:

A process context switch involves taking the currently executing process out of the Running state in favor of another process. The process context switch involves saving more state information.
