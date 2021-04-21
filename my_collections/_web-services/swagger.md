---
layout: post
title: Swagger
description: 
categories: web-services best-practices
---

# Swagger

 Documentation for REST webservices.

 Swagger is an OpenSource framework where you can document your Restful API's,
 access them, as well as test your services.

## Swagger JSON/yaml documentation

Technology independent, swagger json/yaml describes the resources and operations present in the API, 
as well as details of each operation such as:

* Define services hosted, paths.
* consumes: what kind of request is accepted.
* produces: what kind of response is produced.
* paths: what are the different resources available.


## Swagger Integration. 
Swagger can be integrated with REST APIs in two ways:  

* A top-down approach: First API specification and then code generation.  
	- swagger-codegen.
* A bottom-up approach: First API code and then Swagger integration. 
	- This is the typical scenario.

### how to generate swagger json?

* Options:
	a) Swagger OpenAPI: annotate classes with swagger.
	b) SpringFox (Swagger Integration with Spring): No handwritten documentation,
	it can generate a lot of information about your api just by inspecting classes.
	c) Swagger-Maven plugin: generates swagger spec at build time from swagger-annotated classes.

## Swagger Annotations

@API  
Acts at the class level and is used to mark a class as a Swagger Resource.

@SwaggerDefinition  
Acts at the class level to define information in a Swagger Resource.

@ApiOperation  
Acts at the method level to describe Swagger operation.

@ApiImplicitParam  
Acts at the method level to describe the properties of the parameters of the operation.

@ApiResponse  
Describes the meaning of the HTTP status response code.
