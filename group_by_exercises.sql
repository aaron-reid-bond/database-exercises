USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'e%e' GROUP BY first_name, last_name;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%';

SELECT DISTINCT COUNT(last_name), last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%' GROUP BY last_name;

SELECT DISTINCT COUNT(*), gender FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' GROUP BY gender;


