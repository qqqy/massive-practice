const express = require("express");
const massive = require("massive");
const app = express();
require("dotenv").config();
const { SERVER_PORT , CONNECTION_STRING } = process.env
const ctrl = require("./controller")

massive(CONNECTION_STRING).then((dbInstance) => {
  app.set("db" , dbInstance);
  app.listen(SERVER_PORT , () => {
    console.log(`Server listening on ${SERVER_PORT}`)
  })
}).catch(err => console.log("ERROR: Something is either wrong with your connection string, or with your database.", '\n' , "ERROR LOG:" , err))

//  PART ONE (1/?)
//  Here's how we make a request to a database using massive:

//    1. The front-end (or client) makes a request to one of the server's endpoints.
//    2. The endpoint invokes a handler function and passes-in the req and res objects.
//    3. The server's handler function for that endpoint invokes one of massive's methods.
//    4. The method returns a promise object and makes a request to the database, handing it an sql script. 
//    5. The database runs the SQL script and sends a response back to the server.
//    6. The promise object resolves into the database's reply.
//    7. The handler processes the reply and sends a response to the front end. 

//  To keep things simple in this project, the front-end will just be postman. For part one, steps 2 - 7 of the massive journey have already been coded... you'll just need to make the postman request. 
//  Below is the endpoint we'll make the reqest to. "ctrl" is the controller's exports that we've required-in above, which means ctrl.createTable is our handler function. Go to controller.js to learn how it works.

app.post('/api/create_table' , ctrl.createTable)