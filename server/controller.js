module.exports = {

  // PART ONE (2/?)
  // This is a very simple handler. All it does is send an sql request to the database and then send a confirmation to the front end if everything goes well. First...
  createTable(req, res){
    // ...it gains access to the massive methods via app.get()...
    const db = req.app.get("db");
    // ...then invokes the "create_table" method from massive. The method returns a promise object to .then. When the promise resolves, .then will run it's callback function...
    db.create_table().then(() => {
      //...and all the callback function does is send a status back to the front-end, which is postman.
      res.sendStatus(200)
      //All clear? Head to "create_table.sql" inside the "db" folder to learn a little more about how the massive method is created.
    }).catch(err => res.status(500).send(err))
  }
  ,

}