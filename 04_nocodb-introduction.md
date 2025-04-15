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

- create a databse with NocoDB
- understand the basic concept ideas

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

To use NocoDB, you must first create an account, which you will then use to log in. Once this is done, 
you’ll land on the NocoDB home page.

On the left-hand side, you’ll see general settings, team settings, integrations (which include settings 
for connected databases), and the option to create a new Base. In NocoDB, a Base essentially represents a 
database, but it also offers more options than just creating tables.

If you're using a brand-new account, you’ll already see a sample Base called Getting Started, which is also 
open by default and introduces some of NocoDB’s features.

All work and configuration is done in the main window. NocoDB is generally structured in such a way that at 
the top level, you always create a Base, in which tables can then be created. These tables can also be further 
subdivided, and you can create so-called Views. We'll take a closer look at how these work later. The left 
column always provides an overview of the existing Bases and general settings, while the main window to 
the right offers more specific information and options.

For now, we’ll ignore the sample Base and create our own Base to explore the features independently.
