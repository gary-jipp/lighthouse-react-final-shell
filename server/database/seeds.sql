
-- Insert Categories
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







-- -- -- Insert more Recipes
-- INSERT INTO Recipes (1d,name, description, instructions, nutritional_information, image_url, category_id, user_id)
-- VALUES
--   (
--     'Vegetarian Stir-Fry',
--     'Colorful and flavorful vegetable stir-fry',
--     'Chop and stir-fry your favorite vegetables. Add soy sauce and spices. Serve over rice.',
--     '{"calories": 250, "protein": 8, "carbs": 30}',
--     'images/Vegetarian Stir-Fry.jpeg',
--     5,
--     1
--   ),
--   (
--     'Margherita Pizza',
--     'Classic pizza with tomato, mozzarella, and basil',
--     'Roll out pizza dough. Add tomato sauce, cheese, and fresh basil. Bake until crust is golden.',
--     '{"calories": 400, "protein": 15, "carbs": 45}',
--     '/images/Margherita Pizza.jpeg',
--     5,
--     1
--   ),
--   (
--     'Avocado Toast',
--     'Simple and healthy avocado toast',
--     'Toast bread. Spread mashed avocado on top. Sprinkle with salt and pepper.',
--     '{"calories": 200, "protein": 5, "carbs": 15}',
--     '/images/Avocado Toast.jpeg',
--     3,
--     1
--   ),
--   (
--     'Mango Salsa Chicken',
--     'Grilled chicken topped with fresh mango salsa',
--     'Grill chicken breasts. Top with a mix of diced mango, red onion, cilantro, and lime juice.',
--     '{"calories": 300, "protein": 20, "carbs": 25}',
--     '/images/Mango Salsa Chicken.jpeg',
--     4,
--     1
--   ),
--   (
--     'Spicy Shrimp Tacos',
--     'Tacos filled with spicy shrimp, slaw, and avocado',
--     'Saute shrimp with spices. Fill tortillas with shrimp, slaw, and sliced avocado.',
--     '{"calories": 350, "protein": 18, "carbs": 30}',
--     'Spicy Shrimp Tacos.jpeg',
--     5,
--     1
--   ),
--   (
--     'Greek Salad',
--     'Fresh and tangy Greek salad with feta cheese',
--     'Combine chopped cucumber, tomatoes, olives, and feta. Drizzle with olive oil and sprinkle with oregano.',
--     '{"calories": 300, "protein": 10, "carbs": 20}',
--     '/images/Spicy Shrimp Tacos.jpeg',
--     4,
--     1
--   ),
--   (
--     'Pineapple Fried Rice',
--     'Sweet and savory fried rice with pineapple',
--     'Stir-fry rice with diced pineapple, vegetables, and soy sauce. Optional: add cooked shrimp or chicken.',
--     '{"calories": 400, "protein": 12, "carbs": 50}',
--     '/images/Pineapple Fried Rice.jpeg',
--     5,
--     1
--   ),
--   (
--     'Caprese Salad',
--     'Classic Italian salad with tomatoes, mozzarella, and basil',
--     'Slice tomatoes and mozzarella. Arrange on a plate with fresh basil. Drizzle with balsamic glaze.',
--     '{"calories": 250, "protein": 15, "carbs": 10}',
--     '/images/Caprese Salad.jpeg',
--     4,
--     1
--   ),
--   (
--     'Sushi Rolls',
--     'Homemade sushi rolls with your favorite fillings',
--     'Roll sushi with rice, seaweed, and your choice of fillings. Serve with soy sauce and pickled ginger.',
--     '{"calories": 350, "protein": 18, "carbs": 40}',
--     '/images/Sushi Rolls.jpeg',
--     5,
--     1
--   ),
--   (
--     'Mushroom Risotto',
--     'Creamy and comforting mushroom risotto',
--     'Saute mushrooms and onions. Cook Arborio rice with broth until creamy. Finish with Parmesan cheese.',
--     '{"calories": 400, "protein": 10, "carbs": 45}',
--     '/images/Mushroom Risotto.jpeg',
--     5,
--     1
--   ),
--   (
--     'Fruit Smoothie Bowl',
--     'Healthy and colorful fruit smoothie bowl',
--     'Blend your favorite fruits with yogurt. Top with granola, nuts, and fresh berries.',
--     '{"calories": 300, "protein": 8, "carbs": 40}',
--     '/images/Fruit Smoothie Bowl.jpeg',
--     3,
--     1
--   ),
--   (
--     'BBQ Pulled Pork Sandwich',
--     'Slow-cooked pulled pork in barbecue sauce',
--     'Cook pork shoulder in slow cooker. Shred and mix with barbecue sauce. Serve in a bun.',
--     '{"calories": 500, "protein": 25, "carbs": 35}',
--     '/images/BBQ Pulled Pork Sandwich.jpeg',
--     5,
--     1
--   ),
--   (
--     'Cauliflower Crust Pizza',
--     'Low-carb pizza with cauliflower crust',
--     'Make crust with cauliflower, cheese, and egg. Add your favorite toppings. Bake until crispy.',
--     '{"calories": 350, "protein": 15, "carbs": 25}',
--     '/images/Cauliflower Crust Pizza.jpeg',
--     5,
--     1
--   ),
--   (
--     'Lemon Garlic Butter Shrimp',
--     'Quick and flavorful lemon garlic butter shrimp',
--     'Saute shrimp in garlic and butter. Squeeze fresh lemon juice. Garnish with parsley.',
--     '{"calories": 250, "protein": 20, "carbs": 5}',
--     '/images/Lemon Garlic Butter Shrimp.jpeg',
--     5,
--     1
--   ),
--   (
--     'Quinoa Salad',
--     'Nutrient-packed quinoa salad with vegetables',
--     'Cook quinoa. Toss with diced cucumber, cherry tomatoes, and feta. Drizzle with olive oil.',
--     '{"calories": 300, "protein": 12, "carbs": 40}',
--     '/images/Quinoa Salad.jpeg',
--     4,
--     1
--   ),
--   (
--     'Chicken Caesar Wrap',
--     'Grilled chicken, romaine lettuce, and Caesar dressing in a wrap',
--     'Grill chicken. Wrap with romaine lettuce and Caesar dressing in a tortilla.',
--     '{"calories": 400, "protein": 20, "carbs": 30}',
--     '/images/Chicken Caesar Wrap.jpeg',
--     5,
--     1
--   ),
--   (
--     'Vegetable Lasagna',
--     'Layered vegetable lasagna with marinara sauce and cheese',
--     'Layer lasagna noodles with marinara sauce, vegetables, and cheese. Bake until bubbly.',
--     '{"calories": 350, "protein": 15, "carbs": 30}',
--     '/images/Vegetable Lasagna.jpeg',
--     5,
--     1
--   ),
--   (
--     'Peach Cobbler',
--     'Sweet and juicy peach cobbler with a golden crust',
--     'Mix peaches with sugar and spices. Top with a buttery biscuit crust. Bake until golden brown.',
--     '{"calories": 300, "protein": 3, "carbs": 45}',
--     '/images/Peach Cobbler.jpeg',
--     6,
--     1
--   ),
--   (
--     'Teriyaki Salmon',
--     'Grilled teriyaki-glazed salmon fillets',
--     'Marinate salmon in teriyaki sauce. Grill until fish flakes easily with a fork.',
--     '{"calories": 350, "protein": 25, "carbs": 15}',
--     '/images/Teriyaki Salmon.jpeg',
--     5,
--     1
--   ),
--   (
--     'Chocolate Avocado Mousse',
--     'Rich and creamy chocolate mousse made with avocados',
--     'Blend avocados, cocoa powder, and sweetener until smooth. Chill before serving.',
--     '{"calories": 200, "protein": 5, "carbs": 20}',
--     '/images/Chocolate Avocado Mousse.jpeg',
--     3,
--     1
--   ),
--   (
--     'Chocolate Cake',
--     'Rich and moist chocolate cake',
--     'Mix dry and wet ingredients. Bake until a toothpick comes out clean.',
--     '{"calories": 400, "protein": 5, "carbs": 50}',
--     '/images/Chocolate Cake.jpeg',
--     6,
--     1
--   ),
--   (
--     'Strawberry Cheesecake',
--     'Creamy cheesecake with fresh strawberry topping',
--     'Combine cream cheese, sugar, and eggs. Bake until set. Top with sliced strawberries.',
--     '{"calories": 350, "protein": 8, "carbs": 30}',
--     '/images/Strawberry Cheesecake.jpeg',
--     4,
--     1
--   ),
--   (
--     'Apple Pie',
--     'Classic apple pie with flaky crust',
--     'Peel and slice apples. Mix with sugar and spices. Bake in a pie crust until golden brown.',
--     '{"calories": 300, "protein": 3, "carbs": 40}',
--     '/images/Apple Pie.jpeg',
--     6,
--     1
--   ),
--   (
--     'Vanilla Ice Cream',
--     'Homemade vanilla ice cream',
--     'Whisk together cream, milk, sugar, and vanilla. Freeze in an ice cream maker.',
--     '{"calories": 200, "protein": 2, "carbs": 30}',
--     '/images/vaniila icecream.jpeg',
--     6,
--     1
--   ),
--   (
--     'Lemon Bars',
--     'Tangy lemon bars with a buttery crust',
--     'Mix flour, sugar, and butter for the crust. Pour lemon filling over and bake until set.',
--     '{"calories": 250, "protein": 4, "carbs": 35}',
--     '/images/Lemon Bars.jpeg',
--     6,
--     1
--   ),
--   (
--     'Mango Smoothie',
--     'Refreshing mango smoothie with yogurt',
--     'Blend mango, yogurt, and ice until smooth. Optional: add honey for sweetness.',
--     '{"calories": 150, "protein": 5, "carbs": 30}',
--     '/images/Mango Smoothie.jpeg',
--     7,
--     1
--   ),
--   (
--     'Mojito',
--     'Classic minty mojito cocktail',
--     'Muddle mint leaves and lime. Add rum, sugar, and ice. Top with soda water.',
--     '{"calories": 200, "protein": 0, "carbs": 20}',
--     '/images/Mojito.jpeg',
--     7,
--     1
--   ),
--   (
--     'Iced Matcha Latte',
--     'Iced latte with matcha green tea',
--     'Whisk matcha powder with hot water. Add milk and ice. Sweeten to taste.',
--     '{"calories": 100, "protein": 3, "carbs": 15}',
--     '/images/Iced Matcha Latte.jpeg',
--     7,
--     1
--   ),
--   (
--     'Pina Colada',
--     'Tropical pina colada cocktail',
--     'Blend pineapple, coconut cream, and rum with ice. Garnish with a pineapple wedge.',
--     '{"calories": 250, "protein": 1, "carbs": 30}',
--     '/images/Pina Colada.jpeg',
--     7,
--     1
--   ),
--   (
--     'Hot Chocolate',
--     'Warm and comforting hot chocolate',
--     'Heat milk and whisk in cocoa powder and sugar. Top with whipped cream or marshmallows.',
--     '{"calories": 200, "protein": 5, "carbs": 25}',
--     '/images/Hot Chocolate.jpeg',
--     7,
--     1
--   );  
