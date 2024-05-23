#CASE

SELECT 
	emp_no,
    first_name,
    last_name,
    CASE gender
		WHEN 'M' THEN 'Male'
        ELSE 'Female'
        END AS gender
	FROM employees;
    
SELECT 
	e.emp_no,
    e.first_name,
    e.last_name,
CASE
	WHEN dm.emp_no IS NOT NULL THEN 'Manager'
    ELSE  'Employee'
    END AS is_manager
    FROM
    employees e 
    LEFT JOIN
    dept_manager dm On dm.emp_no = e.emp_no
    WHERE
    e.emp_no > 109990;
    
#1 Similar to the exercises done in the lecture, obtain a result set containing the employee number, first name, and last name of all employees with a number higher than 109990.
# create a fourth column in the query, indicating whether this employee is also a manager, according to the data provided in the dept_manager table, or a regular employee. 

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN dm.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'Employee'
    END AS is_manager
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON dm.emp_no = e.emp_no
WHERE
    e.emp_no > 109990;
    
    
    
#Extract a dataset containing the following information about the managers: employee number,
#first name, and last name. Add two columns at the end – one showing the difference between the maximum and minimum salary of that employee, and another one saying whether this salary raise was higher than $30,000 or NOT.
# possible, provide more than one solution.

SELECT
    dm.emp_no,  
    e.first_name,  
    e.last_name,  
    MAX(s.salary) - MIN(s.salary) AS salary_difference,  
    CASE  
        WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'Salary was raised by more then $30,000'  
        ELSE 'Salary was NOT raised by more then $30,000'  
    END AS salary_raise  
FROM  
    dept_manager dm  
        JOIN  
    employees e ON e.emp_no = dm.emp_no  
        JOIN  
    salaries s ON s.emp_no = dm.emp_no  
GROUP BY s.emp_no;  

SELECT  
    dm.emp_no,  
    e.first_name,  
    e.last_name,  
    MAX(s.salary) - MIN(s.salary) AS salary_difference,  
    IF(MAX(s.salary) - MIN(s.salary) > 30000, 'Salary was raised by more then $30,000', 'Salary was NOT raised by more then $30,000') AS salary_increase  
FROM 
    dept_manager dm  
        JOIN  
    employees e ON e.emp_no = dm.emp_no  
        JOIN  
    salaries s ON s.emp_no = dm.emp_no  
GROUP BY s.emp_no;

#Extract the employee number, first name, and last name of the first 100 employees, and add a fourth column,
#called “current_employee” saying “Is still employed” if the employee is still working in the company, or “Not an employee anymore” if they aren’t.
#int: You’ll need to use data from both the ‘employees’ and the ‘dept_emp’ table to solve this exercise. 

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN MAX(de.to_date) > SYSDATE() THEN 'Is still employed'
        ELSE 'Not an employee anymore'
    END AS current_employee
FROM
    employees e
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
GROUP BY de.emp_no
LIMIT 100;