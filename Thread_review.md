##Thread_Review

#### Shashank Namala
#### M20228231
#### Date of submission - 04/08/2016

###### 1.Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation.

In the thread1.py, the values printed by both threads are indepedent of each other which doesnt have redundant data,
whereas in thread2.py there is a shared memory for both threads A and B which are modified by both threads individually
at the same time. When thread A is implementing the computation, B is also implementing the computation on the shared memory,
as result the data is modified by one thread even before it is displayed. Hence there is a redundancy problem between the threads.

###### 2. After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?

In thread3.py, the threads A and B uses lock() method while peformong the computation which locks the shared resource betwen the 
two threads which helps to maintain atomicity and isolation of the shared memory between the threads A and B to give accurate values.
Whereas in thread2.py, the resource -shared memory is accessed by both the threads Aand B at the same time and the modification done 
to it is parallel which causes redundancy problem.

In Thrread2.py, the atomicity of the shared data is compromised whereas in thread3.py thsame property is satisfied using LOCKS.
	
###### 3. Comment out the join statements at the bottom of the program and describe what happens.

If the join statements are removed from the program, the threads A and B execute without any connection to the main program which means, 
Main program completes its execution first. The threads perform the computation when they are created meanwhile the Main program completes
its execution. If join are used, Main program will wait for the completion of execution of the threads and then terminates the program.

###### 4.What happens if you try to Ctrl-C out of the program before it terminates?

If we try to terminate the program using ctrl+c before its completion, the program doesn't stop its execution but gives an error message at the end as
"KEYBOARD INTERRUPT". As there is join method which triggers a wait function in the main to wait for the completion of thread execution, the program completes
its execution and then prints an error. And if the join is removed the the program execution ignores the keyboard interrupt.

###### 5. Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to
cause this bizarre behavior using lines from the code and precise explanation.

When the locks are commented out the shared memory is modified by both the threads simultaneously at the same time. Hence causing the share memory value to be
different all the time which prints out the error message.

###### 6. Does uncommenting the lock operations clear up the problem in question 5?

Yes, it solves the problem. As the locking the thread prevents the modification of share memory which helps in prevention of printing the 
error by assigning the values to shared memory everytime it runs and executes the program smoothly. Whereas when there is no lock, the shared memory is frequently modified by both the threads
the error message is displayed more times.

