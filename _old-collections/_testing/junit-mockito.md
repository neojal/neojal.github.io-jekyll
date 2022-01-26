---
layout: post
title: JUnit & Mockito
description:  Interview Questions
categories: best-practices testing
---

# JUnit & Mockito Interview Questions

## Resources

* https://www.tutorialspoint.com/junit/junit_suite_test.htm
* https://www.tutorialspoint.com/junit/junit_questions_answers.htm

* https://www.toptal.com/java/unit-integration-junit-tests
* https://dzone.com/articles/unit-and-integration-tests-in-spring-boot-2

* [Mockito FAQ](https://github.com/mockito/mockito/wiki/FAQ)

## Some JUnit questions

* What is unit testing?    
It is the process of testing individual functionality of an application.  
It is the process of testing individual functionality.

* How to test a _protected_ method?  
The test class muest be declared in the same package as the target class.

* How to test a _private_ method?  
There is no way to do it. So you must change the method signature.

* Can we change the return type of a test method from void to some other?  
No, all junit tests must have a _void_ return type; otherwise, the method
is not considered a test.

* What is is a Test Suit?  
It is used to bundle a few unit test cases and run the together. @RunWith and @Suite.

* What are the most important JUnit annotations?
@Test, @BeforeClass, @Before, @After, @AfterClass, @Ignore.

* What is a Parameterized test?
Allows a developer to run the same test over and over again using different values.

## Some Mockito questions

* What is Mocking and Mockito?  
Mockito is a mocking framework for Java. Mockito allows convenient creation of substitutes
of real objects for testing purposes.

* What is a Mock Object?  
Replaces a mocked class entirely, returning recorded or default values.

* What is spying?
When spying, the real methods are called (unless a method was stubbed). It is suggested 
to test legacy code.

* Test Doubles (like stunt double) https://martinfowler.com/bliki/TestDouble.html  
Test Double is a generic term for any case where you replace a production object for testing
purposes. There are varios kinds of doubles:
	* Fake: Object replacing the actual code by implementing the same interface but without
	interacting with other objects. Usually the Fake is hard-coded to return fixed results.
	* Stubs: provides a set of answers to calls, usually not responding at all to  anything 
	outside what's programmed in for the test.
	* Mocks: 
