const express = require('express');
const router = express.Router();

const routes = function(pool) {
  const {getingredients, addingredients, deleteingredients} = require('../database/ingredients')(pool);

  router.get("/", (req, res) => {
    getingredients().then(data => {
      res.json(data);
    })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });
  });

  router.post("/", (req, res) => {
    const {name,quantity} = req.body;
    addingredients({name,quantity})
    .then(data => {
      res.json(data);
    })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });
  });

  router.delete("/:id", (req, res) => {
    const id = req.params.id;
    deleteingredients(id).then(data => {
      res.json(data);
    })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });
  });

  return router;
};

module.exports = routes;