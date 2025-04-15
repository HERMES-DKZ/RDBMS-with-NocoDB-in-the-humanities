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
As already mentioned, so-called keys are used to link tables in relational databases and thus make data storage and 
analysis more efficient. What exactly this means is explained below.

## Tables (Relations)

Tables are a fundamental tool for organizing and processing data in a structured way. 
They consist of rows and columns, much like what you're used to seeing in spreadsheet programs like Excel. 
Each column represents a specific attribute or characteristic—such as “Name,” “Date of Birth,” or “Email Address.” 
Each row represents a single data entry, showing the actual values for those attributes. More precisely, each column 
would represent a person and contain information about that person. This concept is transferable to all types of objects.

Name | Date of Birth 
----- | -----
Thomas Eakins | 25.7.1844
Bill Traylor | 1.4.1854


Tables provide a clear and easy-to-understand structure that works well for both humans and computers. They allow large 
amounts of information to be stored in an organized way, making it easy to search, sort, and analyze the data.

The widespread success of tables comes from their simplicity, clarity, and versatility. They can be adapted to many 
different types of data and serve as an ideal starting point for everything from simple lists to complex data analysis.


## Primary Key and Foreign Key

To structure and tidy up tables a little better, so-called keys are used in relational data modelling. What exactly 
this is used for will be explained in the next step. First of all, 
we want to understand what this concept actually means, as it is essential for the entire modelling process. These 
keys are used to create relationships between tables in the database 
and guarantee that each entry in a table can be uniquely referenced. If we think back to the tables for a moment, 
each column represents a data record, in our example a person. 
If we want to make this person uniquely referenceable, we can assign an ID. If this ID is unique and only exists once 
in the entire data record, it is referred to as the primary key.

Name | Date of Birth | **ID (Primary Key)**
----- | ----- | -----
Thomas Eakins | 25.7.1844 | 1
Bill Traylor | 1.4.1854 | 2


If we now want to collect more information about that some person, that we do not want to store in the same table, we 
can create a new table and refer to the person with the Primary Key. If we use this key in the new table
we talk about a foreign key. This key is therefore used to create a relationship between the two tables, or between 
two entries in the tables. This allows information to be split into different tables in order to structure 
them better and more clearly without losing information. 
The advantages of this and how it is used in relational data modelling need to be clarified next.

Titel | Artist **(Foreign Key)**
----- | ----- 
The Artists Wife and His Setter Dof | 1
Blue Construction, Organge Figures | 2

::::::::::::::::::::::::::::::::::::: keypoints

- The **primary Key** must never be empty
- The **primary Key** must be unique
- A **foreign key** must link to an existing **Primary Key**

::::::::::::::::::::::::::::::::::::::::::::::::



## Normal Forms

As the amount of information in a table grows, it's important to keep the data **well-structured and manageable**. 
This is where the concept of **normal forms** comes in - a systematic approach to organizing data so that it remains **clear, 
consistent**, and **easy to extend**.

Normal forms build upon concepts you already know: **tables (relations)**, **primary keys**, and **foreign keys**. 
They help avoid common issues in database design, such as:

- **Data redundancy**: storing the same information multiple times  
- **Anomalies**: unwanted side effects when inserting, updating, or deleting data  
- **Lack of clarity**: tables that are hard to maintain or expand

Imagine you want to add new features in the future — new fields, relationships, or more advanced queries. 
If your tables are well-structured, you can do that with minimal effort. In a simple "all in one table" it can be very difficult
to apply changes. Normal forms help create a **clean and flexible foundation** for your data.

Another key advantage: normalized data makes it easier to work with **relationships between tables**. 
The result is a model that is both **logically sound** and **technically efficient**.



::::::::::::::::::::::::::::::::::::: keypoints

- Avoid duplication of data  
- Clear separation of responsibilities (each table has a specific role)  
- Fewer errors and inconsistencies  
- Easier to maintain and extend the database  

::::::::::::::::::::::::::::::::::::::::::::::::



### First normal form


To introduce the concept of the First Normal Form, we want to start by exploring the public collection of the [Metropolitan 
Museum of Art (The MET)](https://www.metmuseum.org/art/collection/search) in New York. Our goal is to create a curated dataset of artworks that include dogs, 
forming the foundation of a small, themed collection.

We began by extracting a selection of entries that were tagged with "dog". Here is a part of the raw table we compiled:

| Title                                                                                   | Artist                                                        | Accession Number | On View Location                                             |
|-----------------------------------------------------------------------------------------|----------------------------------------------------------------|------------------|----------------------------------------------------------------|
| The Artist's Wife and His Setter Dog                                                    | Thomas Eakins (American, Philadelphia, Pennsylvania 1844–1916) | 23.139           | The American Wing, 764                                        |
| The Champion Single Sculls (Max Schmitt in a Single Scull)                              | Thomas Eakins (American, Philadelphia, Pennsylvania 1844–1916) | 34.92            | The American Wing, 763                                        |
| A Gorge in the Mountains (Kauterskill Clove)                                            | Sanford Robinson Gifford (Greenfield, NY 1823–1880 NY)         | 15.30.62         | The American Wing, 761                                        |
| Marie Emilie Coignet de Courson (1716–1806) with a Dog                                  | Jean Honoré Fragonard (French, Grasse 1732–1806 Paris)         | 37.118           | European Paintings, 631                                       |
| Blue Construction, Orange Figures                                                       | Bill Traylor                                                  | 2015.756         | The Met Fifth Avenue in Gallery 773                           |
| Christ Carrying the Cross, with the Crucifixion                                         | Gerard David (Netherlandish, Oudewater ca. 1455–1523 Bruges)   | 1975.1.119A-B    | Robert Lehman Collection, 953                                 |

At first glance, this table seems to contain the basic information we need: title, artist, museum reference number, 
and viewing location. But let’s take a closer look. What happens if we want to search for all works by the same artist? 
How do we deal with artworks that appear to be listed more than once? What exactly is stored in the “On View Location” 
column — is it a department, a gallery number, or both? And what if we wanted to sort or filter artworks by gallery alone?

These questions reveal some issues with the structure of the table. The artist information includes names along with 
dates and places of birth and death, all mixed in a single field. Some entries are repeated, and the viewing location 
combines multiple details in a single cell. In this form, the data may be good enough for reading — but it’s far from 
ideal if we want to work with it programmatically, search through it efficiently, or extend it later.

This is where the concept of **First Normal Form (1NF)** comes into play. It provides a first step toward cleaning and 
structuring the data. The core idea is simple: each field in a table should hold **one single, atomic value**. 
There should be no lists, no combined information, no embedded structures. Each piece of data belongs in its own place.

To bring our MET dog collection into First Normal Form, we first need to separate combined data into individual fields. 
That means splitting up the location into department and gallery number, simplifying the artist field to only include the 
name, and making sure there are no duplicate records. After applying these changes, our structured table looks like this:

| Title                                          | Artist Name              | Accession Number | Department            | Gallery Number |
|-----------------------------------------------|--------------------------|------------------|------------------------|----------------|
| The Artist's Wife and His Setter Dog          | Thomas Eakins            | 23.139           | The American Wing      | 764            |
| The Champion Single Sculls                    | Thomas Eakins            | 34.92            | The American Wing      | 763            |
| A Gorge in the Mountains                      | Sanford R. Gifford       | 15.30.62         | The American Wing      | 761            |
| Marie Emilie Coignet de Courson with a Dog    | Jean H. Fragonard        | 37.118           | European Paintings     | 631            |
| Blue Construction, Orange Figures             | Bill Traylor             | 2015.756         | The American Wing      | 773            |
| Christ Carrying the Cross, with the Crucifixion               | Gerard David             | 1975.1.119A-B    | Robert Lehman Collection| 953            |

This version is now in First Normal Form. Each field contains just one value, and combined information has been clearly 
separated. This not only makes the table easier to understand, but also opens the door to further normalization in the 
next steps — where we’ll learn how to reduce redundancy and connect related data across multiple tables.


### Second normal form


### Third normal form
