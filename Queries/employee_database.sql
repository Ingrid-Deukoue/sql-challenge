CREATE TABLE employees (
    emp_no int NOT NULL,
	emp_title_id varchar(60),
    birth_date date NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    sex varchar(1) NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
		emp_no)
);
select * from employees

CREATE TABLE departments (
    dept_no varchar(255) NOT NULL,
    dept_name varchar(255) NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no)
)

select * from departments

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
	CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no)
);

select * from salaries


CREATE TABLE titles (
	title_id varchar(60) NOT NULL,
    title varchar(255) NOT NULL,
	CONSTRAINT fk_titles_title_id FOREIGN KEY(title_id)
	REFERENCES employees(emp_title_id)
)
;

select * from titles


CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar(255) NOT NULL,
	CONSTRAINT fk_Dept_employee_emp_no FOREIGN KEY(emp_no)
REFERENCES employees(emp_no), 
	CONSTRAINT fk_Dept_employee_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no)
);

select * from dept_emp


create table dept_manager(
    dept_no varchar(255) NOT NULL,
    emp_no int NOT NULL, 
	CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no), 
	CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no)
	
);

select * from dept_manager


