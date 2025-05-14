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

::::::::::::::::::::::::::::::::::::::::::::::::




NocoDB is not just a tool for individual work — it is also built to support teams and collaborative projects. Whether you're managing a shared research dataset, working on a team-based digital humanities project, or simply co-organizing information with colleagues, NocoDB provides powerful, yet easy-to-use features for collaborating directly within the database environment.

In this section, you will learn how to share access to your projects, manage permissions effectively, and create user-friendly forms to collect data from others — even from those who don’t have access to the database itself.



## Sharing a Project (Base)

In NocoDB, each project or collection of data is organized in what’s called a **Base** — similar to a standalone database. When working with others, you can choose to share an entire Base with your team members, collaborators, or external partners.

To begin sharing:

1. Go to your main NocoDB dashboard, where all your Bases are listed.
2. Hover over the Base you’d like to share.
3. Click the **three-dot menu** (⋮) next to the Base name.
4. Select **"Manage Access"** or **"Share"** from the menu.
5. You will now see options to:
   - Invite specific users via email
   - Generate a secure share link
   - Adjust access levels for each user or group

This feature is particularly helpful in academic or institutional settings, where access needs to be granted to different people with varying responsibilities and technical backgrounds.



## Managing Permissions

Once you've shared your Base, it's essential to control who can do what. NocoDB allows you to assign different **roles** to each user. These roles determine how much control they have over the data and structure of the Base.


::::::::::::::::::::::::::::::::::::: callout

### Callout: Roles

There are different roles with different rights in NocoDB:

- **Viewer**: This role allows users to only *view* the data. They cannot make any changes, delete records, or add anything new. Ideal for stakeholders who need oversight, but shouldn’t modify anything.
  
- **Editor**: Editors can add new records, edit existing entries, and interact with the data itself. However, they cannot change the structure of the table (e.g., adding new fields) or delete the Base. Perfect for data entry or team members updating records.

- **Admin**: Admins have full access to the data and the structure. They can add or delete fields and tables, set up new views, or configure integrations. This role is best suited for project leads or technically experienced collaborators.

- **Owner**: The highest permission level. Owners have all admin rights and can also manage access and delete the entire Base. There can be multiple owners, depending on the setup.

::::::::::::::::::::::::::::::::::::::::::::::::



To assign or change a user’s role:

1. Go to **"Manage Access"** for your Base.
2. Find the user in the list or add them by email.
3. Choose the appropriate role from the dropdown menu next to their name.

Using these roles effectively helps keep your data safe, your team focused, and your workflow organized.


## Collecting Data via Forms

Sometimes you don’t need collaborators to have access to the full database — you just want them to submit data in a structured way. For example, you might want colleagues to contribute new entries to your `Art_Collection` table, but without seeing other entries or changing anything.

In these cases, NocoDB’s **Form View** is a perfect solution.

A **Form View** allows you to create a web form that others can fill out. Their responses will go directly into the corresponding table in your Base — just like if you or an Editor added them manually.

#### Creating a Form View

1. Open the table where you want to collect data.
2. At the top-left of the table, open the **View menu** (default is usually *Grid*).
3. Click **“Create View”**, then select **“Form”**.
4. A new view will open in a clean, easy-to-fill layout.

You can now configure your form:

- **Show or hide fields**: Maybe you only want people to enter certain values — you can hide the rest.
- **Set required fields**: Prevent submissions with missing data.
- **Reorder fields**: Drag and drop to make the form logical and easy to follow.
- **Use field descriptions**: Add instructions or context to help respondents fill it in correctly.



1. Once the form looks good, click **“Share Form”** in the top right corner.
2. Copy the generated link.
3. Share this link with anyone — even people outside your organization.

When someone submits the form, the data will appear in your table instantly, as a new record.


Forms are especially helpful in:
- Surveys
- Data collection from field work
- Submissions from contributors or the public


