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

 CREATE TABLE EMPLOYEE2(
employee_id int PRIMARY KEY,
name VARCHAR(50) NOT NULL,
role VARCHAR(20) ,
department VARCHAR(20),
hire_date DATE,
salary NUMERIC(10,2)

)

SELECT * FROM employee2;

INSERT INTO employee2(employee_id,name,role, department,hire_date , salary) 
VALUES (888,'yash sharma','data analyst','IT','2026-04-18',200000.00),
 (999,'bhumi','ceo','finance','2026-04-20',100000.00)



 SELECT * FROM EMPLOYEE2;



 DELETE  From employee2
 where employee_id = 888;

 ALTER TABLE employee2
 DROP COLUMN DEPARTMENT;

 DROP TABLE IF EXISTS EMPLOYEE2;