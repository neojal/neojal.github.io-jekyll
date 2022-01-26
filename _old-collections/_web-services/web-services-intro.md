---
layout: post
title: Spring Microservices
description: 28 minutes course
categories: web-services best-practices
---

# Spring Microservices - 28 minutes

## Introduction

https://github.com/in28minutes/spring-microservices

## SOAP

* SOAP stands for Simple Object Access Protocol

* XML as request exchange format:
	* xml request
	* xml response

* XML Soap envelope
	* Soap header (is optional)
	* Soap body

* Transport
	* HTTP
	* MQ

* Service definition
	* WSDL (web service definition language)
	* Defines:
		* endpoint
		* operations
		* request structure
		* response structure

## REST (REpresentational State Transfer)

* REST is an Architectural Style.

* HTTP Status Codes:
	* 1xx: informational. Communicates transfer protocol-level information.
	* 2xx: success. Client's request was accepted successfully.
	* 3xx: redirection. Indicates that the client must take some additional.
	action to complete their request.
	* 4xx: client error. Points the finger at clients.
	* 5xx: server error. Points the finger at server.

* Resource
	* A resource is an object with a type, associated data, relationships to 
	other resources, and a set of methods that operate on it.

	* A resource has an URI (Uniform Resource Identifier)
		- /user/jose/tasks/1
		- /user/jose/tasks
		- /user/jose

	* A resource can have different representations
		- XML
		- HTML
		- JSON

* Request Methods:
	* GET: requests a representation of the specified resource.
	* HEAD: like a GET request but without the body of the response.
	* POST (not idempotent): used to submit an entity to the specified resource.
	* PUT (idempotent): replaces all current representations of the target resource.
	* DELETE: deletes the specified resource.

	* CONNECT: establishes a tunnel to the server identified by the target resource.
	* OPTIONS: method used to describe the communication options for the target resource.
	* TRACE: performs a message loop-back test along the path to the target resource.
	* PATCH: used to apply partial modifications to a resource.
	
## REST vs SOAP

* SOAP is about WSDL definition/restrictions
* REST is an Architectural Approach

* Data exchange format

* SOAP has WSDL as service definition
* Rest has no Service Definition

## Example RESTful Web Services verbs and resources

This is a social media app: 

User -> Posts

- Retrieve all users:   - GET /users
- Create a user:        - POST /users
- Retrieve one user:    - GET /users/{id}
- Delete a user:        - DELETE /users/{id}

- Retrieve all posts for a user:    - GET /users/{id}/posts
- Create a post for a user:         - POST /users/{id}/posts
- Retrieve details of a post:       - GET /users/{id}/posts/{id}    


## Notes

* URI (Uniform Resource Identifier). The most common form of URI is the Uniform 
Resource Locator (URL) or Web Address; more rarely seen as Uniform Resource Name (URN).

## TODO extra:
TODO 2: add this file to the index.
check other files availability in the index
* read about the additional http request methods.
* rest service definition
* restful, hypermedia & hateoas


# 



