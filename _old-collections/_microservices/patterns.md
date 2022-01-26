---
layout: post
title: Patterns
description: 
categories: web-services
---

# Microservices Patterns

[microservices.io](https://microservices.io/)

[designing-scalable-backend-infrastructures-from-scratch](https://medium.com/@helloansh/designing-scalable-backend-infrastructures-from-scratch-af80f5767ccc)

[methods-for-microservice-communication](https://blog.logrocket.com/methods-for-microservice-communication/)

## Microservices Patterns

![MicroservicePatternLanguage](https://microservices.io/i/MicroservicePatternLanguage.jpg)

* Database per Service
* Single Service per Host
* Microservice chassis: create a new microservice and handle cross-cutting concerns such as logging, metrics, 
service discovery and registration, external configuration
* Circuit breaker
* Externalized configuration
* Saga pattern: allows to implement a transaction that spans multiple services.





## Microservices Communication

### Synchronous 

### Asynchronous

### Event driven

* [spring-cloud-stream](https://spring.io/projects/spring-cloud-stream)
    * RabbitMQ
    * Kafka
    * Amazon Kinesis
    
