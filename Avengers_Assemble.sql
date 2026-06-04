CREATE DATABASE IF NOT EXISTS avengers_tabel;   -- create database and "if not exists" used to avoid error in the code
USE avengers_tabel;   	-- using the database
DROP DATABASE IF EXISTS avengers_tabel;   		-- delete a database and "if exists" used to avoid error in the code

-- Creation of Database
CREATE DATABASE IF NOT EXISTS avengers_coffee_quest;
USE avengers_coffee_quest;

-- Create the first table named avengers
CREATE TABLE avengers(
	id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    origin VARCHAR(50),
    age INT NOT NULL,
    super_name VARCHAR(50)
);

-- inserting data into avengers
	-- syntext-1:
				INSERT INTO avengers (id,first_name,last_name,origin,age,super_name) 
				VALUES (1, 'THOR','ODINSON','ASGARD',1500,'GOD OF THUNDER');     -- here we can apply anyorder entry in the data table
    -- syntext-2:
				INSERT INTO avengers VALUES (2,'TONY','START','EARTH',35,'IRON MAN'); 	-- here you have to follow the exact sequence by using which the table created
    -- systext-3:
				INSERT INTO avengers
				VALUES
				(3, 'Steve', 'Rogers', 'Earth', 106, 'Captain America'),
				(4, 'Bruce', 'Banner', 'Earth', 49, 'Hulk'),
				(5, 'Natasha', 'Romanoff', 'Earth', 39, 'Black Widow'),
				(6, 'Clint', 'Barton', 'Earth', 45, 'Hawkeye'),
				(7, 'Wanda', 'Maximoff', 'Earth', 30, 'Scarlet Witch'),
				(8, 'Vision', '', 'Earth', 5, 'Vision'),
				(9, 'Peter', 'Parker', 'Earth', 18, 'Spider-Man'),
				(10, 'Sam', 'Wilson', 'Earth', 42, 'Falcon'),
				(11, 'Scott', 'Lang', 'Earth', 44, 'Ant-Man');   -- insert multiple values in the table together
    
-- see the whole table
SELECT * FROM avengers;

-- Create another table
CREATE TABLE coffee_table(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    region VARCHAR(50),
    roast VARCHAR(50)
);

-- inserting data in coffee_table 
INSERT INTO coffee_table VALUES
(1, 'default route', 'ethiopia', 'light'),
(2, 'docker run', 'mexico', 'medium'),
(3, 'helpdesk', 'honduras', 'medium'),
(4, 'on-call', 'peru', 'dark'),
(5, 'ifconfig', 'tanzania', 'blonde'),
(6, 'traceroute', 'bali', 'med-dark');

-- SHOW coffee_table 
SELECT * FROM coffee_table;

-- SELECT details of any row
SELECT * FROM avengers where id=2;

-- perform update on a particular column in a table
UPDATE avengers SET last_name='STARK' WHERE id=2;
SELECT id FROM avengers where first_name LIKE '%Vision%';
UPDATE avengers SET last_name=NULL WHERE id=8;

-- get description of a table 
DESCRIBE avengers;

-- Order by 
SELECT * FROM avengers ORDER BY age ASC;
SELECT * FROM avengers ORDER BY age DESC;

-- see first 3 persons info
SELECT * FROM avengers LIMIT 3;

-- DELETE INFO FROM A TABLE
DELETE FROM avengers WHERE id=11;

-- greater than or less than
SELECT * FROM avengers WHERE age>30;
SELECT * FROM avengers WHERE age<=35 ORDER BY age;

-- add another column on a extsting table
ALTER TABLE avengers ADD favourite_coffee VARCHAR(50);

-- adding coffee for every avengers
UPDATE avengers SET favourite_coffee = 'Latte' WHERE id = 1;   -- Thor
UPDATE avengers SET favourite_coffee = 'Espresso' WHERE id = 2; -- Tony
UPDATE avengers SET favourite_coffee = 'Americano' WHERE id = 3; -- Steve
UPDATE avengers SET favourite_coffee = 'Cold Brew' WHERE id = 4; -- Bruce
UPDATE avengers SET favourite_coffee = 'Cappuccino' WHERE id = 5; -- Natasha
UPDATE avengers SET favourite_coffee = 'Flat White' WHERE id = 6; -- Clint
UPDATE avengers SET favourite_coffee = 'Mocha' WHERE id = 7; -- Wanda
UPDATE avengers SET favourite_coffee = 'Herbal Coffee' WHERE id = 8; -- Vision
UPDATE avengers SET favourite_coffee = 'Iced Coffee' WHERE id = 9; -- Peter
UPDATE avengers SET favourite_coffee = 'Macchiato' WHERE id = 10; -- Sam

-- find unique valures of a column
SELECT DISTINCT origin FROM avengers;

-- find names like the finst letters and the according to the last latter
SELECT * FROM avengers WHERE first_name like 'T%';  -- find the persons in where the first letter is table
SELECT * FROM avengers WHERE last_name like '%r';  -- finding the persond whoms last name finish with r

-- view multiple columns from a table
SELECT fiRst_name, last_name FROM avengers;

-- use between in avengers
SELECT * FROM avengers WHERE age BETWEEN 30 AND 60;

-- 
SELECT * FROM avengers;