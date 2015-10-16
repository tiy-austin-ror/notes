.tables
.headers on
.schema items

SELECT * FROM items;
SELECT COUNT(*) FROM users;

SELECT * FROM items ORDER BY price DESC;

SELECT * FROM items ORDER BY price DESC LIMIT 5;
SELECT * FROM items ORDER BY price DESC LIMIT 5;

SELECT name, price FROM items ORDER BY price DESC LIMIT 5;
SELECT title, price FROM items ORDER BY price DESC LIMIT 5;

SELECT * FROM items WHERE category = 'Books';
SELECT * FROM items WHERE category = 'Books' ORDER BY price ASC LIMIT 1;
SELECT * FROM items WHERE category LIKE '%Books%' ORDER BY price ASC LIMIT 1;
SELECT * FROM items WHERE category LIKE '%Book%' ORDER BY price ASC LIMIT 1;
SELECT * FROM items WHERE LOWER(category) LIKE LOWER('%Book%') ORDER BY price ASC LIMIT 1;
SELECT * FROM items WHERE LOWER(category) LIKE LOWER('%B%o%o%k%') ORDER BY price ASC LIMIT 1;

SELECT user_id FROM addresses WHERE street = "6439 Zetta Hills";
SELECT user_id FROM addresses WHERE street = "6439 Zetta Hills" AND state = 'WY';
SELECT * FROM users WHERE id = (SELECT user_id FROM addresses WHERE street = "6439 Zetta Hills" AND state = 'WY');
SELECT * FROM addresses WHERE user_id = 40;

SELECT id FROM users WHERE first_name = 'Virginie' AND last_name = 'Mitchell';

UPDATE addresses SET city = 'New York', state = 'NY', zip = '10108' WHERE user_id = 39;

SELECT * FROM users where id = 39;
SELECT * FROM addresses WHERE user_id = 39;

SELECT SUM(price) FROM items WHERE category = 'Tools';
SELECT SUM(price) FROM items WHERE category LIKE '%tools%';

SELECT category FROM items;

SELECT DISTINCT LOWER(categor)y FROM items;
SELECT DISTINCT LOWER(category) FROM items;
SELECT DISTINCT COUNT(LOWER(category)) FROM items;
SELECT DISTINCT COUNT(LOWER(category)) FROM items WHERE category LIKE '%tool%';

SELECT SUM(quantity) FROM orders;

SELECT SUM(price) FROM items WHERE category = 'Books';
SELECT SUM(price) FROM items WHERE category = 'Books';
SELECT SUM(price) FROM items NATURAL JOIN orders WHERE category LIKE '%book%';
SELECT title, SUM(price) FROM items NATURAL JOIN orders WHERE category LIKE '%book%';

SELECT title, price FROM items NATURAL JOIN orders WHERE category LIKE '%book%';

SELECT items.category, SUM(items.price) * SUM(orders.quantity) FROM items INNER JOIN orders ON items.id = orders.item_id WHERE items.category = 'Books' OR items.category LIKE '%Book%';

SELECT items.category, items.price * orders.quantity FROM items INNER JOIN orders ON items.id = orders.item_id WHERE items.category = 'Books' OR items.category LIKE '%Book%';

SELECT items.title, items.category, items.price * orders.quantity FROM items INNER JOIN orders ON items.id = orders.item_id WHERE items.category = 'Books' OR items.category LIKE '%Book%';

INSERT INTO users (first_name, last_name, email) VALUES ('j', 'h', '@');

INSERT INTO orders (id, user_id, item_id, quantity) VALUES (
  (SELECT COUNT(*) FROM orders) + 1,
  (SELECT id FROM users ORDER BY id DESC LIMIT 1),
  (SELECT id FROM items LIMIT 1),
200000);

SELECT * FROM orders ORDER BY ID DESC LIMIT 1;
