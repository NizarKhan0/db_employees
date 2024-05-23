SELECT * FROM emp_manager ORDER BY emp_manager.emp_no;

SELECT distinct
e1.*
FROM
	emp_manager e1
    JOIN 
    emp_manager e2 ON e1.emp_no = e2.manager_no;

SELECT * FROM dept_emp;

SELECT emp_no, from_date, to_Date, COUNT(emp_no) AS Num
FROM dept_emp GROUP BY emp_no HAVING Num > 1;

CREATE OR REPLACE VIEW v_dep_emp_latest_date AS
SELECT 
emp_no, MAX(from_date) as from_date, Max(to_date) as to_date
FROM dept_emp
GROUP BY emp_no;