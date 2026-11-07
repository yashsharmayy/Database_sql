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












































