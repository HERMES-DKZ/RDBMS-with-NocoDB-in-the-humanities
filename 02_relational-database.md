---
title: "Relational Databases"
teaching: 10
exercises: 3
---

:::::::::::::::::::::::::::::::::::::: questions

- What is a relational database?
- How do keys work?
- What is a normal form?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- understand the differences of normal forms
- normalize data in tables

::::::::::::::::::::::::::::::::::::::::::::::::

In order to approach the topic as a whole, we first want to look at and understand the individual components in detail. 
As already mentioned, so-called keys are used to link tables in relational databases and thus make data storage and analysis more efficient. What exactly this means is explained below.

## Tables (Relations)

Tables are a fundamental tool for organizing and processing data in a structured way. 
They consist of rows and columns, much like what you're used to seeing in spreadsheet programs like Excel. Each column represents a specific attribute or characteristic—such as “Name,” “Date of Birth,” or “Email Address.” 
Each row represents a single data entry, showing the actual values for those attributes. More precisely, each column would represent a person and contain information about that person. This concept is transferable to all types of objects.

Tables provide a clear and easy-to-understand structure that works well for both humans and computers. They allow large amounts of information to be stored in an organized way, making it easy to search, sort, and analyze the data.

The widespread success of tables comes from their simplicity, clarity, and versatility. They can be adapted to many different types of data and serve as an ideal starting point for everything from simple lists to complex data analysis.


## Primary Key and Foreign Key

To structure and tidy up tables a little better, so-called keys are used in relational data modelling. What exactly this is used for will be explained in the next step. First of all, 
we want to understand what this concept actually means, as it is essential for the entire modelling process. These keys are used to create relationships between tables in the database 
and guarantee that each entry in a table can be uniquely referenced. If we think back to the tables for a moment, each column represents a data record, in our example a person. 
If we want to make this person uniquely referenceable, we can assign an ID. If this ID is unique and only exists once in the entire data record, it is referred to as the primary key.

::::::::::::::::::::::::::::::::::::: keypoints

- The primary Key must never be empty
- The primary Key must be unique

::::::::::::::::::::::::::::::::::::::::::::::::

If we now want to collect more information about that some person, that we do not want to store in the same table, we can create a new table and refer to the person with the Primary Key. If we use this key in the new table
we talk about a foreign key. This key is therefore used to create a relationship between the two tables, or between two entries in the tables. This allows information to be split into different tables in order to structure them better and more clearly without losing information. 
The advantages of this and how it is used in relational data modelling need to be clarified next.

::::::::::::::::::::::::::::::::::::: keypoints

- A **foreign key** must link to an existing **Primary Key**

::::::::::::::::::::::::::::::::::::::::::::::::


## First normal form


## Second normal form


## Third normal form
