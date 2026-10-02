-- Drop the table if already exists

DROP TABLE IF EXISTS employee;

-- Create the employee table

CREATE TABLE employee(
employee_id SERIAL PRIMARY KEY,
first_name  VARCHAR(50) NOT NULL , 
last_name VARCHAR(50) NOT NULL , 
department VARCHAR(50),
salary DECIMAL(10,2) CHECK (salary>0),
joining_date DATE NOT NULL,
age INT CHECK (age>=18)
);

-- Insert data into employee table

INSERT INTO EMPLOYEE ( first_name , last_name , department,salary , joining_date,age)
VALUES
('Amit','sharma','IT',60000.00,'2022-05-01',29),
('Yash','sharma','HR',80000.00,'2023-07-21',20),
('Bhumika','langtiyal','Finance',45000.00,'2026-04-02',27),
('Sachin','verma','IT',50000.00,'2025-08-17',32),
('Ritesh','Tiwari','operation',20000.00,'2023-02-01',24);

SELECT * FROM employee;


-- Q1: Retrieve all employees' first_names and their departments.   

SELECT FIRST_NAME , DEPARTMENT FROM employee;

-- Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.   

Update employee
SET salary = salary + salary/10
WHERE  department = 'IT';


select * from employee;

-- Q3: Delete all employees who are older than 30 years.   

DELETE FROM employee
WHERE AGE >30;

select * from employee;

-- Q4: Add a new column email to the employees table.

ALTER TABLE employee
ADD COLUMN email varchar(50);

select * from employee;

-- Q5: Rename the department column to dept_name.

ALTER TABLE employee
RENAME COLUMN department TO dept_name;

select * from employee;

-- Q6: Retrieve the names of employees who joined after January 1, 2023.


select first_name from employee
where joining_date >'2023-01-01';

-- Q7: Change the data type of the salary column to INTEGER.

ALTER TABLE employee
ALTER COLUMN salary TYPE INT;

select * from employee;

-- Q8: List all employees with their age and salary in descending order of salary.

SELECT first_name , last_name , age , salary from employee 
order by salary desc;


-- Q9: Insert a new employee with the following details: 'Raj', 'Singh', 'Marketing', 60000, '2024-09-15', 30.

INSERT INTO EMPLOYEE ( first_name , last_name , dept_name ,salary , joining_date,age)
values('raj','singh','marketing',60000,'2024-09-15','30');

select * from employee;

-- Q10: Update age of employee +1 to every employee
UPDATE EMPLOYEE 
SET AGE = AGE+1;

select * from employee;