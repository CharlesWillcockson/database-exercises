USE employees;
# ### Problem 1
# Find the number of Male (M) and Female (F) employees in the database and order the counts in descending order.
SELECT gender, COUNT(*)
FROM employees
GROUP BY 1
ORDER BY 2;
# ### Problem 2
# Find the average salary by employee title, round to 2 decimal places and order by descending order.
SELECT title, ROUND(AVG(salary),2) AS average_salary
FROM titles
JOIN salaries
ON titles.emp_no = salaries.emp_no
GROUP BY 1
ORDER BY 2 DESC;
# ### Problem 3
# Find all the employees that have worked in at least 2 departments. Show their first name, last_name and the number of departments they work in. Display all results in ascending order.

# ### Problem 4
# Display the first name, last name, and salary of the highest payed employee.
SELECT first_name, last_name, MAX(salary)
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
GROUP BY first_name, last_name
ORDER BY MAX(salary) DESC
LIMIT 1;
# ### Problem 5
# Display the first name, last name, and salary of the **second** highest payed employee.
SELECT first_name, last_name, MAX(salary)
FROM employees
         JOIN salaries
              ON employees.emp_no = salaries.emp_no
GROUP BY first_name, last_name
ORDER BY MAX(salary) DESC
LIMIT 1 OFFSET 1;
# ### Problem 6
# Display the month and total hires for the month with the most hires.
SELECT MAX(MONTH(hire_date)) AS month, COUNT(*) AS number_hired
FROM employees
GROUP BY MONTH(hire_date)
ORDER BY 2 DESC
LIMIT 1;
# ### Problem 7
# Display each department and the age of the youngest employee at hire date.
SELECT dept_name, MIN(DATEDIFF(hire_date, birth_date)/365)
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
GROUP BY dept_name;
# ### Problem 8
# Find all the employees that do not contain vowels in their first name and display the department they work in.
SELECT first_name, last_name, dept_name
FROM employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE first_name NOT LIKE '%a%'
   AND first_name NOT LIKE '%e%'
   AND first_name NOT LIKE '%i%'
   AND first_name NOT LIKE '%o%'
   AND first_name NOT LIKE '%u%'
   AND first_name NOT LIKE '%A%'
   AND first_name NOT LIKE '%E%'
   AND first_name NOT LIKE '%I%'
   AND first_name NOT LIKE '%O%'
   AND first_name NOT LIKE '%U%'
GROUP BY first_name, last_name, dept_name
ORDER BY last_name;
# ## Relationship Drills
# - concat the max salaries of the first two employees
# - get current manager name of Sales department (use subqueries)
#     - get all senior engineers in customer service department
#     - get all first and last names of current Sales department employees
#     - get the name of the employee with the highest salary
# ## Relationship Bonuses
#     - what is the most common birthday in the company? least common?
#     - what is the average salary of managers by department?
#     - how many employees currently work in each department?
#     - what is the average salary for each department?
#     - what was the average salary in the 80s? By department?
#     - how many times (on average) do employees switch titles?
# - how many times (on average) do employees get a raise?
# - what is the highest paying job title historically for women and men? For women only? For men only?
# - does the older half of current employees make more or less than the younger half?
# - list the oldest current employees by title in each department
# - list the 5 historically lowest paid managers

SELECT *
FROM employees
LIMIT 5 OFFSET 10;