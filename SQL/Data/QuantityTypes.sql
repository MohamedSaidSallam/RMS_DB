-- delete from QuantityType;
-- DBCC CHECKIDENT (QuantityType, RESEED, 0); -- 0 if re-inserting data, 1 if it's the first data to be inserted

-- Volume

INSERT INTO QuantityType VALUES ('tsp');
INSERT INTO QuantityType VALUES ('tbsp')
INSERT INTO QuantityType VALUES ('fl oz')
INSERT INTO QuantityType VALUES ('gill')
INSERT INTO QuantityType VALUES ('cup(s)')
INSERT INTO QuantityType VALUES ('pt')
INSERT INTO QuantityType VALUES ('qt')
INSERT INTO QuantityType VALUES ('gal')
INSERT INTO QuantityType VALUES ('ml')
INSERT INTO QuantityType VALUES ('l')

-- Mass

INSERT INTO QuantityType VALUES ('lb')
INSERT INTO QuantityType VALUES ('oz')
INSERT INTO QuantityType VALUES ('mg')
INSERT INTO QuantityType VALUES ('g')
INSERT INTO QuantityType VALUES ('kg')

-- Length

INSERT INTO QuantityType VALUES ('mm')
INSERT INTO QuantityType VALUES ('cm')
INSERT INTO QuantityType VALUES ('m')
INSERT INTO QuantityType VALUES ('inch')

-- MISC

INSERT INTO QuantityType VALUES ('piece(s)');
INSERT INTO QuantityType VALUES ('bag(s)');
INSERT INTO QuantityType VALUES ('bottle(s)');
INSERT INTO QuantityType VALUES ('bunch');
INSERT INTO QuantityType VALUES ('some');
INSERT INTO QuantityType VALUES ('can(s)');
INSERT INTO QuantityType VALUES ('dozen');
INSERT INTO QuantityType VALUES ('pack(s)');
INSERT INTO QuantityType VALUES ('parts');
