CREATE TABLE ingredients (
  Ingredient_id SERIAL PRIMARY KEY
  );
  
 CREATE TABLE grocery_list (
   Grocery_list_id SERIAL PRIMARY KEY,
   Ingredient_id INTEGER REFERENCES ingredients(Ingredient_id)
   );

CREATE TABLE occasions (
   Occasions_id SERIAL PRIMARY KEY
    );

CREATE TABLE recipes (
  Recipe_id SERIAL PRIMARY KEY,
  Public_recipes VARCHAR(255),
  Private_recipes VARCHAR(255),
  Ingredient_id INTEGER REFERENCES ingredients(Ingredient_id),
  Occassions_id INTEGER REFERENCES occasions(Occasions_id)
  );
  
  CREATE TABLE users (
   User_id SERIAL PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(255),
    Recipe_id INTEGER,
    Grocery_list_id INTEGER
    );