---
layout: post
title: Concurrency
description: Introduction to Concurrency.
categories: java programming
---

# Java Concurrency

[jenkov-java-concurrency](http://tutorials.jenkov.com/java-concurrency/index.html)

## The Producer-Consumer problem

[Producer Consumer Full Explanation and Solution](https://dzone.com/articles/the-evolution-of-producer-consumer-problem-in-java)

![Producer-Consumer-Queue_buffer](https://interviewsansar.com/wp-content/uploads/2014/09/blocking-queue-1024x256.png)

### The problem

There are two processes, a producer and a consumer, that share a common buffer with a limited size.  
The producer “produces” data and stores it in the buffer, and the consumer “consumes” the data, removing it from the buffer.  
Having two processes that run in parallel, we need to make sure that the producer will not put new data in the buffer when the buffer is full and the consumer won’t try to remove data from the buffer if the buffer is empty.

## Concepts

**Thread lifecycle**:  

![Thread lifecycle](https://media.geeksforgeeks.org/wp-content/uploads/threadLifeCycle.jpg)

**Volatile**:
The Java volatile keyword is used to mark a Java variable as "being stored in main memory".

~~~java
class SharedObj
{
   // volatile keyword here makes sure that
   // the changes made in one thread are 
   // immediately reflected in other thread
   static volatile int sharedVar = 6;
}
~~~

**Synchronized**:  
A Java synchronized block marks a method or a block of code as synchronized. Java synchronized blocks can be used to avoid race conditions.

~~~java
public synchronized void add(int value){
    this.count += value;
}
~~~

**Race Conditions**:  
A race condition is a special condition that may occur inside a critical section. 
A critical section is a section of code that is executed by multiple threads and 
where the sequence of execution for the threads makes a difference in the result 
of the concurrent execution of the critical section.

## Thread Class

```java
public class CreatingStartingThreads {
    
    // 1. extends from Thread class
    public static class MyThread extends Thread {
        
        // 2. Override and implement run method
        @Override
        public void run() {
            System.out.println("Hello world Thread!");
        }
    
        public static void main(String[] args) {
    
            // 3. start the thread!
            Thread myThread = new MyThread();
            myThread.start();
        }

    }
}
```

## Runnable Interface

```java
public class ImplementingRunnable {
    
    // 1. implement runnable interface
    public static class MyRunnable implements Runnable {
        
        // 2. Override and implement run method
        @Override
        public void run() {
            System.out.println("Hello world Runnable!");
        }
    
        public static void main(String[] args) {
    
            // 3. start the thread but passing a new Runnable!
            Thread myThread = new MyThread(new Runnable());
            myThread.start();
        }
    }
}

```

## Thread class vs Runnable interface

Choose runnable over thread!

* A new Runnable can be passed as a parameter in a thread, as well as a thread name.
* A Runnable can be passed to an executor, in other words its supported by Thread pools.
* Implementing an Interface is more flexible than Extending a class.
* Runnable can be implemented with Lambda expressions and anonymous classes.

# java.util.concurrent - Java Concurrency Utilities
[jenkov-java-util-concurrent](http://tutorials.jenkov.com/java-util-concurrent/index.html)
