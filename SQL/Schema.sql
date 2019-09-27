DROP TABLE IF EXISTS Step;
DROP TABLE IF EXISTS StepTip;
DROP TABLE IF EXISTS Ingredient;
DROP TABLE IF EXISTS IngredientTip;
DROP TABLE IF EXISTS QuantityType;
DROP TABLE IF EXISTS IngredientType;
DROP TABLE IF EXISTS RecipeTagTuples;
DROP TABLE IF EXISTS Recipe;
DROP TABLE IF EXISTS RecipeTag;

CREATE TABLE RecipeTag
(
    rtID INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Recipe
(
    rID INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    description VARCHAR(max) NOT NULL,
    image VARCHAR(max) NOT NULL,
    sourceLink VARCHAR(max) NULL,
    notes VARCHAR(max) NULL
);

CREATE TABLE RecipeTagTuples
(
    rID INT NOT NULL,
    rtID INT NOT NULL,

    FOREIGN KEY (rID) REFERENCES Recipe (rID),
    FOREIGN KEY (rtID) REFERENCES RecipeTag (rtID),
);

CREATE TABLE IngredientType
(
    itID INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL
);

CREATE TABLE QuantityType
(
    qtID INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IngredientTip
(
    itsID INT PRIMARY KEY IDENTITY(1,1),
    header VARCHAR(100) NOT NULL,
    body VARCHAR(max) NOT NULL
);

CREATE TABLE Ingredient
(
    iID INT PRIMARY KEY IDENTITY(1,1),
    rID INT NOT NULL,
    header VARCHAR(100) NULL,
    body VARCHAR(max) NULL,
    amount DECIMAL(19, 4) NOT NULL,
    optional bit NOT NULL DEFAULT 0,
    itID INT NULL,
    qtID INT NULL,
    itsID INT NULL,
    recipeRef INT NULL,

    FOREIGN KEY (rID) REFERENCES Recipe (rID),
    FOREIGN KEY (itID) REFERENCES IngredientType (itID),
    FOREIGN KEY (qtID) REFERENCES QuantityType (qtID),
    FOREIGN KEY (itsID) REFERENCES IngredientTip (itsID),
    FOREIGN KEY (recipeRef) REFERENCES Recipe (rID),

    CONSTRAINT AmountBiggerThanZero CHECK (CEILING(amount) > 0),
    CONSTRAINT EitherIngredientTypeOrRecipeRefIsNUll
        CHECK
        (
            ( CASE WHEN recipeRef IS NULL THEN 0 ELSE 1 END
            + CASE WHEN itID IS NULL THEN 0 ELSE 1 END
            ) = 1
        )
);

CREATE TABLE StepTip
(
    stsID INT PRIMARY KEY IDENTITY(1,1),
    header VARCHAR(100) NOT NULL,
    body VARCHAR(max) NOT NULL
);

CREATE TABLE Step
(
    sID INT PRIMARY KEY IDENTITY(1,1),
    rID INT NOT NULL,
    stepNumber INT NOT NULL,
    header VARCHAR(100) NULL,
    body VARCHAR(max) NOT NULL,
    optional bit NOT NULL DEFAULT 0,
    stsID INT NULL,

    FOREIGN KEY (rID) REFERENCES Recipe (rID),
    FOREIGN KEY (stsID) REFERENCES StepTip (stsID)
);
