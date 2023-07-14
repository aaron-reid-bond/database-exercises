USE employees;

SELECT * FROM employees WHERE gender = 'M'
AND ( first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' )
ORDER BY last_name DESC, first_name DESC LIMIT 10;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC LIMIT 10;

SELECT * FROM employees WHERE last_name LIKE '%Q%' LIMIT 10;

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no DESC LIMIT 10;

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC LIMIT 10;

SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%' LIMIT 10;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;