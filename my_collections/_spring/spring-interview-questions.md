---
layout: post
title: Spring Interview Questions
description: 
categories: spring programming
---

# Spring Interview Questions
_Spring 4.3.x_

* **Whats is Spring Framework?**
  * Is a Java platform that provides comprehensive infrastructure support for developing 
  Java applications and Java Enterprise applications.

* **Spring modules** Spring is divided into modules, applications can choose which modules they need.
  * _Core Container_ modules:
    * _Core:_
      * Provides _IoC_, _DI_ features and fundamental parts of the framework.
    * _Bean:_ 
      * The _BeanFactory_ interface provides an advanced configuration mechanism to capable of
      managing any type of object.
    * _Context:_
      * Provides the _ApplicationContext_ interface (sub-interface of _BeanFactory_) adds more enterprise-specific
      functionality: 
        * integration with AOP, provides configuration for an application, load file resources, methods for accessing
      application components, resolves messages (supporting internationalization).
      * _ClassPathXmlApplicationContext_, _FileSystemApplicationContext_ and _XmlWebApplicationContext_
      are some of the known implementing classes.
    * _Expression:_
      * Provides the Spring Expression Language (SpEL)
  * _Data Access/Integration_
    * _JDBC_
    * _ORM_
    * _OXM_
    * _JMS_
    * _Transactions_
  * _Web_
    * _Web_
    * _MVC or Servlet_
    * _WebSocket_
    * _Portlet_
  * _AOP_
  * _Aspects_
  * _Instrumentation_
  * _Messaging_
  * _Test_

* **Inversion of Control (IoC) and Dependency Injection (DI)**
  * Dependency Injection is a design pattern to implement the principle of Inversion of Control.
  * _Dependency Injection:_ 
    * It is a process whereby objects define their dependencies only through:
      * _constructor arguments_
      * _arguments_ to a factory method
      * _properties_ that are set on the object instance after it is constructed or returned from a
      factory method, and then
    * the _Spring IoC container_ injects those dependencies when it instantiates the bean.
    
* **Bean** 
  * is an object that that is instantiated, assembled and managed by the _Spring IoC Container_

* **The Spring IoC Container** 
  * The interface _org.springframework.context.ApplicationContext_ represents the IoC Container and is
  responsible for instantiating, configuring, and assembling the beans.

* **How to configure Spring IoC Container?** The configuration metadata is provided by:
  * _XML-based metadata_
  * _Annotation-based configuration_
  * _Java-based configuration_. You can define beans external to your application classes by using Java
  rather than XML files.

* **Q**
  * _A_  
  
* **Q**
  * _A_  
  
* **Q**
  * _A_  

* **Q**
  * _A_  

* **Q**
  * _A_  
 