
module.exports = function(pool) {

  const getItems = function() {
    const sql = "select * from items";

    return pool?.query(sql)
      .then(res => {
        return res.rows;
      });
  };

  const addItem = function(name) {
    const sql = 'insert into items (name) values ($1) returning *';

    return pool?.query(sql, [name])
      .then(res => {
        console.log(res.rows);
        return res.rows[0];
      });
  };

  return {getItems, addItem};
};