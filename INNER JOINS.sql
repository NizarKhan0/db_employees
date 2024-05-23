#INNER JOINS

# dept_manager_dup

SELECT * FROM dept_manager_dup ORDER BY dept_no;

# deptpartments_dup
SELECT * FROM departments_dup ORDER BY dept_no;


USE employees;

SELECT m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
FROM dept_manager_dup m
INNER JOIN
departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

SELECT 
	e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
	employees e 
JOIN
	dept_manager dm ON e.emp_no = dm.emp_no;
    