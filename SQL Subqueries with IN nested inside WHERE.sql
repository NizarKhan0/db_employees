SELECT * FROM dept_manager;

# select the first and last name from the "Employees" table for the same
# employee numbers that can be found in the "Department Manager" table

SELECT
	e.first_name, e.last_name
    FROM 
    employees e 
    WHERE 
    e.emp_no IN(SELECT 
		dm.emp_no
    FROM dept_manager dm);
    
SELECT 
    dm.emp_no
FROM
    dept_manager dm;
 
SELECT
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995-01-01');