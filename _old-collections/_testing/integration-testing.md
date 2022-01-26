---
layout: post
title: Integration Testing
description: 
categories: best-practices testing
---

# Integration Testing

Integration Testing is defined as a type of testing where software modules
are integrated logically and tested as a group.  

The purpose of this level of testing is to expose defects in the 
interaction between these software modules when they are integrated.  

Integration testing focuses on checking data communication amongst these
modules. It focuses mainly on the interfaces and data flows between modules.
Priority is on the integrated links.

Integration Testing usually comes after [Unit Testing](unit-testing.md).

## Big Bang Approach (not recommended)

Big bang approach integrates all the modules in one, it does not go for
integrating the modules one by one. It verifies if the system works as
expected or not once integrated.

__Adavantages__: 
- It is good for small systems.     

__Disadvantages__: 
- Difficult to detect which module is causing an issue.
- Requires all the modules all together.
- No time for critical module testing in isolation.

## Bottom-up Approach

Starts from the lowest or the innermost unit of the application, and
gradually moves up. The integration continues till all the modules
are integrated and the entire application is tested as a single unit.  

If other modules required are not available, __drivers__ are used.

## Top-down Approach

This technique starts from the topmost module and gradually progress
towards the lowe modules. Only the top module is tested in isolation.
Then, the lower modules are integrated one by one. The process is 
repeated until all the modules are integrated and tested.  

If lower modules are not available, __Stubs__ are required.

## Drivers and Stubs

__Drivers__:  
Drivers are the dummy/stimulator programs which are used to call
required functions when this doesn't exist yet.
- Used in Bottom-up approach.
- Lowest modules are tested first.

__Stubs__:  
Code or snippet which accepts the inputs/requests from the top modules
and returns the results/responses.
- Used in Top-down approach.
- Top most module is tested first.

### References

- https://www.softwaretestinghelp.com/what-is-integration-testing/
