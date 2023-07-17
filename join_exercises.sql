USE employees;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm ON dm.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm ON dm.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;


SELECT t.title AS 'Title', COUNT(t.title) AS 'Total'
FROM titles as t
JOIN dept_emp as de ON de.emp_no = t.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.dept_no = 'd009' AND t.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
GROUP BY t.title;