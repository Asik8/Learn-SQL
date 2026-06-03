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