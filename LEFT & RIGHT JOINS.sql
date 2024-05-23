#LEFT JOIN

#remove the duplicates from two tables
DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';

#add back the initials records
INSERT INTO dept_manager_dup
VALUES ('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'Customer Service');

#LEFT JOIN
SELECT
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY
    m.dept_no;
    
SELECT
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
LEFT JOIN
    dept_manager_dup m ON m.dept_no = d.dept_no
ORDER BY
    d.dept_no;
    
SELECT 
	e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date
FROM employees e
LEFT JOIN
	dept_manager dm ON e.emp_no = dm.emp_no
WHERE
	e.last_name = 'Markovitch'
ORDER BY
	dm.dept_no DESC, e.emp_no;
    
#RIGHT JOIN
SELECT
    d.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
RIGHT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY
    dept_no;

#OLD JOIN SYNTAX USING WHERE
SELECT 
	e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
	employees e,
    dept_manager dm
WHERE
	e.emp_no = dm.emp_no;
