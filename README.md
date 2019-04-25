# Massive Practice

*A repo for practicing massive.*

## Setup

- If you don't already have one, use heroku to create a practice database.
* If you're not sure how to do this, see the "Creating a Database" section below.
- Open SQLtabs and establish a connection to your practice database.
- Fork and Clone the repository
- `npm i`. This will install express, massive, and dotenv.
- Create a `.env` file in the root of your directory, and give it two properties:
* `SERVER_PORT = 4000`
* `CONNECTION_STRING =` followed by your practice database connection string. This should be the exact string you use in tabs to connect, including the `?ssl=true` query at the end.
- Run nodemon in the root of your project.

If `Server listening on 4000` appears in the console, then you are ready for Part One. If not, check the "Troubleshooting" section below.

## PART ONE: Create a Table

1. Before you begin, walk through the **STEP ONE** notes in `server.js` and `controller.js` to get a high-level understanding of the process.



## Troubleshooting

### Setup

**CONSOLE IS LOGGING `Server is listening on undefined`**

There's probably a problem with your .env variable. Try replacing both instances of `SERVER_PORT` inside your app.listen with `4000`. If that works, try the following;

1. Make sure the variable in `.env` is named `SERVER_PORT`
2. Make sure the line `const { SERVER_PORT , CONNECTION_STRING } = process.env;` has not been altered in any way.
3. Make sure that the first argument in `app.listen` is called `SERVER_PORT`, and also that the inserted variable in the console.log() is named the same.

**CONSOLE IS LOGGING `ERROR: Something is either wrong with your connection string, or with your database.`**

There's a problem either with your `.env` or your connection string. Try the following:

1. Make sure you can connect with your database using tabs. If you can't, your database might be down. 
2. If you can connect using tabs, check to be sure your `.env` is on the root of your project. 
* HINT: if you collapse all the folders inside of your project, you should still be able to see your `.env`. If not, it's inside a folder and needs to be moved out.
3. Try copying the connection string directly into your `massive()` invocation. Use the exact string you used to connect using tabs, but enclose it in quotations marks. 
* IMPORTANT: Do NOT push to github while your connection string is unprotected in `server.js`!
4. If that worked, check the `CONNECTION_STRING` variable in your `.env` to be sure both the variable key and the string itself are spelled correctly.


## Creating a Database

IN PROGRESS