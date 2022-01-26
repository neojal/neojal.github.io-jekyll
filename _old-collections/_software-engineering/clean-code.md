---
layout: post
title: Clean Code
description: 
categories: best-practices
---

# Clean Code

## Index

1. Naming



## Proper naming

- Proper naming allows the code to be self-documented, so to avoid comments.

- Don't use humorous, slang and so on words to name anything in code.
    -Code must be easy to read by everyone.

- Class names must be 'nouns' or 'noun phrases':
    - Class name 'GarageCleaningService' is OK,
    - Class name 'Clean' is not OK. 

- Class level constants can be as descriptive as required, e.g.

    ```java
    private static final String CLASSIC_CAR_ABBREVIATION = "C";            
    private static final String SIMPLE_CAR_ABBREVIATION = "S";
    ```

- Public methods must have short names.

- Method names must be *verbs* or *verb phrases*:

    ```java
    private Integer findFreeGarageFrom(int[] garages) { 

    public int parkCarInFreeGarage(Car car) {
   
    private void wash(int garage) {
    ```
  
- Methods returning boolean types starts with the prefix 'is':
    ```Java
        private boolean isGarageFree(int garage) {            
          return garagesList.get(garage) == null;            
        }
    ```



- Don't use adjectives as Method names.


- Variable names must be descriptive. For example a variable describing a 'garage':
    - don't name the variable 'g'
    - instead, name it 'garage'

- Don't use prefixes at all.
    - Don't use prefixes in Interfaces (don't do this 'IMyInterface').
    - It must be no difference in naming an Interface or a Class.

- Interface and Class example: 
    - Interface name: GarageService
    - Class implementing the Interface: GarageServiceImpl 
    
- Don't use suffix such as 'List', 'Map', etc.

    ```Java
    - private Map<Integer, Car> garagesMap = new HashMap<>();            
    + private Map<Integer, Car> garagesWithCar = new HashMap<>();
    ```
