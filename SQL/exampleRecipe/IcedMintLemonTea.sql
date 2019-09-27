-- Simple Syrup

INSERT INTO Recipe
    (name, description, image, sourceLink, notes)
VALUES
    (
        'Simple Syrub',
        'A Simple Sweet Syrub Made using 2 ingredients.',
        '',
        NULL,
        NULL
);

DECLARE @SimpleSyrupRecipeID int;
SET @SimpleSyrupRecipeID = SCOPE_IDENTITY();

INSERT INTO RecipeTagTuples
    (rID, rtID)
VALUES
    (
        @SimpleSyrupRecipeID,
        43
);

INSERT INTO Ingredient
    (rID, amount, itID, qtID)
VALUES
    (
        @SimpleSyrupRecipeID,
        1,
        1, -- water
        28 -- parts
),
    (
        @SimpleSyrupRecipeID,
        1,
        3, -- sugar
        28 -- parts
);

INSERT INTO StepTip
    (header, body)
VALUES(
        'Do not over cook the syrub.',
        'You are not actually cooking anything. The heat only allows the water to absorb more sugar than normally possible. Once the sugar is dissolved you can take the syrup off the heat.'
);

DECLARE @DonotOverCookIt int;
SET @DoNotOverCookIt = SCOPE_IDENTITY();

INSERT INTO Step
    (rID, stepNumber, body)
VALUES
    (
        @SimpleSyrupRecipeID,
        1,
        'Heat the Water in a pot / saucepan.'
),
    (
        @SimpleSyrupRecipeID,
        3,
        'Take the syrup off the heat and you are done.'
);

INSERT INTO Step
    (rID, stepNumber, body, stsID)
VALUES
    (
        @SimpleSyrupRecipeID,
        2,
        'Add the Sugar and stir until completely dissolved.',
        @DonotOverCookIt
);

-- Iced Mint Lemon Tea

INSERT INTO Recipe
    (name, description, image, sourceLink, notes)
VALUES
    (
        'Iced Mint Lemon Tea',
        'Iced tea is easy to make and endlessly adaptable. You can brew it light or strong. You can drink it unsweetened or sweetened. Plus, once you’ve got the basics down, you can start getting more adventurous with your recipes.',
        '',
        NULL,
        NULl
);

DECLARE @RecipeID int;
SET @RecipeID = SCOPE_IDENTITY();

INSERT INTO RecipeTagTuples
    (rID, rtID)
VALUES
    (
        @RecipeID,
        13
),
    (
        @RecipeID,
        33
),
    (
        @RecipeID,
        36
),
    (
        @RecipeID,
        38
);

INSERT INTO IngredientTip
    (header, body)
VALUES(
        'Use Fresh Herbs',
        'Fresh herbs have better flavour. Try to use fresh herbs whenever possible as long as the recipe does not have long cook time(in that case add the fresh herbs at the end of cooking).'
);

DECLARE @FreshIngredientTip int;
SET @FreshIngredientTip = SCOPE_IDENTITY();

INSERT INTO IngredientTip
    (header, body)
VALUES(
        'Quality of the tea matters',
        'The quality of the tea you use will change the depth of flavor of the recipe. Adjust the amount of tea used if you are using really weak or really strong tea.'
);

DECLARE @TeaQualityTip int;
SET @TeaQualityTip = SCOPE_IDENTITY();


INSERT INTO Ingredient
    (rID, header, amount, itID, qtID, itsID)
VALUES
    (
        @RecipeID,
        NULL,
        4,
        1, -- water
        5,  -- cups
        NULL
),
    (
        @RecipeID,
        'Flavor',
        0.125,
        14, -- mint powder
        1,  -- tsp
        @FreshIngredientTip
),
    (
        @RecipeID,
        NULL,
        3,
        12, -- red tea
        21,  -- bag(s)
        @TeaQualityTip
),
    (
        @RecipeID,
        'Flavor',
        2,
        13, -- Lemon
        Null,
        Null
);

INSERT INTO Ingredient
    (rID, amount, qtID, recipeRef)
VALUES
    (
        @RecipeID,
        0.75,
        5, -- Cups
        @SimpleSyrupRecipeID
);

INSERT INTO Step
    (rID, stepNumber, body)
VALUES
    (
        @RecipeID,
        1,
        'Bring the water to a boil.'
),
    (
        @RecipeID,
        2,
        'In the mean time. Cut the lemon into thin slices.'
),
    (
        @RecipeID,
        3,
        'Add the boiling water to the tea bags and let rest for 10 minutes.'
),
    (
        @RecipeID,
        4,
        'In the last 2 minutes. Add the Lemon slices and Mint powder.'
),
    (
        @RecipeID,
        5,
        'After the 10 minutes rest. Discard Mint powder and tea bags. Juice the lemon slices and discard them as well.'
),
    (
        @RecipeID,
        6,
        'Let the tea cool down then store in a bottle and refrigerate.'
);
