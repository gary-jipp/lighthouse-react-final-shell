const express = require('express');
const router = express.Router();

const routes = function(pool) {
  const {getrecipes, addrecipes, deleterecipes} = require('../database/recipes')(pool);

  router.get("/", (req, res) => {
    getrecipes().then(data => {
      res.json(data);
    })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });
  });

  router.post("/", (req, res) => {
    const { name, description, instructions, nutritional_information, image_url, category_id, user_id } = req.body;
    addrecipes(name).then(data => {
      res.json(data);
    })
      .catch(err => {
        console.log(err.message);
        res.status(500).json({error: err.message});
      });
  });

  router.delete("/:id", (req, res) => {
    const id = req.params.id;
    deleterecipes(id).then(data => {
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