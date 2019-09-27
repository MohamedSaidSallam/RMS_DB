INSERT INTO Recipe
    (name, description, image, sourceLink, notes)
VALUES
    (
        'Classic Pancakes',
        'Classic Pancakes inspired by Uncle Buck',
        '',
        'https://www.bingingwithbabish.com/recipes/classicpancakes',
        NULL
);

DECLARE @RecipeID int;
SET @RecipeID = SCOPE_IDENTITY();

INSERT INTO RecipeTagTuples
    (rID, rtID)
VALUES
    (
        @RecipeID,
        1
),
    (
        @RecipeID,
        2
),
    (
        @RecipeID,
        14
),
    (
        @RecipeID,
        36
),
    (
        @RecipeID,
        39
),
    (
        @RecipeID,
        40
);


INSERT INTO Ingredient
    (rID, amount, itID, qtID)
VALUES
    (
        @RecipeID,
        10,
        2, -- flour
        12 -- oz
),
    (
        @RecipeID,
        3,
        3, -- sugar
        2  -- Tbsp
),
    (
        @RecipeID,
        4,
        4, -- baking powder
        1  -- tsp
),
    (
        @RecipeID,
        0.5,
        5, -- baking soda
        1  -- tsp
),
    (
        @RecipeID,
        1,
        6, -- salt
        1  -- tsp
),
    (
        @RecipeID,
        1.5,
        8, -- whole milk
        5  -- cups
);

INSERT INTO Ingredient
    (rID, body, amount, itID)
VALUES(
        @RecipeID,
        '(Large)',
        2,
        7  -- eggs
);

INSERT INTO Ingredient
    (rID, amount, optional, itID, qtID)
VALUES(
        @RecipeID,
        0.5,
        1,
        9, -- vanilla extract
        1  -- tsp
);

INSERT INTO Ingredient
    (rID, body, amount, itID, qtID)
VALUES(
        @RecipeID,
        ', plus more for the pan',
        0.25,
        11, -- vegetable oil
        5   -- cups
);

INSERT INTO Ingredient
    (rID, body, amount, optional, itID, qtID)
VALUES(
        @RecipeID,
        'for serving',
        1,
        1,
        10, -- Butter
        24   -- some
),
    (
        @RecipeID,
        'for serving',
        1,
        1,
        15, -- syrup
        24   -- some
);

INSERT INTO StepTip
    (header, body)
VALUES(
        'Sift Flour for better results',
        'Sifted flour, which is much lighter than unsifted flour, is easier to mix into other ingredients when forming a cake batter or making dough. When flour is sifted with other dry ingredients, such as cocoa powder, this helps to combine them evenly before they are mixed with other ingredients.'
);

DECLARE @SiftFlourTipID int;
SET @SiftFlourTipID = SCOPE_IDENTITY();

INSERT INTO Step
    (rID, stepNumber, body, stsID)
VALUES
    (
        @RecipeID,
        1,
        'In one bowl, combine dry ingredients: flour, sugar, baking powder, baking soda, and salt. Whisk to combine.',
        @SiftFlourTipID
);

INSERT INTO Step
    (rID, stepNumber, body)
VALUES
    (
        @RecipeID,
        2,
        'In another bowl, combine eggs, vegetable oil, and whole milk. Optional: you can also add ½ teaspoon of vanilla extract here. Whisk to combine.'
),
    (
        @RecipeID,
        3,
        'Combine the two bowls and mix together gently with a rubber spatula. The batter should still be lumpy with a few dry streaks of flour. Don’t overmix the pancakes!'
),
    (
        @RecipeID,
        4,
        'Cover the batter and let it rest at room temperature for 10 minutes.'
),
    (
        @RecipeID,
        5,
        'Heat 1 teaspoon of vegetable oil in a nonstick skillet.'
),
    (
        @RecipeID,
        6,
        'Ladle one scoop of batter into the skillet and cook for a few minutes. Once bubbles appear on the surface and around the edge of the pancake, cook and flip for a few minutes more.'
),
    (
        @RecipeID,
        7,
        'Stack your pancakes up and serve with syrup and butter if desired. Enjoy!'
);
