const {Pool} = require("pg");

const config = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME
};

delete config.password;  // So we don't log the password
console.log("Database Config:", config);
const pool = new Pool(config);

pool.connect()
  .then((conn) => {
    const info = {
      host: conn.connectionParameters.host,
      database: conn.connectionParameters.user,
      user: conn.connectionParameters.user,
    };
    console.log("Database Conected:", info);
  })
  .catch(err => console.log("database connection failed:", err.message));


module.exports = pool;