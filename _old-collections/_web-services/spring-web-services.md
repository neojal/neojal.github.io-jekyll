---
layout: post
title: Spring Web Services
description: 
categories: Spring web-services best-practices
---

# Spring Web Services

## @Controller

Creates a Map of model objects and finds a View (html). So, it's used to display HTML
contents. Is a specialization of @Component.

## @RequestBody

Maps the HttpRequest body to a domain object: deserializes the inbound HttpRequest body 
onto a Java object.

## @ResponseBody

Tells a Controller that the object returned is automatically serialized into JSON and
passed back into the HttpResponse object.

## @RestController

Is a combination of @Controller and @ResponseBody. Automatically serializes return
objects into HttpResponse.

## @RequestMapping(method = RequestMethod.GET, path = "/my-rest-controller")

Maps an HTTP Get request to a method. It can be replaced for the next Mapping annotations.

## @GetMapping(path = "/my-path")
## @PostMapping(path = "/my-path")
## @PutMapping(path = "/my-path")

## @PathVariable

## @Component and its variants

## @Autowired

## URI and ResponseEntity classes

```java

    /**
     * 
     * @param user
     * @return a ResponseEntity with headers:
     *      HTTP 201 created code: HTTP/1.1 201 
     *      location of the new resource: Location: http://localhost:8080/users/4
     * of the new resource.
     */
    @PostMapping(path = "/users")
    public ResponseEntity<Object> createUser(@RequestBody  User user) {

        User createdUser = userDaoService.save(user);

        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(createdUser.getId()).toUri();

        return ResponseEntity.created(location).build();
    }

```

## @ResponseStatus(code = HttpStatus.NOT_FOUND)

* Using @ResponseStatusCode in an Unchecked Exception (RunTime Exception) 
thrown in a Controller:

```java
    @ResponseStatus(code = HttpStatus.NOT_FOUND)
    public class UserNotFoundException extends RuntimeException {
        public UserNotFoundException(String message) {
            super(message);
        }
    }
```

* Response: Structure, fields, of the response are provided by Spring by default.

´´´
HTTP/1.1 404 
Content-Type: application/json
Transfer-Encoding: chunked
Date: Tue, 03 Dec 2019 01:33:20 GMT

{
  "timestamp": "2019-12-03T01:33:20.234+0000",
  "status": 404,
  "error": "Not Found",
  "message": "id = 5",
  "trace": "com.neojal.restfulwebservices.user",
  "path": "/users/5"
}
´´´

## ResponseEntityExceptionHandler abstract class (Spring)

It is possible to create a customized error response structure by extending and
implementing the methods defined in such class, as well as using @ControllerAdvice
and @RestController in such class, as follows:

´´´java
@ControllerAdvice
@RestController
public class CustomizedResponseEntityExceptionHandler
        extends ResponseEntityExceptionHandler {

    @ExceptionHandler(Exception.class)
    public final ResponseEntity<Object> handleAllExceptions(Exception ex, WebRequest request) {

        ExceptionResponse exceptionResponse =
                new ExceptionResponse(
                        new Date(), ex.getMessage(), request.getDescription(false));

        return new ResponseEntity(exceptionResponse, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(UserNotFoundException.class)
    public final ResponseEntity<Object> handleUserNotFoundExceptions(Exception ex, WebRequest request) {

        ExceptionResponse exceptionResponse =
                new ExceptionResponse(
                        new Date(), ex.getMessage(), request.getDescription(false));

        return new ResponseEntity(exceptionResponse, HttpStatus.NOT_FOUND);
    }

    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(MethodArgumentNotValidException ex, HttpHeaders headers, HttpStatus status, WebRequest request) {

        ExceptionResponse exceptionResponse =
                new ExceptionResponse(
                        new Date(), "Validation Failed.", request.getDescription(false));

        return new ResponseEntity(exceptionResponse, HttpStatus.BAD_REQUEST);
    }
}
´´´


## @ControllerAdvice

## @Valid (java Validation API) and Hibernate Validator implementation

### Rest Clients

## Spring RestTemplate

* [Spring RestTemplate current](https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/web/client/RestTemplate.html)
* [Spring RestTemplate](https://howtodoinjava.com/spring-boot2/resttemplate/spring-restful-client-resttemplate-example/)

Synchronous client to perform HTTP requests, exposing a simple, template method API over underlying HTTP client libraries such as the JDK HttpURLConnection, Apache HttpComponents, and others.

The RestTemplate offers templates for common scenarios by HTTP method, in addition to the generalized exchange and execute methods that support of less frequent cases.