-- CREATE TABLE titles (
--     title_id VARCHAR   NOT NULL,
--     title VARCHAR   NOT NULL,
--     PRIMARY KEY (title_id)
-- );
-- CREATE TABLE employees (
--     emp_no INT   NOT NULL,
--     emp_title_id VARCHAR NOT NULL,
--     birth_date DATE   NOT NULL,
--     first_name VARCHAR   NOT NULL,
--     last_name VARCHAR   NOT NULL,
--     sex VARCHAR   NOT NULL,
--     hire_date DATE   NOT NULL,
--     FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
--     PRIMARY KEY (emp_no)
-- );


-- CREATE TABLE departments (
--     dept_no VARCHAR   NOT NULL,
--     dept_name VARCHAR   NOT NULL,
--     PRIMARY KEY (dept_no)
-- );

-- CREATE TABLE dept_manager (
--     dept_no VARCHAR   NOT NULL,
--     emp_no INT   NOT NULL,
--     FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--     FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--     PRIMARY KEY (dept_no, emp_no)
-- );

-- CREATE TABLE dept_emp (
--     emp_no INT   NOT NULL,
--     dept_no VARCHAR   NOT NULL,
--     FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--     FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--     PRIMARY KEY (emp_no, dept_no)
-- );


-- CREATE TABLE salaries (
--     emp_no INT   NOT NULL,
--     salary INT   NOT NULL,
--     FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--     PRIMARY KEY (emp_no)
-- );


-- List the following details of each employee: employee number, last name, first name, sex, and salary.

-- select 
-- 	employees.emp_no, 
-- 	employees.last_name, 
-- 	employees.first_name, 
-- 	employees.sex,
-- 	salaries.salary
-- from
-- 	salaries inner join employees
-- 		on salaries.emp_no = employees.emp_no
-- ;


-- List first name, last name, and hire date for employees who were hired in 1986.

-- select
-- 	first_name, last_name, hire_date
-- from employees
-- where hire_date >= '1986-01-01' and hire_date <= '1986-12-31';


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- select
-- 	dept_manager.emp_no,
-- 	dept_manager.dept_no,
-- 	departments.dept_name,
-- 	employees.last_name,
-- 	employees.first_name
-- from departments
-- 	inner join dept_manager on dept_manager.dept_no = departments.dept_no
-- 	inner join employees on dept_manager.emp_no = employees.emp_no
-- ;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
-- select
-- 	employees.emp_no,
-- 	employees.last_name,
-- 	employees.first_name,
-- 	dept_emp.dept_no,
-- 	departments.dept_name
-- from departments
-- 	inner join dept_emp on dept_emp.dept_no = departments.dept_no
-- 	inner join employees on dept_emp.emp_no = employees.emp_no
-- ;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- select * from employees 
-- where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- select 
-- 	departments.dept_name,
-- 	departments.dept_no,
-- 	dept_emp.emp_no,
-- 	employees.last_name,
-- 	employees.first_name
-- from departments
-- 	inner join dept_emp on dept_emp.dept_no = departments.dept_no
-- 	inner join employees on dept_emp.emp_no = employees.emp_no
	
-- where dept_name = 'Sales'
-- ;


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- select 
-- 	departments.dept_name,
-- 	departments.dept_no,
-- 	dept_emp.emp_no,
-- 	employees.last_name,
-- 	employees.first_name
-- from departments
-- 	inner join dept_emp on dept_emp.dept_no = departments.dept_no
-- 	inner join employees on dept_emp.emp_no = employees.emp_no
-- where dept_name = 'Sales'or dept_name = 'Development'
-- ;

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- select last_name,
-- 	count(last_name) as last_name_count
-- from employees
-- group by last_name
-- order by last_name_count desc
-- ;

