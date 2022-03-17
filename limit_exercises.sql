USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# LIMIT limits the size of the query...in this case it returns the top 5.
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

# OFFSET tells whe query where to start.  This wants the 10th page of five, so that is 46-50, so we offset to 46 and it gives us the next 5 starting from there.
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 46;