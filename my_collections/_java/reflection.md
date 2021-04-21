---
layout: post
title: Reflection
description: 
categories: java programming
---

# Reflection

[Jenkov Reflection](http://tutorials.jenkov.com/java-reflection/index.html)  

#### Definition

__Java Reflection__ makes it possible to inspect classes, interfaces, fields and methods at runtime,
without knowing the names of the classes, methods, etc.

It is also possible to instantiate new objects, invoke methods and get/set field values using reflection.

#### What can you find out from an Object using reflection

* Class: object.class
* Fields: Class.getFields
* Methods: Class.getMethods
* [Constructors](http://tutorials.jenkov.com/java-reflection/constructors.html) and its parameters. Class.getConstructors
* Private Fields and Methods
* Annotations (some of them)
* Array introspection (determine the type of class)
* Generic type introspection
* Java Modules
* Dynamic proxies (class to implement a Java Interface dynamically at runtime)

#### Examples of reflection

* Can be used to map properties in JSON files to getter/setter methods in Java objects, like Jackson or GSON.
* Can be used to map the column names of a JDBC ResultSet to getter/setter methods in a Java object.

#### Reflection Examples

##### Class object

```java
Class myObjectClass = MyObject.class;
```

##### Object.class.getMethods()

```java
Method[] methods = MyObject.class.getMethods();

for(Method method : methods){
    System.out.println("method = " + method.getName());
}
```

##### Fields

```java
Class myObjectClass = MyObject.class;
Field[] fields = myObjectClass.getFields();
```
