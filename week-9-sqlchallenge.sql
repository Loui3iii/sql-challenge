-- Create Tables
create table titles (
	title_id VARCHAR(5) primary key,
	title VARCHAR(50)
);

create table employees (
  emp_no INTEGER primary key,
  emp_title_id VARCHAR(10) references titles(title_id),
  birth_date VARCHAR,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  sex VARCHAR(1),
  hire_date VARCHAR
);

create table departments (
	dept_no VARCHAR(10) primary key,
	dept_name VARCHAR(50)
);

create table dept_manager (
	dept_no VARCHAR (10) references departments(dept_no),
	emp_no INTEGER references employees(emp_no)
);

create table dept_emp (
	emp_no INTEGER references employees(emp_no),
	dept_no VARCHAR (10) references departments(dept_no)
);

create table salaries(
	emp_no INTEGER references employees(emp_no),
	salary INTEGER
);

SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM salaries;