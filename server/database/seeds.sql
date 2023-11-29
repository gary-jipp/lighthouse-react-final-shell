
-- -- Insert Categories
INSERT INTO Categories (id,name)
VALUES
  (1,'Breakfast'),
  (2,'Salads'),
  (3,'Main Dishes'),
  (4,'Desserts'),
  (5,'Drinks');

-- Insert Ingredients
INSERT INTO Ingredients (id,name, quantity)
VALUES
  (1,'Eggs', '4'),
  (2,'Bacon', '200 grams'),
  (3,'Lettuce', '2 cups'),
  (4,'Chicken Breast', '300 grams'),
  (5,'Tomatoes', '3 medium'),
  (6,'Onions', '1 large'),
  (7,'Flour', '2 cups'),
  (8,'Sugar', '1 cup'),
  (9,'Chocolate Chips', '1 cup'),
  (10,'Ground Beef', '400 grams'),
  (11,'Pasta', '250 grams'),
  (12,'Milk', '1 cup'),
  (13,'Cheese', '1 cup'),
  (14,'Potatoes', '4 medium'),
  (15,'Olive Oil', '3 tablespoons'),
  (16,'Vanilla Extract', '1 teaspoon'),
  (17,'Baking Powder', '1 teaspoon'),
  (18,'Salt', '1/2 teaspoon'),
  (19,'Coffee', '1 cup'),
  (20,'Ice Cubes', 'As needed');

-- Insert more Recipes with Ingredients IDs and Detailed Instructions (All 20 Recipes)
INSERT INTO Recipes (id, name, description, instructions, nutritional_information, image_url, category_id, user_id)
VALUES
  (
    1,
    'Vegetarian Stir-Fry',
    'Colorful and flavorful vegetable stir-fry',
    '{"Chop and stir-fry your favorite vegetables.", "Add soy sauce and spices.", "Serve over rice."}',
    '{"calories": 250, "protein": 8, "carbs": 30}',
    'Vegetarian_Stir_Fry.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    2,
    'Margherita Pizza',
    'Classic pizza with tomato, mozzarella, and basil',
    '{"Roll out pizza dough.", "Add tomato sauce, cheese, and fresh basil.", "Bake until crust is golden."}',
    '{"calories": 400, "protein": 15, "carbs": 45}',
    'Margherita_Pizza.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    3,
    'Avocado Toast',
    'Simple and healthy avocado toast',
    '{"Toast bread.", "Spread mashed avocado on top.", "Sprinkle with salt and pepper."}',
    '{"calories": 200, "protein": 5, "carbs": 15}',
    'Avocado_Toast.jpeg', -- Updated image URL
    1,
    1
  ),
  (
    4,
    'Mango Salsa Chicken',
    'Grilled chicken topped with fresh mango salsa',
    '{"Grill chicken breasts.", "Top with a mix of diced mango, red onion, cilantro, and lime juice."}',
    '{"calories": 300, "protein": 20, "carbs": 25}',
    'Mango_Salsa_Chicken.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    5,
    'Spicy Shrimp Tacos',
    'Tacos filled with spicy shrimp, slaw, and avocado',
    '{"Saute shrimp with spices.", "Fill tortillas with shrimp, slaw, and sliced avocado."}',
    '{"calories": 350, "protein": 18, "carbs": 30}',
    'Spicy_Shrimp_Tacos.jpeg', -- Placeholder image URL
    3,
    1
  ),
  (
    6,
    'Greek Salad',
    'Fresh and tangy Greek salad with feta cheese',
    '{"Combine chopped cucumber, tomatoes, olives, and feta.", "Drizzle with olive oil and sprinkle with oregano."}',
    '{"calories": 300, "protein": 10, "carbs": 20}',
    'Greek_Salad.jpeg', -- Updated image URL
    2,
    1
  ),
  (
    7,
    'Pineapple Fried Rice',
    'Sweet and savory fried rice with pineapple',
    '{"Stir-fry rice with diced pineapple, vegetables, and soy sauce.", "Optional: add cooked shrimp or chicken."}',
    '{"calories": 400, "protein": 12, "carbs": 50}',
    'Pineapple_Fried_Rice.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    8,
    'Caprese Salad',
    'Classic Italian salad with tomatoes, mozzarella, and basil',
    '{"Slice tomatoes and mozzarella.", "Arrange on a plate with fresh basil.", "Drizzle with balsamic glaze."}',
    '{"calories": 250, "protein": 15, "carbs": 10}',
    'Caprese_Salad.jpeg', -- Updated image URL
    2,
    1
  ),
  (
    9,
    'Sushi Rolls',
    'Homemade sushi rolls with your favorite fillings',
    '{"Roll sushi with rice, seaweed, and your choice of fillings.", "Serve with soy sauce and pickled ginger."}',
    '{"calories": 350, "protein": 18, "carbs": 40}',
    'Sushi_Rolls.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    10,
    'Mushroom Risotto',
    'Creamy and comforting mushroom risotto',
    '{"Saute mushrooms and onions.", "Cook Arborio rice with broth until creamy.", "Finish with Parmesan cheese."}',
    '{"calories": 400, "protein": 10, "carbs": 45}',
    'Mushroom_Risotto.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    11,
    'Fruit Smoothie Bowl',
    'Healthy and colorful fruit smoothie bowl',
    '{"Blend your favorite fruits with yogurt.", "Top with granola, nuts, and fresh berries."}',
    '{"calories": 300, "protein": 8, "carbs": 40}',
    'Fruit_Smoothie_Bowl.jpeg', -- Updated image URL
    1,
    1
  ),
  (
    12,
    'BBQ Pulled Pork Sandwich',
    'Slow-cooked pulled pork in barbecue sauce',
    '{"Cook pork shoulder in slow cooker.", "Shred and mix with barbecue sauce.", "Serve in a bun."}',
    '{"calories": 500, "protein": 25, "carbs": 35}',
    'BBQ_Pulled_Pork_Sandwich.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    13,
    'Cauliflower Crust Pizza',
    'Low-carb pizza with cauliflower crust',
    '{"Make crust with cauliflower, cheese, and egg.", "Add your favorite toppings.", "Bake until crispy."}',
    '{"calories": 350, "protein": 15, "carbs": 25}',
    'Cauliflower_Crust_Pizza.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    14,
    'Lemon Garlic Butter Shrimp',
    'Quick and flavorful lemon garlic butter shrimp',
    '{"Saute shrimp in garlic and butter.", "Squeeze fresh lemon juice.", "Garnish with parsley."}',
    '{"calories": 250, "protein": 20, "carbs": 5}',
    'Lemon_Garlic_Butter_Shrimp.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    15,
    'Quinoa Salad',
    'Nutrient-packed quinoa salad with vegetables',
    '{"Cook quinoa.", "Toss with diced cucumber, cherry tomatoes, and feta.", "Drizzle with olive oil."}',
    '{"calories": 300, "protein": 12, "carbs": 40}',
    'Quinoa_Salad.jpeg', -- Updated image URL
    2,
    1
  ),
  (
    16,
    'Chicken Caesar Wrap',
    'Grilled chicken, romaine lettuce, and Caesar dressing in a wrap',
    '{"Grill chicken.", "Wrap with romaine lettuce and Caesar dressing in a tortilla."}',
    '{"calories": 400, "protein": 20, "carbs": 30}',
    'Chicken_Caesar_Wrap.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    17,
    'Vegetable Lasagna',
    'Layered vegetable lasagna with marinara sauce and cheese',
    '{"Layer lasagna noodles with marinara sauce, vegetables, and cheese.", "Bake until bubbly."}',
    '{"calories": 350, "protein": 15, "carbs": 30}',
    'Vegetable_Lasagna.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    18,
    'Peach Cobbler',
    'Sweet and juicy peach cobbler with a golden crust',
    '{"Mix peaches with sugar and spices.", "Top with a buttery biscuit crust.", "Bake until golden brown."}',
    '{"calories": 300, "protein": 3, "carbs": 45}',
    'Peach_Cobbler.jpeg', -- Updated image URL
    4,
    1
  ),
  (
    19,
    'Teriyaki Salmon',
    'Grilled teriyaki-glazed salmon fillets',
    '{"Marinate salmon in teriyaki sauce.", "Grill until fish flakes easily with a fork."}',
    '{"calories": 350, "protein": 25, "carbs": 15}',
    'Teriyaki_Salmon.jpeg', -- Updated image URL
    3,
    1
  ),
  (
    20,
    'Chocolate Avocado Mousse',
    'Rich and creamy chocolate mousse made with avocados',
    '{"Blend avocados, cocoa powder, and sweetener until smooth.", "Chill before serving."}',
    '{"calories": 200, "protein": 5, "carbs": 20}',
    'Chocolate_Avocado_Mousse.jpeg' ,-- Updated image URL
    4,
    1
  );

-- Insert into RecipeIngredients table
INSERT INTO RecipeIngredients (recipe_id, ingredient_id)
VALUES
  (1, 3), (1, 5), (1, 6),  -- Ingredients IDs for Lettuce, Tomatoes, and Onions
  (2, 7), (2, 5), (2, 13), -- Ingredients IDs for Flour, Tomatoes, and Cheese
  (3, 1), (3, 6), (3, 18), -- Ingredients IDs for Eggs, Onions, and Salt
  (4, 4), (4, 5), (4, 6), (4, 16), (4, 15), -- Ingredients IDs for Chicken Breast, Tomatoes, Onions, Vanilla Extract, and Olive Oil
  (5, 10), (5, 15), (5, 5), (5, 16), (5, 18), -- Ingredients IDs for Ground Beef, Olive Oil, Tomatoes, Vanilla Extract, and Salt
  (6, 3), (6, 5), (6, 13), (6, 15), (6, 18), -- Ingredients IDs for Lettuce, Tomatoes, Cheese, Olive Oil, and Salt
  (7, 11), (7, 4), (7, 16), (7, 5), (7, 20), -- Ingredients IDs for Pasta, Chicken Breast, Vanilla Extract, Tomatoes, and Ice Cubes
  (8, 5), (8, 13), (8, 16), -- Ingredients IDs for Tomatoes, Cheese, and Vanilla Extract
  (9, 11), (9, 16), (9, 18), (9, 20), -- Ingredients IDs for Pasta, Vanilla Extract, Salt, and Ice Cubes
  (10, 6), (10, 16), (10, 18), -- Ingredients IDs for Onions, Vanilla Extract, and Salt
  (11, 4), (11, 7), (11, 11), (11, 12), -- Ingredients IDs for Mango Salsa Chicken, Flour, Pasta, and Milk
  (12, 10), (12, 8), (12, 5), (12, 12), -- Ingredients IDs for Ground Beef, Sugar, Tomatoes, and Milk
  (13, 7), (13, 13), (13, 16), -- Ingredients IDs for Flour, Tomatoes, and Vanilla Extract
  (14, 10), (14, 15), (14, 18), -- Ingredients IDs for Ground Beef, Olive Oil, and Salt
  (15, 1), (15, 3), (15, 5), (15, 13), (15, 15), (15, 18), -- Ingredients IDs for Eggs, Lettuce, Tomatoes, Cheese, Olive Oil, and Salt
  (16, 4), (16, 5), (16, 6), (16, 15), -- Ingredients IDs for Chicken Breast, Tomatoes, Onions, and Olive Oil
  (17, 7), (17, 13), (17, 16), -- Ingredients IDs for Flour, Tomatoes, and Vanilla Extract
  (18, 9), (18, 8), (18, 16), (18, 18), -- Ingredients IDs for Chocolate Chips, Sugar, Vanilla Extract, and Salt
  (19, 4), (19, 5), (19, 16), -- Ingredients IDs for Chicken Breast, Tomatoes, and Vanilla Extract
  (20, 9), (20, 16), (20, 18); -- Ingredients IDs for Chocolate Chips, Vanilla Extract, and Salt
