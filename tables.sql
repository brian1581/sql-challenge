-- DROP TABLE departments;

CREATE TABLE departments (
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);

SELECT * FROM departments;

DROP TABLE dept_emp;

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR,
from_date DATE,
to_date DATE
);

ALTER TABLE dept_emp
ADD COLUMN dept_id SERIAL PRIMARY KEY;

SELECT * FROM dept_emp;

-- DROP TABLE dept_manager;

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no INT,
from_date DATE,
to_date DATE
);

ALTER TABLE dept_manager
ADD COLUMN manager_id SERIAL PRIMARY KEY;

SELECT * FROM dept_manager;

-- DROP TABLE employees;

CREATE TABLE employees (
emp_no INT PRIMARY KEY,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
gender VARCHAR,
hire_date VARCHAR
);

SELECT * FROM employees;

-- DROP TABLE salaries;

CREATE TABLE salaries (
emp_no INT,
salary MONEY,
from_date DATE,
to_date DATE
);

ALTER TABLE salaries
ADD COLUMN salary_id SERIAL PRIMARY KEY;

SELECT * FROM salaries;

-- DROP TABLE titles;

CREATE TABLE titles (
emp_no INT,
title VARCHAR,
from_date DATE,
to_date DATE
);

ALTER TABLE titles
ADD COLUMN title_id SERIAL PRIMARY KEY;

SELECT * FROM titles;