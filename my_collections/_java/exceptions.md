---
layout: post
title: Exceptions
description: NullPointerException
categories: java programming
---

# Exception Handling

[Jenkov java-exception-handling](http://tutorials.jenkov.com/java-exception-handling/index.html)  

#### Definitions

__Java Exception Handling__: enables your Java applications to handle errors.

__Call stack__: is the sequence of method calls from the current method and back to the Main method of the program.

In Java, there are two types of exceptions:

__1. Checked Exceptions__ must be explicitly caught (try-catch) or propagated (throws).
Extend the __java.lang.Exception__ class.

* ClassNotFoundException
* IOException
* SQLException 

__2. UnChacked Exceptions__ don't have to be caught or declared thrown. Extend the __java.lang.RuntimeException__.
Some examples:

* ArithmeticException
* ArrayStoreException

Checked and Unchecked Exceptions are functionally equivalent!

__Java Errors__: indicates a serious problem that an application should not try to catch. 
Errors are the conditions that cannot be recovered by any handling technique. 
Errors are unchecked (occur at runtime) and defined in __java.lang.Error__. Some error examples:

* java.lang.StackOverflow
* java.lang.OutOfMemoryError

__Exception Hierarchy__

![Exception Hierarchy](https://i2.wp.com/www.javaspringclub.com/wp-content/uploads/2018/08/JavaExceptions.png)

#### Basic Exception Handling



```java

```

```java

```

```java

```

```java

```

```java

```
