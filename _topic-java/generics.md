---
layout: post
title: Generics
description: 
categories: java programming
---

# Generics

[Jenkov Generics](http://tutorials.jenkov.com/java-generics/index.html)  
[baeldung generics interview questions](https://www.baeldung.com/java-generics-interview-questions)

* __Generics__ add a way to specify concrete types to general purpose classes and
methods that operated on __Object__ before. 

* Particularly with Collections, __Generics__ are a way to tell the 
compiler what kind of objects a collection can contain.

* Type safety: by using generics we have __Compile Type Check__ which prevents
ClassCastExceptions and removes the need for casting. 

##### Casting and limiting object type

You can set the type of the Collection to limit what kind of objects can
be inserted into the collection. 

Additionally, you don't have to cast
the values you obtain from the collection.  

Without generics, cast is required:
```java
List list = new ArrayList();
list.add(new Integer(2));
list.add("a String");

Integer integer = (Integer) list.get(0);
String string   = (String) list.get(1);
```

With generics, casting is not required and limits the type of object in the collection:  
```java

List<String> strings = new ArrayList<String>();
strings.add("a String");
String aString = strings.get(0);
```

##### Type inference

The compiler can infer the type of the collection from the variable.

```java
List<String> strings = new ArrayList<>();
```

##### What is a generic type

Type is the name of a class or interface.

A generic type parameter is when a type can be used as a parameter in
a class, method or interface declaration.

```java
public interface Consumer<T> {
    public void consume(T parameter);
}
```

##### Type erasure

Generic types are available only to the compiler, not the JVM. 

At JVM level, the generic types are erased and replaced by castings 
and etc to keep backward compatibility with older versions of Java.

##### Bounded type parameters

Restrict the types that can be used as generic type arguments.

Force T to be a subclass of animal:

```java
public abstract class Cage<T extends Animal> {
    abstract void addAnimal(T animal);
}
```

##### Wildcard type: <?>

Represents an unknown type:

```java
public static consumeListOfWildcardType(List<?> list)
```

##### Upper bounded wildcard (extends )and Lower bounded wildcard (super)

```java
//upper bounded wild card (extends)
public void addAnimals(Collection<? extends Animal> newAnimals)

//lower bounded wildcard (super)
public static void addDogs(List<? super Animal> list) {
   list.add(new Dog("tom"));
}
```

##### When is the Generic Type Information available at runtime

Only when a generic type is part of the class signature:

```java
public class CatCage implements Cage<Cat>
```

Then, using reflection:

```java
(Class<T>) ((ParameterizedType) getClass()
  .getGenericSuperclass()).getActualTypeArguments()[0];
```

