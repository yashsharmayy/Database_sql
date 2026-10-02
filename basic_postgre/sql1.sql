-- LESSON 1-5

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

-- LESSON 6 DATATYPE AND CONSTRAINS
 
-- (notes)

CREATE TABLE USERS(
user_id 	INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
EMAIL VARCHAR(50) UNIQUE,
AGE INTEGER CHECK (AGE>=18),
REG_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO USERS (USER_ID , name , email , age) values 
(101,'sachin','sachin@gmail.com',20),
(102,'RAJAn','RAJAN@gmail.com',23),
(103,'bhumi','bhumi@gmail.com',21),
(104,'kishor','kishor@gmail.com',27),
(105,'vchin','vchin@gmail.com',22),
(106,'RAJu','RAJu@gmail.com',23);

select * from users;

drop table if exists users;

-- lesson 7 - 8 update and graph

UPDATE users 
SET name = 'Rajan'
where name = 'RAJAn';

select * from users order by user_id asc;


UPDATE users 
SET AGE = 23
WHERE user_id >102;

UPDATE users 
SET age = age+1
WHERE email LIKE '%@gmail.com';


UPDATE users
SET  age = 28
Where name = 'bhumi';