---
title: "Collaborative Work with NocoDB"
teaching: 10
exercises: 3
---

:::::::::::::::::::::::::::::::::::::: questions

- What possibilities are given for collaborative work?
- How can I build a team?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- invite members with and without an account
- assign different rights
- create a form for inserting new data

::::::::::::::::::::::::::::::::::::::::::::::::




NocoDB is not just a tool for individual work, it is also built to support teams and collaborative projects. Whether you're managing a shared research dataset, working on a team-based digital humanities project, or simply co-organizing information with colleagues, NocoDB provides powerful, yet easy-to-use features for collaborating directly within the database environment.

In this section, you will learn how to share access to your projects, manage permissions effectively, and create user-friendly forms to collect data from others — even from those who don’t have access to the database itself.



## Sharing a Project (Base)

In NocoDB, each project or collection of data is organized in what’s called a **Base** — similar to a standalone database. When working with others, you can choose to share an entire Base with your team members, collaborators, or external partners.

To begin sharing:

1. Go to your main NocoDB dashboard, where all your Bases are listed.
2. Click the Base you’d like to share.
3. In the top navigation bar click **Members**
4. With the **Add Members** button, you are now able to invite new members with their email.
5. You can invite as much users as you want in one step
6. Additional to inviting you need to define a role
7. Click **Invite to Base** to finish the process
This role feature is particularly helpful in academic or institutional settings, where access needs to be granted to different people with varying responsibilities and technical backgrounds.



## Managing Permissions

Once you've shared your Base, it's essential to control who can do what. NocoDB allows you to assign different **roles** to each user. These roles determine how much control they have over the data and structure of the Base.


::::::::::::::::::::::::::::::::::::: callout

### Callout: Roles


There are different roles with different rights in NocoDB:


- **Owner**: The highest permission level. Owners have all admin rights and can also manage access and delete the entire Base. There can be multiple owners, depending on the setup.

- **Creator**: Creator have full administrative rights, they got the same rights like the Owner, without deleting the base.

- **Editor**: Editors can add new records, edit existing entries, and interact with the data itself. However, they cannot change the structure of the table (e.g., adding new fields) or delete the Base. Perfect for data entry or team members updating records.

- **Commenter**: The Commenter cant enter data into the base and can not change anything. He can comment existing records.

- **Viewer**: This role allows users to only *view* the data. They cannot make any changes, delete records, or add anything new. Ideal for stakeholders who need oversight, but shouldn’t modify anything.
  
- **No Access**: This role removes a person's previous rights, which means they no longer have access to the base.

  


::::::::::::::::::::::::::::::::::::::::::::::::



To assign or change a user’s role:

1. Go to **"Members"** for your Base.
2. Find the user in the list or add them by email.
3. Choose the appropriate role from the dropdown menu next to their name.

Using these roles effectively helps keep your data safe, your team focused, and your workflow organized.


## Sharing Your Base

In some situations, you may want to share the content of a Base with others — without giving them the ability to edit or change anything. For example, you might want to publish a dataset so that colleagues, students, or the public can explore the information, but not accidentally modify it.

NocoDB makes this easy by allowing you to generate a **read-only shared link** for any Base. This creates a live, web-based version of your data that anyone can view — no account required. The rights are the same as for the **Viewer**

To share your Base as a read-only view:

1. Navigate to the Base you want to share.
2. Click on the **“Share”** button located in the top-right corner.
3. Form here you have the option to **Enable Public Viewing** or **Enable Public Access**
   1. Public Viewing will share only the specific view of one table you choose. Different Views will give you different options. We will look at these later.
   2. You can set Custom URL or a Password if you want to control the access
   3. Public Access shares the whole base with all tables and views
4. A link will be generated. You can copy and share this with others.

People who visit the link will see the Base as a web page. They can:

- View all tables and records
- Use filtering and sorting to explore the data
- Switch between views, if multiple exist
- Copy the base into the own environment

However, they **cannot**:

- Add, edit, or delete any data
- Access settings or structural elements of the Base


This option is a great way to promote transparency, enable lightweight collaboration, or simply allow others to explore and work with your data on their own terms. Also it can be used for the publication of a database. 




