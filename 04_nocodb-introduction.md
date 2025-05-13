---
title: "NocoDB Introduction"
teaching: 10
exercises: 3
---

:::::::::::::::::::::::::::::::::::::: questions

- What is NocoDB?
- How does NocoDB connect Spreadsheets with a relational database?
- How can i use NocoDB?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Create a new Base and a table within it
- Add, rename, and configure fields (columns) in a table.
- Choose appropriate data types for different kinds of information.

::::::::::::::::::::::::::::::::::::::::::::::::


![Image from https://nocodb.com/](fig/nocodb.png)

As already mentioned, NocoDB, as a so-called no-code database, combines the ease of use of a spreadsheet 
with the flexibility of a relational database. It does this by providing an interface, the website, 
which is based on a ‘classic’ relational database such as Postgreql or MySQL. Fortunately, it is not necessary 
to understand exactly what this means in order to use it, an advantage of no-code databases. Put simply, 
a database is created and all the complicated and difficult commands that previously had to be carried out by 
programmers can be used via the website interface, including the creation of these. At the same time, 
it is also possible to use your own database and place NocoDB on top of this existing database to make 
further work with it easier. We will now take a look at exactly how this works. 
To make it as easy as possible to get started, we will use the online version of NocoDB in this lesson, 
which can be found [here](https://app.nocodb.com/). However, it is also possible to host your own version 
of NocoDB, either locally on your own computer or on a server. 

To be able to use NocoDB, you must first create an account and then log in with it. Once this is done, 
we land on the NocoDB homepage.


## Layout

To begin using NocoDB, the first step is to create an account. Once you've completed the registration and logged in, you’ll be taken to the NocoDB home page, where you can start exploring its features.

On the left-hand side of the interface, you’ll find the main navigation menu. This menu gives you access to general and team settings, integration options for connecting external databases, and the ability to create a new Base. In NocoDB, a Base is similar to what you might know as a database — it serves as a container for your tables, but also includes additional tools for organizing and interacting with your data.

If you're starting with a brand-new account, NocoDB will automatically include a sample Base called Getting Started. This example Base is opened by default and offers a brief introduction to some of the core features available in the platform.

The main work area is located in the center of the screen. NocoDB follows a clear structure: at the highest level, you create a Base, and within that Base, you can add one or more tables. These tables can then be further customized and organized using Views, which allow you to display and filter data in different ways — something we’ll explore in more detail later.

While the left-hand menu gives you an overview of all your Bases and access to general settings, the central window always shows the content or configuration options for whatever element you’re currently working with.


## Creating a Base

Instead of using the sample Base, let’s now create our own, so we can explore the features independently and build something from scratch.

To do this, click on Create Base, enter a name — for example, training_base — and then confirm by clicking create_base. You’ve now created your own Base, which is currently empty and ready to be filled with data.

NocoDB offers several ways to populate a Base: you can create a new table manually, import data from a file, or connect your Base to an external data source. For the purpose of this exercise, we’ll create a new table by hand.

Click on Create New Table, and give your table a name — let’s call it Art_Collection. This will open up an empty spreadsheet-like interface, where you can define the structure of your table. At the same time, you’ll notice that your new table has also appeared under your Base in the left-hand menu, giving you a quick way to navigate between tables.

If you’d like to add more tables to the same Base later on, you can simply hover over the Base name in the sidebar and click on the plus symbol that appears.

Now that we have an empty table, we need to define its fields before we can start entering data. Fields represent the different types of information you want to store — for instance, you might include fields for the name of the artist, the title of the artwork, the year it was created, and so on.


## Data Fields


Now that we’ve created our table, we need to define its structure by adding fields. Fields are the columns of your table. Each one represents a specific kind of information you want to store for every row (or record) in the table.
When you first create a table, NocoDB automatically adds a field called Title. This is a default field and cannot be deleted, but you can rename it and choose a different data type to make it fit your needs:

1. Locate the Title column in your table.
2. Click on the small arrow next to the field name Title.
3. From the dropdown menu, select Edit column.

In the dialog box that opens, you can:
+ Change the Field Name (for example, rename it to Artwork Title)
+ Select a Field Type from the list (e.g., Single line text, Number, etc.)
+ Optionally, add a Description to explain what this field is for — this is helpful when collaborating with others.
+ Click Save to apply your changes.

#### Adding a New Field

To add more fields:

1. Hover your mouse over the header row in the table, to the right of your existing fields.
2. Click on the plus icon (+) that appears.
3. In the dialog that opens, enter the Field Name (e.g., Artist).
4. Choose the appropriate Field Type.
5. Click Create Column to add the field to your table.

You can repeat this process to add as many fields as you need.


::::::::::::::::::::::::::::::::::::: callout

### Callout: Data Field Types

When creating or editing a field, NocoDB offers a range of data types to choose from. Selecting the right type helps keep your data consistent, makes it easier to sort or filter, and ensures others know what kind of input is expected.

Here are some of the most commonly used field types:

+ Single line text: For short text entries like names or titles.
+ Long text: For longer descriptions or notes.
+ Number: For any numerical values. You can define decimal places and minimum/maximum ranges.
+ Date: For calendar dates. You can also include time if needed.
+ Dropdown: Lets you define a fixed set of options from which users can choose. Useful for categories like Genre, Location, or Status.
+ Checkbox: A simple yes/no or true/false value.
+ Email / Phone / URL: Special text types that validate the input (e.g., only valid email addresses can be entered).
+ Formula: Calculates values based on other fields, similar to formulas in spreadsheet software.
+ Relation: Links this table to another table in your Base — useful when working with relational data.

::::::::::::::::::::::::::::::::::::::::::::::::



::::::::::::::::::::::::::::::::::::: challenge

### Exercise: Creating your own table

Now that you’ve learned how to create a Base and add tables and fields, it’s time to apply what you’ve learned.

1. Look at the example from the previous episode.
2. Create a new, empty table for it, either in your existing Base or in a new one.
3. Choose at least 5 informations and create fields using different field types (e.g. Text, Number, Date, Dropdown, Checkbox).
4. Name your fields based on what kind of data you expect (e.g. Title, Author, Year, etc.).
5. Try editing a field type or renaming a field.
6. Explore freely: test options, click around, and get familiar with the interface.

You don’t need to enter data yet — just focus on setting up the table structure.

::::::::::::::::::::::::::::::::::::::::::::::::
