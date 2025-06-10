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


NocoDB is not just a user-friendly no-code platform for working with data — it also includes powerful tools for **automation** and **integration**. Two of the most important features in this area are **APIs** and **Webhooks**. These tools make it possible to create very extensive and complex applications. We will therefore only briefly mention and understand how they work, as using them would require a separate lesson.


## APIs


An **API** (Application Programming Interface) is a standardized way for different software applications to communicate with each other. You can think of it like a digital menu: One system can ask another system for certain data or tell it to perform an action.

In the case of NocoDB, this means that you (or another application) can access your tables from outside the platform, for example, to retrieve data for a website, update records from a form, or automatically insert new entries from another tool.



### Why is the NocoDB API such a big deal?

The built-in API turns NocoDB into far more than just a spreadsheet-style tool. With it, you can:

- connect your tables to websites, apps, or reporting dashboards,  
- create automation workflows that respond to updates or triggers,  
- integrate NocoDB into existing IT infrastructure,  
- or even develop custom tools that interact with your database in real-time.

This openness and flexibility make NocoDB a powerful backend for both small projects and professional systems. If you use a classic database on your server you need to create the APIs aswell and write code for them. NocoDB creates the APIs automatically for every table and all of your data.



## Swagger API

Every base (database) and table in NocoDB comes with its own **REST API**. This means external systems can **read**, **create**, **update**, and **delete** records via HTTP — the same protocol that websites use.

Even if you’ve never worked with code before, NocoDB makes it easy to try out these features using a built-in tool called **Swagger UI**.



### What is Swagger?

**Swagger** (also known as **OpenAPI**) is a framework for documenting and testing APIs. NocoDB includes a Swagger interface that shows you:

- all available API endpoints (e.g., `GET /Art_Collection`),  
- which methods (GET, POST, PUT, DELETE) are supported,  
- what data you need to send or receive,  
- and what each request will return.

What makes it really useful: you can **interact with the API directly in your browser**, no setup, no coding required.


### Step-by-Step: Exploring the NocoDB API with Swagger

1. **Open your base** in NocoDB.  
2. Click the **three-dot menu (⋮)** next to the base name.  
3. Choose **“API Docs”** — this will open the Swagger interface.  
4. You'll see a list of available endpoints for your base, such as:  
   - `GET /Art_Collection` – get all records  
   - `POST /Art_Collection` – add a new record  
   - `DELETE /Art_Collection/{id}` – delete a specific record

> 📘 This view gives you full documentation and testing access at the same time.


### Example: Viewing data using the API

1. Scroll to the `GET /{table}` endpoint (e.g., `GET /Art_Collection`).  
2. Click the section to expand it, then click **“Try it out”**.  
3. Click **“Execute”**.  
4. You’ll see the API’s **response** below, usually in JSON format, for example:

```json
[
  {
    "Title": "Sunflowers",
    "Artist": "Vincent van Gogh",
    "Year": "1888",
    "Medium": "Oil on canvas"
  },
]
```

## API Code Snippets

NocoDB also helps you generate **ready-to-use code snippets** for various programming languages. This means you don’t need to write any code yourself,  you can just copy and paste. To use these you need an external IDE and know one of the Programming-Languages to use it properly.

### How to Copy API Snippets

1. Open the **API Docs** for your Base (see above).
2. Select an API action (e.g., `POST /{table}` to add a new record).
3. Scroll to the bottom of the endpoint description.
4. Click on the **"Code"** tab.
5. Choose a language from the dropdown — options include:

   - **cURL**
   - **Python**
   - **JavaScript (Fetch API)**
   - **Node.js (Axios)**
   - **Shell**

6. Copy the generated snippet and try running it in a simple environment like:

   - A Python file (`python script.py`)
   - An online code sandbox like Replit or JSFiddle
   - Your terminal, for cURL commands





## Webhooks (Intro & Idea)

Webhooks are the reverse of APIs. Instead of you requesting data from NocoDB, NocoDB sends data **to you**, or to another app, when something happens.

For example you could:

- Notify a Slack channel when a new form is submitted
- Trigger a script when a new record is added
- Send email notifications for updates



### How to Create a Webhook

1. Open your Base settings.
2. Go to the **“Automations”** section and choose **“Webhooks”**.
3. Click **“Create Webhook”**.
4. Define:
   - The **event** (e.g., "Row Created")
   - The **table** it should apply to
   - The **URL** that should receive the webhook (you can test this with [webhook.site](https://webhook.site))

5. Save the webhook and test it by adding or updating data.




The API and Webhooks are powerful tools that allow you to connect NocoDB to the wider digital ecosystem. You can:

- Automate tasks
- Build integrations with other tools (e.g., Google Sheets, Slack, Notion)
- Add dynamic content to websites or apps
- Create automated workflows based on data changes

Even if you’re not ready to use these tools now, knowing they exist opens the door to new ideas. And with NocoDB’s beginner-friendly interfaces like Swagger and pre-generated code snippets, it’s easier than ever to try them out — no coding background required.


