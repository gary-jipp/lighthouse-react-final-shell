const express = require('express');
const router = express.Router();

const routes = function(pool) {
  const {getItems} = require('../database/items')(pool);

  router.get("/", (req, res) => {
    getItems(pool)
      .then(data => {
        res.json(data);
      })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });
  });

  router.post("/", (req, res) => {
    const name = req.body.name;
    addItem(pool, name)
      .then(data => {
        res.json(data);
      })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });

    res.json(item);
  });

  router.delete("/:id", (req, res) => {
    const id = req.params.id;
    deleteItem(pool, id)
      .then(data => {
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