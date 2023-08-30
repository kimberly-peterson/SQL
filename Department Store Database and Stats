--Create a department store database

CREATE table fluffythings (id INTEGER PRIMARY KEY, name TEXT, varieties INTEGER, colors INTEGER, quantity INTEGER, price INTEGER);

INSERT INTO fluffythings VALUES 
(1, "socks", 5, 6, 20, 5), 
(2, "sweaters", 2, 4, 10, 10), 
(3, "cat toys", 5, 2, 15, 3), 
(4, "gloves", 2, 4, 10, 5), 
(5, "hair accessories", 10, 4, 30, 2), 
(6, "scarves", 2, 5, 20, 4), 
(7, "sleep masks", 1, 5, 10, 5), 
(8, "hats", 3, 10, 30, 3), 
(9, "pillows", 1, 3, 10, 10), 
(10, "blankets", 1, 3, 10, 10), 
(11, "couch covers", 1, 4, 10, 3), 
(12, "book sleeves", 1, 4, 10, 2), 
(13, "animal clothing", 4, 6, 15, 7), 
(14, "ear muffs", 2, 4, 10, 4), 
(15, "ponchos", 1, 5, 5, 5);

--Display the database ordered by price
SELECT * from fluffythings ORDER BY price desc;

--how many total items are in the store?
SELECT SUM(quantity) from fluffythings;
