-- DELETE FROM RecipeTag;
-- DBCC CHECKIDENT (RecipeTag, RESEED, 0); -- 0 if re-inserting data, 1 if it's the first data to be inserted

-- Meal Type

INSERT INTO RecipeTag VALUES ('Breakfast');
INSERT INTO RecipeTag VALUES ('Brunch');
INSERT INTO RecipeTag VALUES ('Lunch');
INSERT INTO RecipeTag VALUES ('Supper');
INSERT INTO RecipeTag VALUES ('Dinner');
INSERT INTO RecipeTag VALUES ('Snack');

-- Meat type

INSERT INTO RecipeTag VALUES ('Beef');
INSERT INTO RecipeTag VALUES ('Goat');
INSERT INTO RecipeTag VALUES ('Lamb');
INSERT INTO RecipeTag VALUES ('Chicken');
INSERT INTO RecipeTag VALUES ('Turkey');
INSERT INTO RecipeTag VALUES ('Seafood');

-- Dish Type

INSERT INTO RecipeTag VALUES ('Drink');
INSERT INTO RecipeTag VALUES ('Dessert');
INSERT INTO RecipeTag VALUES ('Salad');
INSERT INTO RecipeTag VALUES ('Pasta');
INSERT INTO RecipeTag VALUES ('Bread');
INSERT INTO RecipeTag VALUES ('Soup');
INSERT INTO RecipeTag VALUES ('BBQ');
INSERT INTO RecipeTag VALUES ('Pizza');
INSERT INTO RecipeTag VALUES ('Sandwich');
INSERT INTO RecipeTag VALUES ('Wrap');
INSERT INTO RecipeTag VALUES ('Pie');
INSERT INTO RecipeTag VALUES ('Cake');
INSERT INTO RecipeTag VALUES ('Pastry');
INSERT INTO RecipeTag VALUES ('Burger');
INSERT INTO RecipeTag VALUES ('Noodles');
INSERT INTO RecipeTag VALUES ('Sushi');
INSERT INTO RecipeTag VALUES ('Preserves');
INSERT INTO RecipeTag VALUES ('Omelette');
INSERT INTO RecipeTag VALUES ('Stir-fry');
INSERT INTO RecipeTag VALUES ('Baked');
INSERT INTO RecipeTag VALUES ('IcedTea');

-- Cuisine

INSERT INTO RecipeTag VALUES ('Egyptian');
INSERT INTO RecipeTag VALUES ('Italian');

-- Taste

INSERT INTO RecipeTag VALUES ('Sweet');
INSERT INTO RecipeTag VALUES ('Savoury');
INSERT INTO RecipeTag VALUES ('Spicy');

-- MISC

INSERT INTO RecipeTag VALUES ('Easy');
INSERT INTO RecipeTag VALUES ('Quick');
INSERT INTO RecipeTag VALUES ('OnePot');
INSERT INTO RecipeTag VALUES ('PartyFood');
INSERT INTO RecipeTag VALUES ('IngredientRecipe');
