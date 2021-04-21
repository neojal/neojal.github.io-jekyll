---
layout: post
title: Functional Testing
description: 
categories: best-practices testing
---

# Functional Testing
  
__Functional Testing__ is a kind of *black-box* testing performed 
to validate the software system against the functional 
requirements/specifications.  

The purpose is to test each function by providing appropriate input
and verifying the output against Functional Requirements. 

### Characteristics

- Functional testing can be either manual or automated.
- Business requirements are the inputs to functional testing.
- Functional testing describes what the product does.

### Functional Testing Types

__Unit Testing__: usually performed by a developer who writes different
code units that could be related or unrelated to achieve a particular
functionality.  

Code coverage is an important part of unit testing. Is a metric that
describes how much of your code is tested.

- Function coverage.
- Statement coverage.
- Branches coverage.
- Condition coverage.
- Line coverage.

__Sanity Testing__: ensures that all the major and vital functionalities
of the application are working correctly.

__Smoke Testing__: it is done after each build to ensure build stability.

__Regression Tests__: performed to ensure that adding new code, enhancements,
bug fixes are not breaking existing functionality.

__Integration Tests__: validates the integration of multiple functional
modules that might individually work perfectly.

__Beta/Usability Testing__: product is exposed to the actual customer in
a production like environment.

### References  
- https://www.softwaretestinghelp.com/guide-to-functional-testing/
- https://www.guru99.com/functional-testing.html