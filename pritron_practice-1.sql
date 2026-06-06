CREATE DATABASE emp1;
USE emp1;

CREATE TABLE Employee(
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR(50),
    employee_salary INT,
    joining_date DATE
);

INSERT INTO Employee Values
(1,'Kasem',50000,'2026-06-05'),
(2,'Kasim',20000,'2026-06-08');
	