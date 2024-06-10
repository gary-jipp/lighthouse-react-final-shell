const express = require('express');
const router = express.Router();

const routes = function(pool) {
  const {getItems, addItem, deleteItem} = require('../database/items')(pool);

  router.get("/", (req, res) => {
    getItems().then(data => {
      res.json(data);
    })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });
  });

  router.post("/", (req, res) => {
    const name = req.body.name;
    addItem(name).then(data => {
      res.json(data);
    })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });
  });

  router.delete("/:id", (req, res) => {
    const id = req.params.id;
    deleteItem(id).then(data => {
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