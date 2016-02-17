# Chapter 2 Review Questions
Name: Shashank Namala
Course: 5143 Operating Systems
Date: 01 APR 92

#### 1. What are three objectives of an OS design?

 An operating system is a program that controls the execution of application programs and acts as an interface between the user of a computer and the computer hardware.
Three Objectives can be observed:
 >_Convenience_ - OS as a user/computer interface (Usability)
 
 >_Efficiency_ - OS as resource manager (Scalability)
 
 >_Ability to Evolve_ - Evolution of OS (Maintainability)

#### 2. What is the kernel of an OS?

A kernel is the part of the operating system that mediates access to system resources. It's responsible for enabling multiple applications to effectively share the hardware by controlling access to CPU, memory, disk I/O, and networking.

 An operating system is the kernel plus applications that enable users to get something 
done (i.e., compiler, text editor, window manager, etc.).
The types of kernels are 
 >Monolithic kernels
 
 >_Microkernels_
 
 >_Monolithic kernels vs. microkernels_
 
 >_Hybrid (or Modular) kernels_
 
####3. What is multiprogramming?
 
 When two or more programs are residing in memory for execution at the same time, then sharing the resources to the processes is referred to as the multiprogramming. Multiprogramming assumes a single shared processor and increases CPU utilization by organizing jobs so that the CPU always has one program to execute at every time the program which contains multiple programs is executed.

Operating system does the following activities related to multiprogramming.
 >The operating system keeps several jobs in memory at a time.
 
 >This set of jobs has all of the jobs kept in the job pool.
 >The operating system picks and begins to execute one of the job in the memory and executes it.
 
 Multiprogramming operating system monitors the state of all active programs and system resources using memory management programs to ensures that the CPU is never idle unless there are no jobs

*Advantages:*

>High and efficient CPU utilization.
>User feels that many programs are allotted CPU almost simultaneously.

*Disadvantages:*

>CPU scheduling is required.

#### 4. What is a process?

 The Program under execution is called a **Process**. For example, A time-shared user program such as a compiler is a process or a word-processing program being run by an individual user on a PC can be a process. A system task, such as sending output to a printer, can also be a process.
 
 A process is the unit of work in a system. Such a system consists of a collection of processes, some of which are operating-system processes (those that execute system code) and the rest of which are user processes (those that execute user code).

#### 5.How is the execution context of a process used by the OS?

 The Operating system contains the process elements which are created and managed by the operating system itself. This allows support for multiple processes. The execution context or process state includes all of the information that the OS needs to manage the process and that the processor needs to execute the process properly. The context includes the context of the various processor registers such as program counters and data registers. It also includes the information of use to the OS, such as the priority of the process and whether the process is waiting for the completion of a particular IO event. A process can be either executing or awaiting execution. The entire state of a process at any instant is constraint in its context.
 
 
 A process goes through a series of process states while execution.

 >*New State:* The process being created.
 
 >*Running State:* A process is said to be running if it is using the CPU at that particular instant.
 
 >*Blocked (or waiting) State:* A process is said to be blocked if it is waiting for some event to happen such that as an I/O      completion before it can proceed. The process will not run until some external event happens.
 
 >*Ready State:* A process is said to be ready if it uses a CPU if one were available. A ready state process is runnable but temporarily stopped running to let another process run.
 
 >*Terminated state:* The process has finished execution.

#### 6. List and briefly explain five storage management responsibilities of a typical OS.



