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

SELECT first_name, last_name, emp_no
FROM employees

