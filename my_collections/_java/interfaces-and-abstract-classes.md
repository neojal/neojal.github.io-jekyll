---
layout: post
title: Interfaces and Abstract Classes
description:
categories: java programming
---

# Interfaces and Abstract Classes

## Abstract

[Abstract](https://www.w3schools.com/java/java_abstract.asp)  

### Definitions

__Data Abstraction__ is the proccess of hiding certain details and showing only essential information to the user.  
Abstraction can be achieved with either __abstract classes__ or __interfaces__.

#### Java Abstract Classes and Methods

__Abstract class__: cannot be used to create objects, it must be inherited and implemented in a subclass.

__Abstract method__: can only be defined in an Abstract class and does not have a body. The body is implemented in a subclass.

* An Abstract Class can have both abstract and regular methods.


```java
// Abstract class
abstract class Animal {
  // Abstract method (does not have a body)
  public abstract void animalSound();
  // Regular method
  public void sleep() {
    System.out.println("Zzz");
  }
}

// Subclass (inherit from Animal)
class Pig extends Animal {
  public void animalSound() {
    // The body of animalSound() is provided here
    System.out.println("The pig says: wee wee");
  }
}

class MyMainClass {
  public static void main(String[] args) {
    Pig myPig = new Pig(); // Create a Pig object
    myPig.animalSound();
    myPig.sleep();
  }
}
```

## Interface

Another wy of achieve abstraction in Java, is with interfaces.

An Interface is a pure abstract class. 
