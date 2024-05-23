USE employees;

COMMIT;

SELECT * FROM departments_dup ORDER BY dept_no;

DELETE FROM departments_dup WHERE dept_no = 'd010';

ROLLBACK;

