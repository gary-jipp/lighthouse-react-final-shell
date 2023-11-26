const {Pool} = require("pg");

module.exports = function(pool) {

  const getuser= function() {
    const sql = "select * from Users order by id desc";

    return pool.query(sql)
      .then(res => {
        return res.rows;
      });
  };

  return {getuser};

};