-- Write your solution here
CREATE TABLE employees(
   employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

ALTER TABLE employees ADD country VARCHAR(50);

INSERT INTO employees (employee_id, first_name, last_name, department, salary, country) VALUES
    (1, 'Emily', 'Torres', 'Operations', 80000, 'United Kingdom'),
    (2, 'David', 'Bobr', 'Engineering', 95000, 'Poland');

-- Please do not modify the code below!
SELECT * FROM employees;

TRUNCATE TABLE employees;

ALTER TABLE employees DROP COLUMN country;
-- Please do not modify the code above!