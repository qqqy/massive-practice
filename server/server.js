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

//  PART ONE (1/3)
//  Below is the endpoint we'll make our request to. "ctrl" is the controller's exports that we've required-in above, which means ctrl.createTable is our handler function. Go to controller.js to learn how it works.

app.post('/api/create_table' , ctrl.createTable)


// PART TWO: Code your GET endpoint below.