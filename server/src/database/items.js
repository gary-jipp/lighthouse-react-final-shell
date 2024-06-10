const {Pool} = require("pg");

module.exports = function(pool) {

  const getItems = function() {
    const sql = "select * from items order by id desc";

    return pool.query(sql)
      .then(res => {
        return res.rows;
      });
  };

  const addItem = function(name) {
    const sql = 'insert into items (name) values ($1) returning *';

    return pool.query(sql, [name])
      .then(res => {
        return res.rows[0];
      });
  };

  const deleteItem = function(id) {
    const sql = 'delete from items where id=($1) returning *';

    return pool.query(sql, [id])
      .then(res => {
        return res.rows[0];
      });
  };

  return {getItems, addItem, deleteItem};

};