---
layout: post
title: JVM and Memory
description: 
categories: java programming
---

# JVM and Memory

[jenkovjava-memory-model](http://tutorials.jenkov.com/java-concurrency/java-memory-model.html)

---

##### Heap, Metaspace, Stack

![Java Memory Model](https://media-exp1.licdn.com/dms/image/C5112AQEzQodSXF2YTg/article-cover_image-shrink_720_1280/0?e=1585785600&v=beta&t=8nx_lwGzG_9CS2s0Tom8oDaWAjdvDcjFo9xrwfQOPtc)

##### Stack Memory

![Stack Memory](https://cdn.journaldev.com/wp-content/uploads/2014/08/Java-Heap-Stack-Memory.png)

##### Difference between Stack and Heap?

* Stack contains methods, and its primitive values as well as object references.
* Stack is LIFO.


* Objects are stored in Heap, Stack contains references to them.
* Heap is used for all the application whereas Stack is used by one Thread.
* Objects in Heap are globally accessible whereas Stack can't be accessed by other Threads.


* When the memory is full, JVM throws for each case:
    * Stack: java.lang.StackOverFlowError
    * Heap: java.lang.OutOfMemoryError

##### Heap options: -Xms, -Xmx

Startup size and Maximum size of Heap memory.

##### Stack option: -Xss

Stack memory size.

##### String Pool

[Whats a Java String Pool](https://www.journaldev.com/797/what-is-java-string-pool)

## Thread Dumps

* jstack
* kill -3

~~~bash
# jstack (jdk)
$ jstack -l  <pid> > <file-path>

# kill -3
$ kill -3 <pid>
~~~

* JVisualVM
* Java Mission Control (JMC)

[How to take Thread dumps](https://dzone.com/articles/how-to-take-thread-dumps-7-options)
