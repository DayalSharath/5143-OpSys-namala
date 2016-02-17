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

The five storage management responsibilities of Operating System are as follows.

 >**Process isolation:** The OS must prevent independent processes from interfering with each other’s memory, both data and instructions.
 
>**Automatic allocation and management:** Programs should be dynamically allocated across the memory hierarchy as required. Allocation should be transparent to the programmer. Thus, the programmer is relieved of concerns relating to memory limitations, and the OS can achieve efficiency by assigning memory to jobs only as needed.

 >**Support of modular programming:** Programmers should be able to define program modules, and to create, destroy, and alter the size of modules dynamically. 
 
 >**Protection and access control:** Sharing of memory, at any level of the memory hierarchy, creates the potential for one program to address the memory space of another. This is desirable when sharing is needed by particular applications. At other times, it threatens the integrity of programs and even the OS itself. The OS must allow portions of memory to be accessible in various ways by various users.
 
 >**Long-term storage:** Many applications programs require means for storing information for extended periods of time, after the computer has been powered down.

#### 7. Explain the distinction between a real address and a virtual address.

| Physical Address   | Virtual Address |
|--------------------|-----------------|
|1. Real addresses refer to hardware addresses of physical memory. | 1. Virtual addresses refer to the virtual location viewed by the process.|
|2. Real addresses are provided by the hardware. | 2. Virtual (or logical) addresses are provided by the OS kernel |
|3. Valid real addresses are usually between 0 and some machine specific maximum number. | 3. These addresses may start at zero, but not necessarily. |
|4. Not all addresses have to belong to the machine's main memory; other hardware devices can be mapped into the address space. | 4. Space may consist of several segments (i.e., have gaps). |
|5. OS divides physical memory into partitions. Different partitions can have different sizes. Each partition can be given to a process as virtual address space. | 5. Virtual addresses might be the same as physical addresses or different which is a partition of physical addresses. The case in which virtual addresses are not real, they must be mapped into physical addresses. Mapping is done by Memory Management Unit (MMU). |
|6. Real address depends on the storage. | 6. Virtual space is limited by size of virtual addresses (not physical addresses)  |
|7. Physical space doesn’t depend on Real Addresses. | 7. Virtual space is independent of physical memory space. |

#### 8. Describe the round-robin scheduling technique.

**Round robin** is the scheduling algorithm used by the CPU during execution of the process. Round robin is designed specifically for time sharing systems. It is similar to *first come first serve scheduling algorithm* but the _pre-emption_ is the added functionality to switch between the processes .

Round robin algorithm is simple and easy to implement. The name round robin comes from the principle known as round robin in which every person takes equal share of something in turn. This is mainly used by operating system to allocate resources to the processes which require them for their execution in a pre-emptive method. This method consists of small unit of time also called as _Time slice_ or _Quantum_.

This time slice or quantum is set/defined and the ready queue works like circular queue. All processes in this algorithm are kept in the circular queue which is ready queue.  Each new process is added to the tail of the ready/circular queue. By using this algorithm, CPU makes sure, time slices (any natural number) are assigned to each process in equal portions and in circular order, dealing with all process without any priority. Thus the Round Robin algorithm is considered the best pre-emptive scheduling algorithm.

An image describing the algorithm is attached below.

![Round Robin Algorithm](https://i.ytimg.com/vi/GjrxO-PDPdk/hqdefault.jpg)

#### 9. Explain the difference between a monolithic kernel and a microkernel.



#### 10. What is multithreading?

Multi Threading is the ability of an OS to support multiple, concurrent paths of execution within a single process. Single thread approach is seen in MS-DOS which supports a single user process and a single thread. Some UNIX, support multiple user processes but only support one thread per process. Multithreading is basically seen in Java run-time environment which is a single process with multiple threads system.

#### 11. List the key design issues for an SMP operating system.

Key design issues for an SMP Operating System

   >1. Concurrent Process / Threads 
        * 
        
   >2. Scheduling
   
   >3. Synchronization
   
   >4. Memory Management
   
   >5. Reliability / Fault Tolerance

