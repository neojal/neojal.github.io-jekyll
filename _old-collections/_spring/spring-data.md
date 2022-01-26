---
layout: post
title: Spring Data
description: 
categories: spring programming
---

# Spring Data crash course

### Agenda

1. Introduction
2. Requirements
3. Spring Data JDBC
4. Spring Data JPA
5. Spring Data REST
6. Conclusion

---

## 1. Introduction

### Spring Data Mission:

Provide a familiar and consistent Spring-based programming model for data access
while still retaining the special traits of the underlying data store. 

---

### Main Spring Data Modules (1/2)

- *Spring Data Commons* - Core Spring concepts underpinning every Spring Data project.
- *Spring Data JPA* - Makes it easy to implement JPA-based repositories.
- *Spring Data JDBC* - JDBC-based repositories.
- *Spring Data KeyValue* - Map-based repositories and SPIs to easily build a Spring Data module for key-value stores.
- *Spring Data LDAP* - Provides Spring Data repository support for Spring LDAP.
- *Spring Data MongoDB* - Spring based, object-document support and repositories for MongoDB.
- *Spring Data REST* - Exports Spring Data repositories as hypermedia-driven RESTful resources.

---

### Main Spring Data Modules (2/2)

- *Spring Data Redis* - Provides easy configuration and access to Redis from Spring applications.
- *Spring Data for Apache Cassandra* - Spring Data module for Apache Cassandra.
- *Spring Data for Apache Solr* - Spring Data module for Apache Solr.
- *Spring Data for Pivotal GemFire* - Provides easy configuration and access to Pivotal GemFire from Spring applications.

---

## 2. Requirements
1. Database setup
    1. H2 Database Engine
    2. Create database
2. Project setup
    1. Create Maven project
    2. Add dependencies into the POM.xml

### 


---

## 2. Spring Data JDBC

### 

---

## 3. Spring Data JPA

### 

---

## 4. Spring Data REST

### 

---

## 5. Conclusion

### 

---

### References
- [Spring Data Project](http://projects.spring.io/spring-data/)
- [Spring JDBC Example](https://www.journaldev.com/2593/spring-jdbc-example)
- [H2Database Tutorial](http://www.h2database.com/html/tutorial.html)


~~~bash

mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

~~~