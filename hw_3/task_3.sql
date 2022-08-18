create database HRData;

use HRData;

CREATE TABLE employees (
    emp_no      INT   NOT NULL,
    birth_date  DATE  NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      VARCHAR(4)  NOT NULL,    
    hire_date   DATE     NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
	emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (dept_no)

);

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
) ; 

