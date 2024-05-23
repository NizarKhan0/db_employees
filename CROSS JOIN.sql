SELECT 
dm.*, d.*
FROM
	dept_manager dm
    CROSS JOIN
    departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT 
	e.*, d.*
FROM
	departments d
    CROSS JOIN
    dept_manager dm
    JOIN 
    employees e ON dm.emp_no = e.emp_no
WHERE
	d.dept_no <> dm.dept_no
ORDER BY dm.emp_no, d.dept_no;

SELECT
	dm.*, d.*
FROM
	dept_manager dm
    CROSS JOIN
    departments d 
WHERE
	d.dept_no = 'd009'
ORDER BY d.dept_no;

SELECT
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no, d.dept_name;

#AVG 
SELECT 
	e.gender, AVG(s.salary) AS average_salary
    FROM
		employees e 
        JOIN 
        salaries s ON e.emp_no = s.emp_no
GROUP BY gender;