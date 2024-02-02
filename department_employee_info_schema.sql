'''
drop table departments;
drop table titles;
drop table employees;
drop table department_employee;
drop table department_manager;
drop table salaries; 
'''

CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (dept_no),
	dept_name VARCHAR NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	PRIMARY KEY (title_id),
	title VARCHAR NOT NULL
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL
);

CREATE TABLE department_employee(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE department_manager(
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no),
	salary INT NOT NULL
);

'''
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM department_employee;
SELECT * FROM department_manager;
SELECT * FROM salaries;
'''
