---
layout: post
title: Strings in Java
description: 
categories: java programming
---

# Strings in Java

* https://www.baeldung.com/java-string-immutable  
* https://www.journaldev.com/797/what-is-java-string-pool

---
##### Why String is immutable in Java?  
  
__Immutable object__: object whose internal state remains constant after it has been
entirely created. So we can neither update the object reference nor mutate
its internal state.
 
__String Pool__: Memory region in the _Heap_ where Strings are stored.
  
The key benefits of keeping this class as immutable are:
   
* caching 
* synchronization
* security  
* performance

---