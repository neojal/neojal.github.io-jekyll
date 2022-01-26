---
layout: post
title: Design Patterns
description: Types of
categories: best-practices
---

# Design Patterns

#### Types of Design Patterns:

- Creational
- Structural
- Behavioural
- Enterprise Application Architecture

#### Strategy Design Pattern

Define a family of algorithms, encapsulate each one, and make them interchangeable.  

Strategy lets the algorithm vary independently from the clients that use it.
Capture the abstraction in an interface, bury implementation details in derived classes.

[strategy](https://sourcemaking.com/design_patterns/strategy)

#### Differentiate between a Factory Pattern and Abstract Factory Pattern.
[factory-method-vs-abstract](https://dzone.com/articles/factory-method-vs-abstract)


##### Factory Pattern
1. Creates objects through inheritance
2. Produces only one product
3. Implements code in the abstract creator that make use of the concrete type that sub class produces.

##### Abstract Factory Pattern
1. Creates object through composition
2. Produces families of products
3. Concretes factories implements factory method to create product

#### Front Controller

A controller that handles all requests for a Web site.

[Front Controller](https://www.martinfowler.com/eaaCatalog/frontController.html)


## References

[Enterprise Application Architecture Patterns](https://www.martinfowler.com/eaaCatalog/index.html) 
