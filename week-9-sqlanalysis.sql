-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986. 
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1/1/1986' and '12/311986'
ORDER BY hire_date ASC;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dp.dept_no, d.dept_name, dp.emp_no, e.last_name, e.first_name 
FROM dept_manager dp
JOIN employees e
ON dp.emp_no = e.emp_no
JOIN departments d
ON dp.dept_no = d.dept_no
ORDER BY d.dept_name ASC; 

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT dp.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_manager dp
JOIN employees e
ON dp.emp_no = e.emp_no
JOIN departments d
ON dp.dept_no = d.dept_no
ORDER BY e.emp_no ASC;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp dp 
ON e.emp_no = dp.emp_no
JOIN departments d
ON d.dept_no = dp.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp dp
ON e.emp_no = dp.emp_no
JOIN departments d
ON d.dept_no = dp.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY e.emp_no ASC;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, count(emp_no) as dup_employees
FROM employees
GROUP BY last_name
ORDER BY dup_employees DESC;