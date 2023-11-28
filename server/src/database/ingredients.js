const {Pool} = require("pg");

module.exports = function(pool) {

  const getingredients = function() {
    const sql = "select * from Ingredients order by id desc";

    return pool.query(sql)
      .then(res => {
        return res.rows;
      });
  };

  const addingredients = function(name,quantity) {
    const sql = 'insert into Ingredients (name,quantity) values ($1,$2) returning *';

    return pool.query(sql, [name][quantity])
      .then(res => {
        return res.rows[0];
      });
  };

  const deleteingredients = function(id) {
    const sql = 'delete from Ingredients where id=($1) returning *';

    return pool.query(sql, [id])
      .then(res => {
        return res.rows[0];
      });
  };

  return {getingredients, addingredients, deleteingredients};

};