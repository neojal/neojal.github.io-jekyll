---
layout: post
title: Microservices
description: Introduction.
categories: web-services
---

# Microservices

**References:**

- [Building Microservices, Sam Newman](https://www.amazon.com.mx/Building-Microservices-Designing-Fine-Grained-Systems/dp/1491950358).
- [Monolith to Microservice, Sam Newman](https://www.amazon.com.mx/Monolith-Microservices-Evolutionary-Patterns-Transform/dp/1492047848).

**What are Microservices?**  
Microservices are small, autonomous services that work together.

**Microservices Characteristics**  

* Small, focused on doing one thing well:  
    * Single Responsibility Principle.
    * Services boundaries on business boundaries.
* Autonomous
    * Our microservice is a separate entity. It might be deployed as an isolated service or in its own
    operating system process.
    * Avoid multiple services onto the same machine.

**Key Benefits**

* Technology Heterogeneity.
* Resilience:
    * Isolate a failing component that doesn't cascade.
* Scaling:
    * Scale just the services that need to be scaled.
* Ease of deployment:
    * We can make a change to ca single service and deploy it independently of the rest of the system.
* Organizational alignment:
    * Microservices allows us to align our architecture to our organization.
* Composability (reuse of functionality).
* Optimizing for replaceability:
    * we can rewrite services when required.
     
## Modeling Microservices

**Loose Coupling**   
A change to one service should not require a change to another.

**High Cohesion**
Ensure that related behaviour is in one place, and that communicate with other boundaries as loosely as possible.   
    
## Integrating Microservices

* [principles-for-integration](https://dzone.com/articles/principles-for-microservices-integration)
* [integration-patterns](https://dzone.com/articles/how-integration-patterns-impact-your-microservices)

### Forms of Integration:

* The shared Database.
* Sync vs Async.


## Testing, deployment, etc etc. 
      
  
    