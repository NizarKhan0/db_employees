USE employees;

SELECT
 * 
 FROM
	employees 
	ORDER BY emp_no DESC
 LIMIT 10;

INSERT INTO employees
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
)VALUES
(
	999902,
    '1986-04-21',
    'John',
    'Smith',
    'M',
    '2011-01-01'
);

INSERT INTO employees
(
    birth_date,
	emp_no,
    first_name,
    last_name,
    gender,
    hire_date
)VALUES
(
    '1986-04-21',
	999902,
    'Patricia',
    'Lawrence',
    'F',
    '2011-01-01'
);


INSERT INTO employees 
VALUES
(
	999903,
    '1986-04-21',
    'John',
    'Josh',
    'M',
    '2011-01-01'
);

SELECT
 * 
 FROM
	titles 
 LIMIT 10;
 
INSERT INTO titles
(
	emp_no,
    title,
    from_date
)
VALUES
(
    999903,
    'Senior Engineer',
    '1997-10-01'
);

SELECT
 * 
 FROM
	titles 
ORDER BY emp_no DESC;

SELECT
 * 
 FROM
	dept_emp 
ORDER BY emp_no DESC;

INSERT INTO dept_emp
(
	emp_no,
    dept_no,
    from_date,
    to_date
)
VALUES
(
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);
	

