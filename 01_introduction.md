---
title: "Introduction"
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- What is a relational database?
- What is a spreadsheet?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain the difference between a relational database and a spreadsheet
- Explain the advantages and disadvantages

::::::::::::::::::::::::::::::::::::::::::::::::


## Introduction


::::::::::::: discussion

### Discussion: Do you use tables and if so, for which tasks?

Spreadsheets, like Microsoft Excel, are used in many areas of application, but they have their limits in many places. 
Have you noticed any limitations or problems in your work?

::::::::::::::::::::


Before we create a new database and fill it with information and data, we should learn the basic concept behind all this. 
What is a relational database or a spreadsheet, why should i use these and how do I organize my data to get the best 
use out of all these concepts.
To understand the starting point where we are coming from, we want to understand the basic idea behind the concepts.


## Spreadsheets

Spreadsheets are among the most versatile and widely used tools for organizing, analyzing, and presenting data. 
They offer an intuitive interface based on a grid of rows and columns, where users can input data, apply formulas, 
and create dynamic calculations. Tools like Microsoft Excel and Google Sheets are extremely accessible and powerful, 
with functions such as `SUM()`, `AVERAGE()`, `IF()` and `VLOOKUP()` that allow users to perform both simple and complex 
data analysis without programming experience.

In addition to basic operations, modern spreadsheets offer advanced features like pivot tables, conditional 
formatting, data validation, and even scripting capabilities via VBA or Google Apps Script. These make spreadsheets 
suitable for a wide range of applications — from budgeting and reporting to data collection and lightweight project management.

One of the major strengths of spreadsheets is their **flexibility**. Users can easily add or remove columns, merge 
cells, manually adjust content, and build structures that match their current needs. In many small or medium-sized 
projects, this flexibility is not just helpful, it's essential for getting started quickly and without barriers.

However, this flexibility can become a weakness as data grows in complexity. Spreadsheets are inherently **flat** — 
they’re designed for two-dimensional data. The more users try to represent relationships between different types of 
data (such as customers and orders, or artworks and artists), the more fragile and error-prone the spreadsheet becomes. 
Relationships are often created informally, using copy-paste, repeated values, or formulas like `VLOOKUP`, which are 
not resilient to structural changes or user mistakes.

As a result, spreadsheets can suffer from:
- **Data redundancy** (the same information repeated in multiple places),
- **Inconsistencies** (typos, outdated copies)
- **scalability issues** (hard to manage as more people work on the same file or as data volume increases).

This is where relational databases come in — not to replace spreadsheets entirely, but to offer a more robust 
and scalable alternative when the limitations of spreadsheets become apparent.



## Relational Databases

::::::::::::: discussion

### Discussion: Do you use databases and if so, for which tasks?

You may have heard of databases and maybe even use them, but do you know how they work and why they are used? 
Do you know advantages or disadvantages?

::::::::::::::::::::

Relational databases offer a structured and reliable way to manage complex, interrelated data. Unlike 
spreadsheets, which are flat and often lack enforced structure, relational databases store data in **multiple 
related tables**, each focusing on one specific type of information (e.g., users, products, orders). These 
tables are connected using **primary and foreign keys**, which define explicit relationships between them — and 
ensure **data integrity**.

In a relational model, information is stored once and referenced when needed. This minimizes redundancy, improves 
clarity, and makes data easier to update, search, and extend over time. For example, instead of writing an artist’s 
name next to every artwork, a database would store that artist in a dedicated `Artists` table and simply link 
to them via an `ArtistID`. This makes changes easy, avoids duplication, and enables rich queries like “Show all 
artworks by artists from France.”

Relational databases are typically queried using **SQL (Structured Query Language)**, a powerful language 
designed to extract, modify, and manage data. SQL commands such as `SELECT`, `INSERT`, `UPDATE`, and `DELETE` 
allow users to interact with even large, complex datasets in efficient and predictable ways.

While traditional database systems like MySQL or PostgreSQL require more technical knowledge than spreadsheets, 
modern **no-code tools like NocoDB** bridge that gap. These tools allow users to interact with databases through 
spreadsheet-like interfaces, while still benefiting from the structure and power of relational data models. 
In other words, they combine the **usability of spreadsheets** with the **robustness of relational databases**.



## What is NocoDB?

NocoDB combines exactly these two concepts and allows us to create databases with the clear interface of a spreadsheet. 
It is a so-called ‘no code database’, which makes it possible to set up and use a relational database without any coding 
experience. NocoDB also allows us to work collaboratively in a team and even enter and use data without a special account. 
NocoDB is also open source. This means that we could theoretically set up our own instance and thus create and use our data 
completely independently of others. It also offers many other options for connecting and utilising our data on the Internet, 
which we will not go into in this course.
