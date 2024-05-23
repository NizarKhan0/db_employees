USE employees;

SELECT * FROM salaries ORDER BY salary DESC LIMIT 10;

SELECT COUNT(DISTINCT from_date) FROM salaries;
SELECT COUNT(*) FROM salaries;
SELECT COUNT(DISTINCT dept_no) FROM dept_emp;

SELECT SUM(salary) FROM salaries;
SELECT SUM(salary) FROM salaries WHERE from_date >= '1997-01-01';

SELECT MAX(salary) FROM salaries;
SELECT MIN(salary) FROM salaries;
SELECT MAX(emp_no) FROM employees;
SELECT MIN(emp_no) FROM employees;

SELECT AVG(salary) FROM salaries;
SELECT AVG(salary) FROM salaries WHERE from_date > '1997-01-01';

SELECT ROUND(AVG(salary)) FROM salaries;
SELECT ROUND(AVG(salary),2) FROM salaries;
SELECT ROUND(AVG(salary),2) FROM salaries WHERE from_date > '1997-01-01';

UPDATE departments_dup
SET dept_name = ''
WHERE dept_no = 'd009';

SELECT * FROM departments_dup ORDER BY dept_no;
SELECT
	dept_no,
    IFNULL(dept_name,'Department name not provided') as dept_name
FROM
	departments_dup;
    