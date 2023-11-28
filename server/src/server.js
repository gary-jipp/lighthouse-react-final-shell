require('dotenv').config();
const express = require("express");
const uniqid = require('uniqid');
const morgan = require('morgan');
const path = require('path');

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
const pool = require('./database/connect');

// Use Routed Endpoints
const categoryRoutes = require('./routes/categoriesRoute');
app.use('/api/categories', categoryRoutes(pool));



const userRoutes = require('./routes/userRoute');
app.use('/api/user', userRoutes(pool));


const ingredientsRoutes = require('./routes/ingredientsRoutes');
app.use('/api/ingredients',ingredientsRoutes(pool));

const recipesRoutes = require('./routes/recipesRoutes');
app.use('/api/recipes',recipesRoutes(pool));


app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}!`);
});