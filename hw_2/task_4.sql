CREATE DATABASE hr;

USE hr;

CREATE TABLE employees (
    emp_no      INT   NOT NULL,
    birth_date  DATE  NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      VARCHAR(4)  NOT NULL,    
    hire_date   DATE     NOT NULL,
    PRIMARY KEY (emp_no)
);

INSERT into employees 
(emp_no, birth_date, first_name, last_name, gender, hire_date  )
VALUES
(001, STR_TO_DATE('24-May-1982', '%d-%M-%Y' ), 'Igor', 'Petrov', 'M', STR_TO_DATE('24-May-2005', '%d-%M-%Y')),
(002, STR_TO_DATE('19-October-1982', '%d-%M-%Y' ), 'Ivan', 'Todov', 'M', STR_TO_DATE('21-June-2012', '%d-%M-%Y')),
(003, STR_TO_DATE('01-July-1994', '%d-%M-%Y' ), 'Anna', 'Vetrova', 'F', STR_TO_DATE('08-February-2016', '%d-%M-%Y'));

USE hr;

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE  KEY (dept_name)
);

Insert into departments 
values 
(1,'Sales'),
(2, 'Management'),
(3, 'IT');


CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
) ; 



select * from employees;
select * from departments;
DROP table employees;
