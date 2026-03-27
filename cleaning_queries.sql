-- Create table
CREATE TABLE employees (
    id INT,
    name VARCHAR(100),
    city VARCHAR(100),
    salary INT,
    department VARCHAR(100)
);

-- Example raw data review
SELECT * FROM employees;

-- Remove duplicates
SELECT DISTINCT *
FROM employees;

-- Standardize city names
UPDATE employees
SET city = 'Santo Domingo'
WHERE LOWER(city) = 'santo domingo';

UPDATE employees
SET city = 'Santiago'
WHERE LOWER(city) = 'santiago';

-- Standardize department names
UPDATE employees
SET department = 'Sales'
WHERE LOWER(department) = 'sales';

UPDATE employees
SET department = 'HR'
WHERE LOWER(department) = 'hr';

-- Handle missing salaries
UPDATE employees
SET salary = 0
WHERE salary IS NULL;

-- Final cleaned data
SELECT * FROM employees;
