-- Create new table
-- DROP table departments;
CREATE TABLE departments (
	dept_no varchar(4),
	dept_name varchar(30),
	PRIMARY KEY (dept_no)	
);

-- DROP table employees;
CREATE TABLE employees (
	emp_no integer,
	birth_date DATE,
	first_name varchar(30),
	last_name varchar(30),
	gender varchar(4),
	hire_date DATE,
	PRIMARY KEY (emp_no)	
);

-- DROP table dept_emp;
CREATE TABLE dept_emp (
	emp_no integer,
	dept_no varchar(4),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments(dept_no),
	PRIMARY KEY (emp_no,dept_no) 	
);
-- DROP table dept_manager;
CREATE TABLE dept_manager (
	dept_no varchar(4),
	emp_no integer,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments(dept_no),
	PRIMARY KEY (emp_no,dept_no) 
);

-- DROP table titles;
CREATE TABLE titles (
	emp_no integer,
	title varchar(30),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) references employees(emp_no),
	PRIMARY KEY (emp_no, title, from_date)
);

-- DROP table salaries;
CREATE TABLE salaries (
	emp_no integer,
	salary varchar(30),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) references employees(emp_no),
	PRIMARY KEY (emp_no, from_date) 
);