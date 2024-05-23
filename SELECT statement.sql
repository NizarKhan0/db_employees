#SELECT

SELECT first_name, last_name FROM employees;
SELECT * FROM employees;

SELECT dept_no FROM departments;
SELECT * FROM departments;

#SELECT WHERE

SELECT * FROM employees WHERE first_name = 'Denis';
SELECT * FROM employees WHERE first_name = 'Elvis';

#SELECT WHERE AND

SELECT * FROM employees WHERE first_name = 'Denis' AND gender = 'M';
SELECT * FROM employees WHERE first_name = 'Kellie' AND gender = 'F';

#SELECT WHERE OR

SELECT * FROM employees WHERE first_name = 'Denis' OR first_name = 'Elvis';
SELECT * FROM employees WHERE first_name = 'Kellie' OR first_name = 'Aruna';

#Oerator Precendence

SELECT * FROM employees WHERE last_name = 'Denis' AND (gender = 'M' OR gender = 'F');
SELECT * FROM employees WHERE gender ='F' AND (first_name = 'Kellie' OR first_name = 'Aruna');

#IN - NOT IN

SELECT * FROM employees WHERE first_name IN  ('Cathie','Mark','Nathan');
SELECT * FROM employees WHERE first_name IN ('Denis', 'Elvis');
SELECT * FROM employees WHERE first_name NOT IN ('John', 'Mark', 'Jacob');

#LIKE - NOT LIKE

SELECT * FROM employees WHERE first_name LIKE('Mar%');
SELECT * FROM employees WHERE first_name LIKE('Marg_');
SELECT * FROM employees WHERE first_name NOT LIKE('Mar%');
SELECT * FROM employees WHERE first_name LIKE('Mark%');
SELECT * FROM employees WHERE hire_date LIKE('%2000%');
SELECT * FROM employees WHERE emp_no LIKE('1000_');

SELECT * FROM employees WHERE first_name LIKE ('%Jack%');
SELECT * FROM employees WHERE first_name NOT LIKE ('%Jack%');

#BETWEEN AND NOT BETWEEN

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM salaries WHERE salary BETWEEN 66000 AND 70000;
SELECT * FROM salaries WHERE emp_no NOT BETWEEN '10004' AND '10012';
SELECT * FROM departments WHERE dept_no BETWEEN 'd003' AND 'd006';

#IS NOT NULL / IS NULL

SELECT * FROM  employees WHERE first_name IS NOT NULL;
SELECT * FROM  departments WHERE dept_no IS NOT NULL;

#Comparison operators

SELECT * FROM employees WHERE hire_date >= '2000-01-01';
SELECT * FROM employees WHERE hire_date <= '1985-02-01';
SELECT * FROM employees WHERE gender='F' AND hire_date >= '2000-01-01';
SELECT * FROM salaries WHERE salary > 150000;

#SELECT DISTINCT

SELECT DISTINCT gender FROM employees;
SELECT DISTINCT hire_date FROM employees;

#Aggregate Function

SELECT COUNT(emp_no) FROM employees;
SELECT COUNT(DISTINCT first_name) FROM employees;

SELECT COUNT(*) FROM salaries WHERE salary >= 100000;
SELECT COUNT(*) FROM dept_manager;

#ORDER BY

SELECT * FROM employees ORDER BY first_name;
SELECT * FROM employees ORDER BY first_name, last_name ASC;
SELECT * FROM employees ORDER BY hire_date DESC;

#GROUP BY

SELECT first_name FROM employees GROUP BY first_name;
SELECT COUNT(first_name) FROM employees GROUP BY first_name;
SELECT first_name, COUNT(first_name) AS names_count FROM employees GROUP BY first_name ORDER BY first_name DESC;

SELECT 
	salary ,COUNT(emp_no) AS emps_with_same_salary
FROM 
	salaries WHERE salary > 80000 
GROUP BY salary 
ORDER BY salary;

#HAVING

SELECT
	first_name, COUNT(first_name) AS names_count
    #names_count punya row ni utk dia tunjukkan berapa banyak nama ni muncul dalam employees punya table
FROM
	employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

SELECT
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

#WHERE VS HAVING

SELECT
	first_name, COUNT(first_name) as names_count
FROM 
	employees
WHERE
	hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;

SELECT
	emp_no
FROM
	dept_emp
WHERE
	from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date)>1
ORDER BY emp_no;

#LIMIT

SELECT
	*
FROM
	dept_emp
ORDER BY emp_no DESC
LIMIT 100;


