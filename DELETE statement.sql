USE employees;

COMMIT;

SELECT * FROM titles WHERE emp_no = 10001;

#DELETE FROM employees WHERE emp_no = 10001;

ROLLBACK;

