DROP TABLE IF EXISTS Users CASCADE;
DROP TABLE IF EXISTS Recipes CASCADE;
DROP TABLE IF EXISTS Ingredients CASCADE;
DROP TABLE IF EXISTS Categories CASCADE;
 DROP TABLE IF EXISTS  RecipeIngredients CASCADE;

CREATE TABLE Users (
    id serial PRIMARY KEY,
 username VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Ingredients (
    id serial PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    quantity VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Categories(
    id serial PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Recipes (
    id serial PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    instructions TEXT NOT NULL,
    nutritional_information  JSONB,
    image_url VARCHAR(255)  NOT NULL,
    category_id  INT REFERENCES Categories(id),
    user_id INT REFERENCES Users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE RecipeIngredients (
    recipe_id INT REFERENCES Recipes(id),
    ingredient_id INT REFERENCES Ingredients(id),
    PRIMARY KEY (recipe_id, ingredient_id)
);