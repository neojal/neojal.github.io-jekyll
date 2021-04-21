---
layout: post
title: Spring Cloud
description: 
categories: web-services
---

# Spring Cloud

- [spring-cloud-bootstrapping](https://www.baeldung.com/spring-cloud-bootstrapping)
- [YT Spring Boot Microservices](https://www.youtube.com/playlist?list=PLqq-6Pq4lTTZSKAFG6aCDVDP86Qx4lNas)

## Spring Cloud Bootstrap (config, discover, gateway, services)

Spring Cloud is a framework for building robust cloud applications. 

Applications that run with microservices architecture aim to simplify development, deployment, 
and maintenance. The decomposed nature of the application allows developers to focus on one 
problem at a time. Improvements can be introduced without impacting other parts of a system.

On the other hand, different challenges arise when we take on a microservice approach:

- Externalizing configuration so that is flexible and does not require rebuild of the service on change
- Service discovery
- Hiding complexity of services deployed on different hosts

### Config Server 
__(spring-cloud-starter-config, spring-cloud-config-server)__  
__(@SpringBootApplication  
@EnableConfigServer)__

To solve this, we will consolidate all of our configuration into a single Git repository and connect that
to one application that manages a configuration for all our applications. 

### Discovery 
__(spring-cloud-starter-config, spring-cloud-starter-eureka-server)__   
__(@SpringBootApplication  
@EnableEurekaServer)__

Ee need a way for all of our servers to be able to find each other. We will solve this problem 
by setting the Eureka discovery server up. Since our applications could be running on any ip/port 
combination we need a central address registry that can serve as an application address lookup.

### Gateway 
__(spring-cloud-starter-config, spring-cloud-starter-zuul, spring-cloud-starter-eureka)__   
__(@SpringBootApplication  
@EnableZuulProxy  
@EnableEurekaClient)__

Resolves how the clients access all of our applications.

If we leave everything in a distributed system, then we will have to manage complex CORS headers to
allow cross-origin requests on clients.


### Services
__(spring-boot-starter-web, spring-cloud-starter-config, spring-cloud-starter-eureka )__
__(@SpringBootApplication  
   @EnableEurekaClient  
   @RestController)__
