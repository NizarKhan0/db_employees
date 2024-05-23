SELECT 
	d.dept_name, AVG(salary) AS average_salary
    FROM
    departments d
    JOIN
    dept_manager m ON d.dept_no = m.dept_no
    JOIN
    salaries s ON m.emp_no = s.emp_no
    GROUP BY d.dept_name
    HAVING average_salary > 60000
    ORDER BY average_salary DESC;
    ;

SELECT
    e.gender, COUNT(dm.emp_no)
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender;