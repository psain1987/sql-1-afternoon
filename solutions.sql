CREATE TABLE person(
  id SERIAL PRIMARY KEY,
  name VARCHAR(200),
  age INTEGER,
  height INTEGER,
  city VARCHAR(200),
  favorite_color VARCHAR(200)
  );

  INSERT INTO person( 
  name,
  age,
  height, 
  city,
  favorite_color)
  VALUES(
    'Phil',
    32,
    180,
    'Aubrey',
    'Blue'),
    ('Josh',
     20,
     181,
     'Somewhere',
     'Yellow'),
     ('Jill',
      50,
      179,
      'Dallas',
      'Red'),
      ('Alfredo',
       25,
       178,
       'Houston',
       'Green'),
       ('Tanner',
        27,
        182,
        'New York',
        'Purple');

        SELECT * FROM person
  ORDER BY height DESC;

  SELECT * FROM person
  ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person 
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person 
WHERE favorite_color IN ('Purple', 'Yellow');




CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(100),
  product_price NUMERIC,
  quantity INTEGER
  );

  INSERT INTO orders(
  person_id,
  product_name,
  product_price,
  quantity
  )
  VALUES(
    1,
    'rice',
    5.55,
    2),
    (2,
    'chicken',
    10.23,
    10),
    (3,
     'beans',
     3.73,
     5),
     (4,
     'tortilla',
     2.99,
     30),
     (5,
      'tomatoes',
      0.5,
      4);

SELECT * FROM orders;

SELECT sum(quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders;
      
SELECT sum(product_price * quantity) FROM orders
WHERE person_id = 3;





INSERT INTO artist
(name)
VALUES
('New Artist 1'),
('New Artist 2'),
('New Artist 3');

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';




SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';




SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;