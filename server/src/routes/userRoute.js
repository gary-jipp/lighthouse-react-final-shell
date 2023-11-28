const express = require('express');
const router = express.Router();

const routes = function(pool) {
  const {getuser} = require('../database/user')(pool);

  router.get("/", (req, res) => {
    getuser().then(data => {
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