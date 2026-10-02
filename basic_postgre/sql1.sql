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

INSERT INTO
	EMPLOYEE (NAME, ROLE, DEPARTMENT, HIRE_DATE, SALARY)
VALUES
	(
		'yash sharma',
		'data analyst',
		'IT',
		'2026-04-18',
		200000.00
	),
	(
		'kishor',
		'manager',
		'finance',
		'2026-04-20',
		100000.00
	)



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

CREATE TABLE USERS (
	USER_ID INT PRIMARY KEY,
	NAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(50) UNIQUE,
	AGE INTEGER CHECK (AGE >= 18),
	REG_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO USERS (USER_ID , name , email , age) values 
	(101,'sachin','sachin@gmail.com',20),
	(102,'RAJAn','RAJAN@gmail.com',23),
	(103,'bhumi','bhumi@gmail.com',21),
	(104,'kishor','kishor@gmail.com',27),
	(105,'vchin','vchin@gmail.com',22),
	(106,'RAJu','RAJu@gmail.com',23);

select * from users;

drop table if exists users;

-- lesson 7 - 9 update , graph & query tool

UPDATE users 
SET name = 'Rajan'
where name = 'RAJAn';

SELECT * FROM USERS ORDER BY USER_ID ASC;


UPDATE users 
SET AGE = 23
WHERE user_id >102;

UPDATE USERS
SET
	AGE = AGE + 1
WHERE
	EMAIL LIKE '%@gmail.com';


UPDATE users
SET  age = 28
Where name = 'bhumi';


-- lesson 10 ALTER COLUMN AND DATATYPE 

-- rename the username column to full_name 

ALTER TABLE users
RENAME COLUMN name TO user_name;

SELECT * FROM users ORDER BY user_id ASC;

-- CHANGE age DATA TYPE INT into SMALLINT

ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;


-- TO ADD NOT NULL CONSTRAINT TO age COLOUMN

ALTER TABLE users
ALTER COLUMN age SET NOT NULL;

-- TO ADD CHECK CONSTRAINT TO AGE COLUMN
ALTER TABLE users
ADD CONSTRAINT age CHECK(AGE>=20);

-- TO ADD A NEW COLUMN
ALTER TABLE USERS
ADD COLUMN city VARCHAR(50);


SELECT * FROM users ORDER BY user_id ASC;


UPDATE users
SET city = 'CHANNAI'
WHERE user_id = 100;

UPDATE users
SET city = 'CHANNAI'
WHERE user_id = 101;

UPDATE users
SET city = 'DELHI'
WHERE user_id = 102;

UPDATE users
SET city = 'GOA'
WHERE user_id = 103;

UPDATE users
SET city = 'HARYANA'
WHERE user_id = 104;

UPDATE users
SET city = 'DELHI'
WHERE user_id = 105;

UPDATE users
SET city = 'HARYANA'
WHERE user_id = 106;

UPDATE users
SET city = 'HARYANA'
WHERE user_id = 107;


SELECT * FROM users ORDER BY user_id ASC;