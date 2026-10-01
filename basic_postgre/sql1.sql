CREATE TABLE EMPLOYEE(
employee_id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
role VARCHAR(20) ,
department VARCHAR(20),
hire_date DATE,
salary NUMERIC(10,2)

)

SELECT * FROM employee;

INSERT INTO employee(name,role, department,hire_date , salary) 
VALUES ('yash sharma','data analyst','IT','2026-04-18',200000.00),
 ('kishor','manager','finance','2026-04-20',100000.00)



 SELECT * FROM EMPLOYEE;

 TRUNCATE TABLE employee;
 TRUNCATE TABLE EMPLOYEE RESTART IDENTITY;

 