SELECT 
	*
FROM
	departments
LIMIT 10;

CREATE TABLE departments_dup
(
	dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

SELECT * FROM departments_dup;

INSERT INTO departments_dup
(
	dept_no,
    dept_name
)

SELECT * FROM departments;

SELECT * FROM departments_dup ORDER BY dept_no;

SELECT 
	*
FROM
	departments
LIMIT 10;

INSERT INTO departments
(
	dept_no,
    dept_name
)
VALUES
(
	'd010',
    'Business Analysis'
)