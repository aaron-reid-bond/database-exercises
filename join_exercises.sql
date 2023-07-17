USE employees;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;


SELECT t.title AS 'Title', COUNT(t.title) AS 'Total'
FROM titles AS t
JOIN dept_emp AS de ON de.emp_no = t.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.dept_no = 'd009' AND t.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
GROUP BY t.title;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
JOIN salaries AS s ON s.emp_no = e.emp_no
JOIN dept_manager AS dm ON dm.emp_no = s.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;