USE employees;

SELECT *
FROM employees
WHERE hire_date IN(
    SELECT hire_date FROM employees
    WHERE emp_no = '101010'
    );

SELECT *
FROM titles
WHERE emp_no IN(
    SELECT emp_no FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no FROM dept_manager
    WHERE to_date > CURDATE()
    )
AND gender = 'F';