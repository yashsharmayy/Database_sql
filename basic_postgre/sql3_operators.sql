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


-- LOGICAL OPERATORS

