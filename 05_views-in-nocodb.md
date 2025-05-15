---
title: "Views"
teaching: 10
exercises: 3
---

:::::::::::::::::::::::::::::::::::::: questions

- Which views are given?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- create a new view
- share a view

::::::::::::::::::::::::::::::::::::::::::::::::




## Form


In collaborative settings, it’s often useful to collect data from people who don’t have direct access to your database — or who shouldn’t have access to existing data. This is where **Form Views** in NocoDB come in. They allow you to design a custom form that others can fill out, and their submissions are automatically added as new records to a table of your choice.

This is ideal for tasks such as:

- Collecting survey responses
- Enabling structured data entry
- Letting external collaborators contribute without viewing sensitive data

#### Creating a Form View

1. **Open the table** where you want to collect new data.
2. In the upper-left corner of the table interface, click on the **View dropdown** (usually set to “Grid” by default).
3. Click **“Create View”** and then select **“Form”** from the list of view types.
4. Give the form a **name** (e.g., `New_Art_Submissions_Form`) to help you identify it later.

You will now see the form editor interface, which displays all fields of your table in a vertical, form-like layout.

#### Customizing the Form

NocoDB gives you several options to adjust how the form behaves and looks:

- **Show or hide fields**: Use the toggles next to each field to include only the ones relevant for form respondents.
- **Reorder fields**: Drag and drop fields into a logical sequence to improve usability.
- **Field descriptions**: Click the gear icon next to a field to add a description or help text. This is helpful to explain what kind of input is expected.
- **Mark fields as required**: You can set certain fields as *mandatory*, preventing form submission until they’re filled out.
- **Default values**: You can pre-fill fields with default values that will be saved unless overwritten.
- **Customize form title and description**: Click the gear icon at the top of the form editor to rename your form and add an optional introduction or explanation.


#### Sharing the Form

Once your form is ready, it’s time to share it with others. NocoDB offers multiple sharing options:

1. **Click “Share Form”** in the top-right corner of the form editor.
2. You’ll now see the form’s public URL, which is instantly live and usable.
3. Copy this link and send it to collaborators, team members, or the public — no login or NocoDB account is required.

Additional options:

- **Password protection**: You can set a password for the form to control access, especially useful for internal use.
- **Set expiration date**: Define a date after which the form link becomes inactive.
- **Restrict submissions**: Limit how often a user can submit a response — e.g., one submission per person.
- **QR code**: NocoDB also generates a QR code automatically, which you can download and print or include in a presentation or flyer.


#### Viewing Submissions

All responses submitted through the form are automatically added as **new rows** in the table the form is linked to. They appear in real time and can be reviewed, edited, filtered, and sorted just like any manually entered record.



## Grid


## Gallery


## Kanban
