USE employees;

# what are the top three most common job titles?

SELECT title, COUNT(*)
FROM titles
GROUP BY title
LIMIT 3;

# what is the lowest employee number for the first senior engineers in the company?
# SELECT title, MIN(emp_no)
# FROM titles
# WHERE title = "Senior Engineer"

# what is the most common ‘from date’ for job titles? for staff only?

SELECT from_date, COUNT(*)
FROM titles
GROUP BY from_date
LIMIT 1;

# what is the highest employee number for an engineer?

SELECT emp_no, title
FROM titles
ORDER BY emp_no DESC
LIMIT 1;

# what are the names of the 10 most recently hired employees who identified as female in the company? the first 10?

SELECT first_name, last_name, hire_date, gender
FROM employees
WHERE gender = 'F'
ORDER BY hire_date DESC
LIMIT 10;

# what is the most common birthday?

SELECT birth_date, COUNT(*)
FROM employees
GROUP BY birth_date
LIMIT 1;

# what is the most common  birthday for employees who identified as female? how about vs. those who identified as male?

SELECT COUNT(*), birth_date
FROM employees
WHERE gender = 'F'
GROUP BY birth_date
LIMIT 1;

SELECT COUNT(*), birth_date
FROM employees
WHERE gender = 'M'
GROUP BY birth_date
LIMIT 1;

# what is the most common hire date for female and male employees?

SELECT COUNT(*), hire_date
FROM employees
WHERE gender = 'F'
GROUP BY hire_date
LIMIT 1;

SELECT COUNT(*), hire_date
FROM employees
WHERE gender = 'M'
GROUP BY hire_date
LIMIT 1;

SELECT last_name, MAX(LENGTH(last_name)) AS letters, birth_date
FROM employees
WHERE birth_date = '1952-03-08'
GROUP BY last_name
ORDER BY 2 DESC
LIMIT 1;