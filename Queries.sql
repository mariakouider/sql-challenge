SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT employees.last_name, employees.first_name, employees.hire_date
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE EXTRACT(YEAR FROM employees.hire_date) = 1986;


SELECT dm.dep_no AS department_number,
       d.dept_name AS department_name,
       dm.emp_no AS employee_number,
       e.last_name,
       e.first_name
FROM dept_manager AS dm
JOIN departements AS d ON dm.dep_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;


SELECT de.emp_no AS employee_number,
       de.dept_no AS department_number,
       e.last_name,
       e.first_name,
       d.dept_name AS department_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departements AS d ON de.dept_no = d.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT de.emp_no AS employee_number,
       e.last_name,
       e.first_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departements AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departements AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;