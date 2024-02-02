
''' 1. List the employee number, last name, first name, sex, and salary of each employee. '''

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e, salaries s
WHERE s.emp_no = e.emp_no;

''' 2. List the first name, last name, and hire date for the employees who were hired in 1986. '''

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%/%/1986';

''' 3. List the manager of each department along with their department number, department name, employee number, last name, and first name. '''
SELECT s.dept_no, d.dept_name, s.emp_no, e.last_name, e.first_name
FROM department_manager s, departments d, employees e
WHERE d.dept_no = s.dept_no AND e.emp_no = s.emp_no;

''' 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name. '''
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, department_employee de, departments d
WHERE de.emp_no = e.emp_no and de.dept_no = d.dept_no;

''' 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B. '''
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

''' 6. List each employee in the Sales department, including their employee number, last name, and first name. '''
SELECT e.emp_no, e.last_name, e.first_name
FROM departments d, department_employee de, employees e
WHERE de.emp_no = e.emp_no and de.dept_no = d.dept_no AND d.dept_name = 'Sales';

''' 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name. '''
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d, department_employee de, employees e 
WHERE de.emp_no = e.emp_no and de.dept_no = d.dept_no AND d.dept_name in ('Sales', 'Development');


''' 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).'''
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

