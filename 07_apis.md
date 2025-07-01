---
title: "APIs"
teaching: 10
exercises: 3
---

:::::::::::::::::::::::::::::::::::::: questions

- What advanced options does NocoDB offer?
- What is an API?
- How can I use the API from NocoDB?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- explain the basic idea of APIs
- explain the basic idea of a webhook
- use the "Get-Method" through the Swagger-API

::::::::::::::::::::::::::::::::::::::::::::::::


NocoDB is not just a user-friendly no-code platform for working with data, it also includes powerful tools for **automation** and **integration**. Two of the most important features in this area are **APIs** and **Webhooks**. These tools make it possible to create very extensive and complex applications. We will therefore only briefly mention and understand how they work, as using them would require a separate lesson.


## APIs


An **API** (Application Programming Interface) is a standardized way for different software applications to communicate with each other. APIs work like a messenger between two programs: one program sends a request, and the other sends back a response. The most common API methods are GET (to read or fetch data), POST (to add new data), PUT (to update existing data), and DELETE (to remove data). You can think of them like asking a library: GET is asking for a book, POST is donating a new book, PUT is updating a book’s information, and DELETE is removing a book from the shelf.

In the context of NocoDB, this means that you or other applications—can access your tables from outside the platform. For example, you could retrieve data for a website, update records via a form, or automatically add new entries from other tools. Imagine your data is stored as a file on a web server: your browser accesses it through NocoDB’s API to read or modify information. But it’s not just your browser, any program can use the API to interact with your data, read it, or make changes. This turns NocoDB into a central hub for data exchange between different applications.



### Why is the NocoDB API such a big deal?

The built-in API turns NocoDB into far more than just a spreadsheet-style tool. With it, you can:

- connect your tables to websites, apps, or reporting dashboards,  
- create automation workflows that respond to updates or triggers,  
- integrate NocoDB into existing IT infrastructure,  
- or even develop custom tools that interact with your database in real-time.

This openness and flexibility make NocoDB a powerful backend for both small projects and professional systems. If you use a classic database on your server you need to create the APIs aswell and write code for them. NocoDB creates the APIs automatically for every table and all of your data.



## Swagger API

Every base (database) and table in NocoDB comes with its own **REST API**. This means external systems can **read**, **create**, **update**, and **delete** records.

Even if you’ve never worked with code before, NocoDB makes it easy to try out these features using a built-in tool called **Swagger UI**.



### What is Swagger?

**Swagger** (also known as **OpenAPI**) is a framework for documenting and testing APIs. NocoDB includes a Swagger interface that shows you:

- all available API endpoints (e.g., `GET /Art_Collection`),  
- which methods (GET, POST, PUT, DELETE) are supported,  
- what data you need to send or receive,  
- and what each request will return.

What makes it really useful: you can **interact with the APIs directly in your browser**, no setup, no coding required.


### Example: Viewing data using the API

The Swagger API interface in NocoDB shows you a list of all tables in your base. For each table, you will see the most common API methods: **GET** (read data), **POST** (add new data), **PUT** (update data), and **DELETE** (remove data). Each method is clearly listed as an endpoint, and you can try them out directly in your browser. This means you can test reading, creating, updating, or deleting records for any table without writing any code—just by clicking and filling out simple forms in the Swagger UI.


1. **Open your base** in NocoDB.  
2. Click the the base name in the top left corner.  
3. Choose **“Rest APIs”** — this will open the Swagger interface.  
4. You'll see a list, for each table, of available endpoints for your base, such as:  
   - `GET` – get all records  
   - `POST` – add a new record  
   - `DELETE` – delete a specific record

To access your NocoDB API securely, you need an **API Token**. This token acts like a password for your API requests, making sure that only authorized users can read or change your data. Without a token, most API endpoints will not allow access.

**How to create and use an API Token:**

1. In NocoDB, click on your user profile in the bottom left corner and on **Account Settings**.
2. Select **"API Tokens"** from the menu on the left.
3. Click **"Add new token"** and give it a name (e.g., "My Swagger Test") and click **Save**.
4. Copy the generated token.


--- 

The next thing we want to do is to get our data from our MET dataset through the API. To do this, look for the right table in the swagger API. If you did not delete the example tables from NocoDB you should see "Sample Views", "Keyboard Shortcuts" and "Quick Reference Links". After these your own table should be shown. 

1. Click on the small lock and paste your API-Token and click **authorize**. 
2. Open the methods you got with the small arrow next to the lock.
3. Click **Try it out** to activate your API.
4. Scroll down and click **Execute**
5. You’ll see the API’s **response** below, usually in JSON format, for example:

```json
[
    {
      "Id": 1,
      "Object ID": "649082",
      "Is Public Domain": "False",
      "Department": "Drawings and Prints",
      "AccessionYear": "1970.0",
      "Object Name": "Print",
      "Title": "Birds in the Nest (in Parables from Nature, opp. p. 327)",
      "Culture": null,
      "Artist Display Name": "Horace Harral; Joseph Wolf",
      "Artist Display Bio": "British, Ipswich 1817–1905 Hastings|German, Moers 1820–1899 London",
      "Object Date": "1865",
      "Object Begin Date": "1865",
      "Object End Date": "1865",
      "Medium": "Wood engraving",
      "Dimensions": "Image: 5 1/16 × 3 3/4 in. (12.9 × 9.6 cm)\r\nSheet: 8 7/16 × 5 1/2 in. (21.5 × 14 cm)",
      "City": "London",
      "Tags": null,
      "Link Resource": "http://www.metmuseum.org/art/collection/search/649082",
      "Object Wikidata URL": null,
      "CreatedAt": "2025-06-26 10:29:21+00:00",
      "UpdatedAt": null
    }
]
```

APIs not only allow easy access to individual records, but also enable the combination and filtering of data through targeted queries. By using different parameters and filters in your API requests, you can select, sort, or group very specific datasets. For example, you can retrieve only certain entries based on criteria such as date, category, or status. This flexibility allows you to perform complex analyses and evaluations directly via the API and process the results in other applications. The API thus becomes a versatile tool for using data efficiently and in a customized way.




## Webhooks (Intro & Idea)

Webhooks are the reverse of APIs. Instead of you requesting data from NocoDB, NocoDB sends data **to you**, or to another app, when something happens.

For example you could:

- Notify a Slack channel when a new form is submitted
- Trigger a script when a new record is added
- Send email notifications for updates



### How to Create a Webhook

1. Open your Table Details in the top row.
2. Go to the **"Webhooks"** section.
3. Click **“New Webhook”**.
4. Define:
   - The **event** (e.g., "Row Created")
   - The **table** it should apply to
   - The **URL** that should receive the webhook (you could test this with [webhook.site](https://webhook.site))




The API and Webhooks are powerful tools that allow you to connect NocoDB to the wider digital ecosystem. You can:

- Automate tasks
- Build integrations with other tools (e.g., Google Sheets, Slack, Notion)
- Add dynamic content to websites or apps
- Create automated workflows based on data changes

Even if you’re not ready to use these tools now, knowing they exist opens the door to new ideas. And with NocoDB’s beginner-friendly interfaces like Swagger and pre-generated code snippets, it’s easier than ever to try them out — no coding background required.


::::::::::::::::::::::::::::::::::::: keypoints

- NocoDB automatically provides a REST API for every table, allowing you to read, create, update, and delete records from external applications.
- The built-in Swagger UI lets you explore, test, and interact with the API directly in your browser—no coding required.
- API requests can be filtered and customized using parameters, making it easy to retrieve exactly the data you need.
- Access to the API is secured with API tokens, ensuring only authorized users can interact with your data.
- Webhooks let NocoDB actively send data to other apps or services when certain events occur, enabling automation and integration.

::::::::::::::::::::::::::::::::::::::::::::::::
