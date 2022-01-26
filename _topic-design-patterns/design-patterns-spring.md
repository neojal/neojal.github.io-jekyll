---
layout: post
title: Design Patterns in Spring Framework
description: 
categories: best-practices
---


# Design Patterns in Spring Framework

[spring-framework-design-patterns](https://www.baeldung.com/spring-framework-design-patterns)

## Introduction

These solutions not only solve recurring problems but also help developers understand the design
of a framework by recognizing common patterns.

The most common design patterns in Spring:

0. Dependency Injection
1. Singleton pattern
2. Factory Method Pattern
3. Proxy Pattern
4. Template Pattern

## 1. Dependency Injection

It is a pattern to implement Inversion of Control (IoC). 

Makes a class independent of its dependencies. It achieves that by decoupling the usage of an object from its creation.

Inversion of Control is a principle in software engineering by which the control of objects or portions of
a program is transferred to a container of framework.

## 2. Singleton Pattern

The singleton pattern is a mechanism that ensures only one instance of an object exist per application.
This pattern can be useful when managing shared resources or providing cross-cutting services, such as loggin.

__Singleton Beans.__  
Spring restricts a singleton to one object per __Spring IoC container__.

## 3. Factory Method Pattern

The factory method pattern entails a factory class with an abstract method for creating the desired object.

To accomplish this, we can create a factory implementation for each desired object and return the desired object from
the concrete factory method.

__Application Context__

Spring uses this technique as the root of its Dependency Injection Framework.
Spring treats a bean container as a factory that produces beans.

__External Configuration__

We can completely change the application's behavior based on external configuration.  
For example, we can change the AnnotationConfigApplicationContext to an XML-based configuration class.

## 4. Proxy Pattern

The proxy pattern is a technique that allows one object, the proxy, to control access to another object 
(the subject or service).

__Transactions__.
Without a proxy, Spring wouldn't be able to control access to our a Transactional bean 
and ensure its transactional consistency.

## Template Method Pattern

The template method pattern is a technique that defines the steps required for some action, 
implementing the boilerplate steps, and leaving the customizable steps as abstract.


__Templates and Callbacks__.
Subclasses can then implement this abstract class and provide a concrete implementation for the missing steps.