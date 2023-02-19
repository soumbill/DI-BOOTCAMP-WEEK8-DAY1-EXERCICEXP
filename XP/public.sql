-- 1 - Create a database called public.
    CREATE DATABASE public;

-- 2 - Add two tables: 
    -- * items
    CREATE TABLE (id SERIAL PRIMARY KEY,
                    name VARCHAR(100),
                    price INT
                );

    -- * customers
     CREATE TABLE (id SERIAL PRIMARY KEY,
                    firstname VARCHAR(100),
                    lastname VARCHAR(200)
                );


-- Follow the instructions below to determine which columns and data types to add to the two tables: 
--1 - Add the following items to the items table:

--     1 - Small Desk – 100 (ie. price)
--     2 - Large desk – 300
--     3 - Fan – 80
    INSERT INTO items(name, price) VALUES('Small Desk', 100),
                                         ('Large Desk', 300),
                                         ('Fan', 80);

-- 2 - Add 5 new customers to the customers table:

--     1 - Greg - Jones
--     2 - Sandra - Jones
--     3 - Scott - Scott
--     4 - Trevor - Green
--     5 - Melanie - Johnson
    INSERT INTO customers(firstname, lastname) VALUES('Greg', 'Jones'),
                                                VALUES('Sandra', 'Jones'),
                                                VALUES('Scott', 'Scott'),
                                                VALUES('Trevor', 'Green'),
                                                VALUES('Melanie', 'Johnson');


-- 3 - Use SQL to fetch the following data from the database:

    -- 1 - All the items.
        SELECT * FROM items;

    -- 2 - All the items with a price above 80 (80 not included).
        SELECT * FROM items WHERE price > 80;

    -- 3 - All the items with a price below 300. (300 included)
        SELECT * FROM items WHERE price <= 300;

    -- 4 - All customers whose last name is ‘Smith’ (What will be your outcome?).
        SELECT * FROM customer WHERE lastname IN ('Smith');

    -- 5 - All customers whose last name is ‘Jones’.
        SELECT * FROM customer WHERE lastname IN ('Jones');

    -- 6 -All customers whose firstname is not ‘Scott’.
        SELECT * FROM customer WHERE lastname != 'Scott';
        