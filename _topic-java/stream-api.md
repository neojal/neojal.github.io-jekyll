---
layout: post
title: Stream API in Java
description: 
categories: java programming
---

# Stream API in Java

https://www.geeksforgeeks.org/stream-in-java/  
http://tutorials.jenkov.com/java-collections/streams.html

Introduced in Java 8, the Stream API is used to process collections of objects.   
A stream is a sequence of objects that supports various methods which can be pipelined to produce the desired result.  

The features of Java stream are:

* Takes input from Collections, Arrays or I/O channels.
* Streams doesn't chance the original data structure, only provided a result.
* _Intermediate Operations_ returns a Stream as a result and can be pipelined..
* _Terminal Operations_ mark the end of the Stream and return the result.

### Intermediate Operations

1. **filter**: filter method is used to select elements as per the Predicate passed as argument.

```java
List names = Arrays.asList("Reflection", "Collection", "Stream");
List result = names.stream().filter(s->s.startsWith("S")).collect( Collectors.toList() );
```


2. **map**: map method returns a stream consisting of the results of applying the given function to the stream elements.

```java
List numbers = Arrays.asList(1,2,3,4,5);
List squares = numbers.stream().map(x->x*x).collect( Collectors.toList() );
```


3. **sorted**: sorted method is used to sort the stream

```java
List names = Arrays.asList("Reflection", "Collection", "Stream");
List result = names.stream().sorted().collect(Collectors.toList());
```

### Terminal Operations

1. **collect**: The collect method is used to return the result of the intermediate operations performed on the stream,

2. **forEach**: The forEach method is used to iterate through every element on the stream.

```java
List numbers = Arrays.asList(1,2,3,4,5);
numbers.stream().map( x->x*x ).forEach( y-> System.out.println(y));
```

3. **reduce**: The reduce method is used to reduce the elements of a stream to a single value.
The reduce method takes two arguments:
    
    * initial value: 0 here.
    * BynaryOperator<T>, (a, b): to combine two elements and generate a new value.

```java
List numbers = Arrays.asList(1,2,3,4,5);
int even = numbers.stream().filter( x->x%2==0 ).reduce( 0, (a, b) ->  a+b );

```


