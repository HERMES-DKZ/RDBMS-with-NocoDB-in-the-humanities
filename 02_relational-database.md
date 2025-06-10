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

- Understand the differences of normal forms

- Normalize data in tables

::::::::::::::::::::::::::::::::::::::::::::::::

In order to approach the topic as a whole, we first want to look at and understand the individual components in detail. As already mentioned, so-called keys are used to link tables in relational databases and thus make data storage and analysis more efficient. What exactly this means is explained below.

## Tables (Relations)

Tables are a fundamental tool for organizing and processing data in a structured way. They consist of rows and columns, much like what you're used to seeing in spreadsheet programs like Excel. Each column represents a specific attribute or characteristic—such as “Name,” “Date of Birth,” or “Email Address.” Each row represents a single data entry, showing the actual values for those attributes. More precisely, each row represents a person and contains information about that person. This concept is transferable to all types of objects.

**Example: Artists Table**

| Name            | Date of Birth | ID (Primary Key) |

|-----------------|---------------|------------------|

| Thomas Eakins   | 25.7.1844     | 1                |

| Bill Traylor    | 1.4.1854      | 2                |


Tables provide a clear and easy-to-understand structure that works well for both humans and computers. They allow large amounts of information to be stored in an organized way, making it easy to search, sort, and analyze the data. The widespread success of tables comes from their simplicity, clarity, and versatility. They can be adapted to many different types of data and serve as an ideal starting point for everything from simple lists to complex data analysis.


## Primary Key and Foreign Key

To structure and tidy up tables a little better, so-called keys are used in relational data modelling. These keys are essential for creating relationships between tables and ensuring that each entry can be uniquely identified. A **Primary Key** is a column (or set of columns) in a table that uniquely identifies each row. It must never be empty and must be unique across the entire table. In the example above, the `ID` column serves as the primary key for the Artists table. It is also possible that the name is the primary key. However, this does not guarantee that it is unique, as names can occur more than once in a data record, even though they are different people. A combination of name and date of birth could also be selected as the primary key, but this is also not certain. For this reason, another column is used that contains no information about the actual data record, but makes it uniquely referencable.
Now, if we want to store information about artworks created by these artists, we could create a separate table for artworks. Instead of repeating all the artist details in the artworks table, we can use the artist's primary key as a reference. This reference, in the artwork table is called a **Foreign Key**.

**Example: Artworks Table**

| Title                             | Artist (Foreign Key) |

|-----------------------------------|----------------------|

| The Artist's Wife and His Setter Dog | 1                   |

| Blue Construction, Orange Figures | 2                   |

The foreign key in the Artworks table (`Artist`) refers to the primary key (`ID`) in the Artists table. This establishes a relationship between the two tables, allowing us to link each artwork to its artist without duplicating artist information. This separation of data into related tables reduces redundancy and makes the database more efficient and easier to maintain. However, for this to work effectively, we must ensure that:


::::::::::::::::::::::::::::::::::::: keypoints

- The **primary Key** must never be empty and must be unique.

- A **foreign key** must link to an existing **Primary Key**.

- Keys enable relationships between tables and reduce data redundancy.

::::::::::::::::::::::::::::::::::::::::::::::::



## Normal Forms

As the amount of information in a table grows, it's important to keep the data **well-structured and manageable**. This is where 
the concept of **normal forms** comes in, a systematic approach to organizing data so that it remains **clear, consistent**, 
and **easy to extend**. Normal forms build upon concepts you already know: **tables (relations)**, **primary keys**, and **foreign keys**. 
They help avoid common issues in database design, such as:

- **Data redundancy**: storing the same information multiple times.
- **Anomalies**: unwanted side effects when inserting, updating, or deleting data.
- **Lack of clarity**: tables that are hard to maintain or expand.

Imagine you want to add new features in the future, new fields, relationships, or more advanced queries. If your tables are 
well-structured, you can do that with minimal effort. Normal forms help create a **clean and flexible foundation** for your data. 
Another key advantage: normalized data makes it easier to work with **relationships between tables**. The result is a model that 
is both **logically sound** and **technically efficient**. We will explore three normal forms: First (1NF), Second (2NF), and 
Third (3NF). Each builds on the previous one, addressing specific types of problems.


### First Normal Form (1NF)

The First Normal Form (1NF) is the most basic level of normalization. A table is in 1NF if:

::::::::::::::::::::::::::::::::::::: callout

### Callout: 1NF

1. **Each column contains atomic values**: There should be no repeating groups or arrays within a single cell. Each field must contain a single value.
2. **Each record is unique**: There should be no duplicate rows.


::::::::::::::::::::::::::::::::::::::::::::::::




To illustrate, let's consider a table of artworks from the Metropolitan Museum of Art (The MET) in New York. We start with the following unnormalized table:

| Title                                                                                   | Artist                                                        | Accession Number | On View Location                                             |

|-----------------------------------------------------------------------------------------|----------------------------------------------------------------|------------------|----------------------------------------------------------------|

| The Artist's Wife and His Setter Dog                                                    | Thomas Eakins (American, Philadelphia, Pennsylvania 1844–1916) | 23.139           | The American Wing, 764                                        |

| The Champion Single Sculls (Max Schmitt in a Single Scull)                              | Thomas Eakins (American, Philadelphia, Pennsylvania 1844–1916) | 34.92            | The American Wing, 763                                        |

| A Gorge in the Mountains (Kauterskill Clove)                                            | Sanford Robinson Gifford (Greenfield, NY 1823–1880 NY)         | 15.30.62         | The American Wing, 761                                        |

| Marie Emilie Coignet de Courson (1716–1806) with a Dog                                  | Jean Honoré Fragonard (French, Grasse 1732–1806 Paris)         | 37.118           | European Paintings, 631                                       |

| Blue Construction, Orange Figures                                                       | Bill Traylor                                                  | 2015.756         | The Met Fifth Avenue in Gallery 773                           |

| Christ Carrying the Cross, with the Crucifixion                                         | Gerard David (Netherlandish, Oudewater ca. 1455–1523 Bruges)   | 1975.1.119A-B    | Robert Lehman Collection, 953                                 |



This table has several issues:

1. The **Artist** column contains multiple pieces of information: name, nationality, birthplace, and birth-death years.
2. The **On View Location** column combines the wing/department and the gallery number.

These non-atomic values make it difficult to search, sort, or filter by individual attributes (e.g., by artist nationality or gallery number).

To convert this table to 1NF, we split the composite fields into atomic values:

| Title                                   | Artist Name       | Artist Nationality | Artist Birthplace        | Artist Birth–Death Years | Accession Number | Department              | Gallery Number |

|-----------------------------------------|-------------------|--------------------|--------------------------|--------------------------|------------------|-------------------------|----------------|

| The Artist's Wife and His Setter Dog    | Thomas Eakins     | American           | Philadelphia, Pennsylvania | 1844–1916               | 23.139           | The American Wing       | 764            |

| The Champion Single Sculls              | Thomas Eakins     | American           | Philadelphia, Pennsylvania | 1844–1916               | 34.92            | The American Wing       | 763            |

| A Gorge in the Mountains                | Sanford R. Gifford| American           | Greenfield, NY          | 1823–1880               | 15.30.62         | The American Wing       | 761            |

| Marie Emilie Coignet de Courson         | Jean H. Fragonard| French             | Grasse                   | 1732–1806               | 37.118           | European Paintings      | 631            |

| Blue Construction, Orange Figures      | Bill Traylor      | American           | Benton, AL               | 1854–1949               | 2015.756         | The Met Fifth Avenue    | 773            |

| Christ Carrying the Cross               | Gerard David      | Netherlandish      | Oudewater                | 1455–1523               | 1975.1.119A-B    | Robert Lehman Collection| 953            |

Now each column holds a single piece of information. This table is in 1NF.

However, we still have problems:

- **Redundancy**: The artist details (e.g., Thomas Eakins) are repeated for each artwork by that artist.

- **Update Anomaly**: If we need to update an artist's birthplace, we must update it in every row for that artist. Missing one row would lead to inconsistency.

- **Insertion Anomaly**: We cannot add a new artist without adding an artwork.

- **Deletion Anomaly**: Deleting an artwork might remove the only record of an artist.

These issues are addressed by the Second Normal Form.




### Second Normal Form (2NF)


A table is in Second Normal Form (2NF) if:

::::::::::::::::::::::::::::::::::::: callout

### Callout: 2NF

1. It is in 1NF.
2. It has no partial dependencies; all non-key attributes must depend on the entire primary key.

::::::::::::::::::::::::::::::::::::::::::::::::

In our example, let's assume we have a composite primary key for the artworks table: `(Title, Artist Name)`. However, note that:

- `Artist Nationality`, `Artist Birthplace`, and `Artist Birth–Death Years` depend only on `Artist Name`, not on `Title`.
- `Department` and `Gallery Number` might depend on the artwork (but note: the same gallery number can appear in different departments?).

This partial dependency (non-key attributes depending on only part of the primary key) is not allowed in 2NF. To achieve 2NF, we split the table into two or more tables:

1. **Artists Table**: Contains artist-related attributes.
2. **Artworks Table**: Contains artwork-related attributes, with a foreign key to the artist.

**Artists Table:**

| ArtistID | Artist Name      | Nationality | Birthplace        | Birth_Death |

|----------|------------------|-------------|-------------------|-------------|

| 1        | Thomas Eakins   | American    | Philadelphia, PA  | 1844–1916   |

| 2        | Sanford R. Gifford| American  | Greenfield, NY    | 1823–1880   |

| 3        | Jean H. Fragonard| French     | Grasse            | 1732–1806   |

| 4        | Bill Traylor    | American    | Benton, AL        | 1854–1949   |

| 5        | Gerard David    | Netherlandish| Oudewater       | 1455–1523   |

**Artworks Table:**

| ArtworkID | Title                                   | Accession Number | Department              | Gallery Number | ArtistID (FK) |

|-----------|-----------------------------------------|------------------|-------------------------|----------------|---------------|

| 1         | The Artist's Wife and His Setter Dog    | 23.139           | The American Wing       | 764            | 1             |

| 2         | The Champion Single Sculls              | 34.92            | The American Wing       | 763            | 1             |

| 3         | A Gorge in the Mountains                | 15.30.62         | The American Wing       | 761            | 2             |

| 4         | Marie Emilie Coignet de Courson         | 37.118           | European Paintings      | 631            | 3             |

| 5         | Blue Construction, Orange Figures       | 2015.756         | The Met Fifth Avenue    | 773            | 4             |

| 6         | Christ Carrying the Cross               | 1975.1.119A-B    | Robert Lehman Collection| 953            | 5             |

Now, the Artists table has a primary key `ArtistID`, and the Artworks table has a primary key `ArtworkID` and a foreign key `ArtistID` linking to the Artists table. This design eliminates the redundancy of artist information. However, we still have an issue: The `Department` and `Gallery Number` in the Artworks table might not be entirely dependent on the artwork. In fact, the same gallery number might appear in multiple departments? Actually, each gallery number is unique to a department? But note: the gallery number 773 is in "The Met Fifth Avenue", while 764 is in "The American Wing". Moreover, if we have multiple artworks in the same gallery, the department-gallery pair would be repeated. This leads us to the Third Normal Form.

### Third Normal Form (3NF)

A table is in Third Normal Form (3NF) if:

::::::::::::::::::::::::::::::::::::: callout

### Callout: 3NF

1. It is in 2NF.
2. It has no transitive dependencies: non-key attributes must not depend on other non-key attributes.

::::::::::::::::::::::::::::::::::::::::::::::::


In the Artworks table, note that:  `Gallery Number` determines the `Department`? Or is it the other way around? Actually, the department is determined by the gallery location. But in reality, the gallery number is unique and might already imply the department.

However, in our table, we have both `Department` and `Gallery Number`. If the gallery number uniquely determines the department, then `Department` is transitively dependent on `Gallery Number` (a non-key attribute) rather than on the primary key (`ArtworkID`).

To resolve this, we create a separate table for galleries:

**Galleries Table:**

| GalleryID | Gallery Number | Department              |

|-----------|----------------|-------------------------|

| 1         | 764            | The American Wing       |

| 2         | 763            | The American Wing       |

| 3         | 761            | The American Wing       |

| 4         | 631            | European Paintings      |

| 5         | 773            | The Met Fifth Avenue    |

| 6         | 953            | Robert Lehman Collection|

Now, we can replace `Department` and `Gallery Number` in the Artworks table with a foreign key `GalleryID`:

**Artworks Table (3NF):**

| ArtworkID | Title                                   | Accession Number | GalleryID (FK) | ArtistID (FK) |

|-----------|-----------------------------------------|------------------|----------------|---------------|

| 1         | The Artist's Wife and His Setter Dog    | 23.139           | 1              | 1             |

| 2         | The Champion Single Sculls              | 34.92            | 2              | 1             |

| 3         | A Gorge in the Mountains                | 15.30.62         | 3              | 2             |

| 4         | Marie Emilie Coignet de Courson         | 37.118           | 4              | 3             |

| 5         | Blue Construction, Orange Figures       | 2015.756         | 5              | 4             |

| 6         | Christ Carrying the Cross               | 1975.1.119A-B    | 6              | 5             |

This design:

- Removes transitive dependencies (Department depends on Gallery, which is now in its own table).

- Reduces redundancy: The department for gallery 764 is stored only once.

We now have a fully normalized database in 3NF. The advantages are:

- **Reduced redundancy**: Each piece of information is stored only once.

- **Improved integrity**: Updates are straightforward (e.g., changing a gallery's department affects all related artworks).

- **Flexibility**: We can add new galleries, artists, or artworks without anomalies.

In summary, normalization helps us design databases that are efficient, consistent, and scalable.

::::::::::::::::::::::::::::::::::::: keypoints

- **1NF**: Eliminate repeating groups and ensure atomicity.

- **2NF**: Remove partial dependencies by splitting tables.

- **3NF**: Remove transitive dependencies by moving dependent attributes to new tables.

- Normalization reduces redundancy and prevents anomalies.

::::::::::::::::::::::::::::::::::::::::::::::::
