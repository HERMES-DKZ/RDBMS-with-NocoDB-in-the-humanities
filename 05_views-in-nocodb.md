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



In NocoDB, **Views** are different ways to display and interact with the records in a table. While the underlying data stays the same, each view gives you a unique perspective on that data, optimized for specific tasks like editing, sorting, filtering, collecting input, or tracking progress.

Using views allows you to:

- Customize how information is presented without altering the table’s structure  
- Focus on a specific subset of data using filters and sorting  
- Share only selected information with collaborators or the public  
- Collect structured input through web-based forms  

Each view type serves a different purpose and supports different workflows. For example, a **Grid View** is great for editing records directly, while a **Form View** is useful for collecting new entries from external users. A **Gallery View** emphasizes visual content, and a **Kanban View** is ideal for process tracking.

By combining different views, you can adapt the same dataset to a wide range of use cases, from internal team collaboration to public engagement, from raw data entry to polished overviews. All views are created by clicking on the table you want to get a new view of in the left side-bar. There you click on the little arrow, next to the tables name. If already done, you can see all views you created before. If you want to create a new view click **Create View**. This will open a dropdown where you choose which view type you want to create.


## Grid

The first view we want to look at, is the **Grid**. This view is the standard view in NocoDB you see every time you create a new table. It can be very helpful to create new views for this. Each Grid View can have its own filtering, sorting, and column visibility settings. 

Grid Views are also useful for customizing the table display for different audiences. For example, a team working on content might only need to see titles and publication status, while another team handling logistics may require technical fields and internal notes. With multiple views, each team can work efficiently with the same dataset in a way that suits their workflow.

Additionally, views can help maintain focus by hiding irrelevant columns, making it easier to review or edit records. They can also act as templates for repeated processes, such as quality checks, monthly reviews, or report preparation, allowing users to quickly switch between predefined perspectives.

In short, multiple Grid Views offer a powerful way to explore and work with your data from different angles, without cluttering your interface or losing time repeatedly adjusting filters or layouts.



## Form


In collaborative settings, it’s often useful to collect data from people who don’t have direct access to your database or who shouldn’t have access to existing data. This is where **Form Views** in NocoDB come in. They allow you to design a custom form that others can fill out, and their submissions are automatically added as new records to a table of your choice. This also has the advantage that data entry is less vulnerable and fields can be clearly defined and explained.

This is ideal for tasks such as:

- Collecting survey responses
- Enabling structured data entry
- Letting external collaborators contribute without viewing sensitive data or having an account


#### Creating a Form View

1. Look for the table where you want to collect new data, in our case it is the the METObjects table.
2. In the left sidebar, open the dropdown with the small arrow, there you cann see all views you created.
3. Click **“Create View”** and then select **“Form”** from the list of view types.
4. Give the form a **name** (e.g., `Art_Submissions_Form`) to help you identify it later.

You will now see the form editor interface, which displays all fields of your table in a vertical, form-like layout. 


#### Customizing the Form

NocoDB gives you several options to adjust how the form behaves and looks. Most of these customization options are found in the right side-bar:

- **Show or hide fields**: Use the toggles next to each field to include only the ones relevant for form respondents.
- **Reorder fields**: Drag and drop fields into a logical sequence to improve usability.
- **Appearance Settings**: You can change the color or hide the Branding.
- **Send Email**: It is possible to get an Email notification, if someone filled out the form


More customization can be done, if you click on the fields in the form directly. Here you can:

- **Change the field name**
- **Write explaining text**
- **Select, if the field is obligatory**
- **Define conditions for the field**


From here you can use the form for yourself to enter new data. This can be helpful if you have to enter complex data and want to minimize the risk of doing mistakes. The other possibility is to share this view, like we did before, to give others the possibility to enter new data.



#### Sharing the Form

If you click **Share** at the top right corner and **Enable Public Viewig**, you will get the link to share your form. Like mentioned before you will get different settings for different views. The two new options you get are the survey-mode, where you will not get the form as a whole directly, but question for question and the option to **Enable Pre-fill**. 
All responses submitted through the form are automatically added as **new rows** in the table the form is linked to. They appear in real time and can be reviewed, edited, filtered, and sorted just like any manually entered record.



::::::::::::::::::::::::::::::::::::: challenge

### Exercise: Creating a form 

In this task we want to create a form for adding new data into the table you created in Lesson 3. Create a form-view for this table and use it to submit the data from the lesson or search for new data you want to use in the Met-Collection. Search for a few artworks in the Met-Collection and safe the images on your computer, to submit these with the form aswell.

::::::::::::::::::::::::::::::::::::::::::::::::


## Gallery

The **Gallery View** displays each record as a card—ideal for image‑rich or visually oriented datasets. With the new data in our table we can display the artworks in this way. Like before, click **Create View** and **Gallery**. Enter a name for the gallery and choose the field with the image. 

#### Creating a Gallery View

1. **Open your table.**  
2. Click **View dropdown** → **Create View** → **Gallery**.  
3. Name the view (e.g., `Art_Thumbnails`) and click **Create**.

#### Customizing the Gallery

- **Primary image field**: Select an Attachment field for the card thumbnail.  
- **Fields on cards**: Toggle which fields (title, artist, year) appear on each card.  
- **Layout style**: Choose between compact or expanded card sizes.  
- **Filter & sort**: Apply filters to limit which cards show, and sort order to control their arrangement.



## Kanban

The **Kanban View** turns your data into draggable cards organized by a **Single Select** field—perfect for tracking status or progress.

#### Creating a Kanban View

1. **Open your table.**  
2. Click **View dropdown** → **Create View** → **Kanban**.  
3. Name the view (e.g., `Artwork_Workflow`) and click **Create**.  
4. Select a **Single Select** field (e.g., `Status`) as the grouping column.


::::::::::::::::::::::::::::::::::::: callout

### Callout: Kanban


For creating a Kanban View it es obligatory to have a **Single-Select-Field**. The Kanban board is then sorted according to the categories of the single-select field and can then be moved back and forth using drag and drop.


::::::::::::::::::::::::::::::::::::::::::::::::

#### Using Kanban

- **Drag & drop** cards between columns to update their status.  
- **Add new cards** directly in any column via the **+ New Record** button.  
- **Collapse columns** to focus on specific stages.  
- **Filter & sort** within Kanban to narrow down cards by artist, year, etc.



## Calendar View

The **Calendar View** displays your data as a calendar, ideal for scheduling or date-oriented datasets. With the new data in our table, we can, for example, display the exhibitions and events in this way. Like before, click **Create View** and **Calendar**. Enter a name for the calendar and choose the field with the date.

#### Creating a Calendar View

1. **Open your table.**  
2. Click **Create View** -> **Calendar**.  
3. Name the view (e.g., `Exhibition_Schedule`) and click **Create**.

::::::::::::::::::::::::::::::::::::: callout

### Callout: Calendar

For creating a Calendar View, it is recommended to have a **Date field**. The calendar will then be sorted according to the dates and can be used to schedule events and exhibitions. If there is no Date field you can use the system-field "created at" for the Calendar View, if you want to track when entries were created.

::::::::::::::::::::::::::::::::::::::::::::::::

#### Using the Calendar

- **View events by date**: See all events for a specific date.  
- **Drag & drop events**: Update the date or time of an event by dragging it to a new date.  
- **Add new events**: Create new events directly on the calendar via a double-blick on one day.  
- **Filter & sort**: Narrow down events by artist, location, or other fields.


::::::::::::::::::::::::::::::::::::: keypoints

- NocoDB offers different view types (Grid, Form, Gallery, Kanban, Calendar) to display and interact with your data in various ways.
- Each view can be customized with its own filters, sorting, and visible fields, allowing you to focus on specific aspects of your data.
- Views help you collaborate, collect input, and share selected information without changing the underlying table structure.
- Specialized views like Kanban and Calendar require specific field types (e.g., Single Select for Kanban, Date for Calendar) for optimal use.
- Using multiple views makes it easier to adapt the same dataset for different tasks and
::::::::::::::::::::::::::::::::::::::::::::::::
