require('dotenv').config();
const express = require("express");
const uniqid = require('uniqid');
const morgan = require('morgan');
const path = require('path');
const { Pool } = require('pg');

const { Configuration, OpenAIApi } = require("openai");

const app = express();
const PORT = process.env.PORT || 8080;

// serve static files from ../build (needed for React)
const cwd = process.cwd();
const public = path.join(cwd, '..', 'public');
app.use(express.static(public));
// Note: Do Not make a route for "/" below or it will override our static public

// So we can read JSON body requests
app.use(express.json());
app.use(morgan('dev'));

// Connect to Database
const pool = new Pool({
  user: process.env.ELEPHANT_USER,
  host: process.env.ELEPHANT_HOST,
  database: process.env.ELEPHANT_USER,
  password: process.env.ELEPHANT_PASSWORD,
  port: 5432, // Replace with your PostgreSQL port
});


// Use Routed Endpoints
const itemRoutes = require('./routes/itemRoutes');
app.use('/api/items', itemRoutes(pool));

app.get('/api/test', async (req, res) => {
  try {
    // Assuming you have a table named 'items'
    const result = await pool.query('SELECT * FROM dog_breeds');

    // Send the result as JSON to the client
    res.json(result.rows);
  } catch (error) {
    console.error('Error executing SQL query:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Simple Endpoint - no routes module
app.get("/api/status", (req, res) => {
  res.json({version: "1.01"});
});

app.use(function(req, res) {
  res.status(404);
});

app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}!`);
});