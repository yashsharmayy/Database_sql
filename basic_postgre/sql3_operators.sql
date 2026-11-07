-- operators  

SELECT * FROM EMPLOYEE2;

-- Retrieve the first_name , salary , and calculate a 10% bonus on the salary

SELECT FIRST_NAME , SALARY , (SALARY*0.10) AS BONUS 
FROM EMPLOYEE2;


-- calculate the annual salary and salary increment by 5% - show the monthly new salary as well

SELECT FIRST_NAME,SALARY , (SALARY * 12) AS ANNUAL_SALARY , 
(SALARY *0.05 + SALARY) AS NEW_SALARY,
((SALARY *0.05 + SALARY)*12) AS NEW_ANNUAL_SALARY FROM EMPLOYEE2;



-- comparison operator   

-- Employees whoes age is 30

	SELECT * FROM EMPLOYEE2
	WHERE AGE = 30;


-- Employees whoes age is not equal 30

	SELECT * FROM EMPLOYEE2
	WHERE AGE != 30;

-- salary grater than and equal to 30000

	SELECT FIRST_NAME , SALARY FROM EMPLOYEE2 
	WHERE SALARY >= 30000 ORDER BY SALARY DESC;


-- LOGICAL OPERATORS (AND , OR  & NOT)

SELECT * FROM EMPLOYEE2;

-- employees whoes ae is less then 40 and salary grater than 50000

	SELECT FIRST_NAME , AGE , SALARY FROM EMPLOYEE2
	WHERE AGE <=40 AND SALARY >=50000;

-- employees whoes ae is grater then 50 or salary less than 50000

	SELECT FIRST_NAME , AGE , SALARY FROM EMPLOYEE2
	WHERE AGE >=40 AND SALARY <50000;

-- NOT
 	SELECT * FROM EMPLOYEE2
	 WHERE NOT(DEPARTMENT='IT');



-- BETWEEN LIKE AND IN OPERATOR

-- 1) Retrieve employees whose salary is between 40,000 and 60,000.

	SELECT * FROM employee2
	where salary  between 40000 And 60000;


-- 2) Find employees whose email addresses end with gamil.com

	SELECT * FROM EMPLOYEE2
	WHERE EMAIL LIKE '%gmail.com'

-- 3) Retrieve employees who belong to either the 'finance' or marketing department


	SELECT * FROM employee2
	where DEPARTMENT IN ('Finance','Marketing','IT');







-- Other operator

-- IS NULL

SELECT * FROM EMPLOYEE2
WHERE email IS NULL;

-- LIST employee sorted by salary in descending order

SELECT * FROM EMPLOYEE2
ORDER BY SALARY DESC;

-- Retreive the top 5 highest-paid employee

SELECT * FROM EMPLOYEE2 
ORDER BY SALARY DESC
LIMIT 5;


-- retrive a list of unique department

select distinct department 
from employee2;



-- SET OPERATORS


CREATE TABLE STUDENT_2024 (
student_id int primary key,
student_name varchar(30),
course varchar(50)
);
INSERT INTO  student_2024 (student_id , student_name , course) VALUES
(1,'yash sharma','Bsc cs'),
(2,'Bhumika sharma','Bsc physics'),
(3,'raja sharma','Bsc chemistry'),
(4,'rajesh kumar','BA history'),
(5,'sachin sharma','Bsc cs');


select * FROM STUDENT_2024;


CREATE TABLE STUDENT_2025 (
student_id int primary key,
student_name varchar(30),
course varchar(50)
);
INSERT INTO  student_2025 (student_id , student_name , course) VALUES
(1,'SURESH sharma','Bsc chemistry'),
(2,'Rashmika sharma','Bsc Life science'),
(3,'raja sharma','Bsc chemistry'),
(4,'rajesh kumar','BA history'),
(5,'Bhupender sharma','Bsc cs');


select * FROM STUDENT_2025;



-- UNION -- COMBINE REUSLT , REMOVE DUPLICATES

SELECT STUDENT_NAME , COURSE
FROM STUDENT_2024
UNION
SELECT STUDENT_NAME , COURSE
FROM STUDENT_2025



-- UNION -- COMBINE REUSLT , KEEPS DUPLICATES

SELECT STUDENT_NAME , COURSE
FROM STUDENT_2024
UNION ALL
SELECT STUDENT_NAME , COURSE
FROM STUDENT_2025


-- INTERSECTION -- RETURN COMMON RESULTS

SELECT STUDENT_NAME , COURSE
FROM STUDENT_2024
INTERSECT
SELECT STUDENT_NAME , COURSE
FROM STUDENT_2025


-- EXCEPT -- RETURN RESULTS IN THE FIRST TABLE BUT NOT IN THE SECOND

SELECT STUDENT_NAME , COURSE
FROM STUDENT_2024
EXCEPT
SELECT STUDENT_NAME , COURSE
FROM STUDENT_2025
















