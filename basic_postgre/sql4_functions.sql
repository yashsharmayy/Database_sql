-- Agregate functions

DROP TABLE  IF EXISTS PRODUCTS;

CREATE TABLE PRODUCTS(
product_id SERIAL PRIMARY KEY,
PRODUCT_NAME VARCHAR(100),
CATEGORY VARCHAR(50),
PRICE NUMERIC(10,2),
QUANTITY INT,
ADDED_DATE DATE,
DISCOUNT_RATE NUMERIC(5,2)
);

INSERT INTO PRODUCTS
(PRODUCT_NAME, CATEGORY, PRICE, QUANTITY, ADDED_DATE, DISCOUNT_RATE)
VALUES
('Laptop', 'Electronics', 65000.00, 15, '2026-01-10', 10.00),
('Smartphone', 'Electronics', 25000.00, 30, '2026-01-12', 15.00),
('Wireless Mouse', 'Electronics', 799.00, 100, '2026-01-15', 5.00),
('Keyboard', 'Electronics', 1499.00, 50, '2026-01-18', 8.00),
('Headphones', 'Electronics', 2999.00, 40, '2026-01-20', 12.00),
('Office Chair', 'Furniture', 8500.00, 12, '2026-02-01', 10.00),
('Study Table', 'Furniture', 5500.00, 20, '2026-02-05', 5.00),
('Bookshelf', 'Furniture', 4200.00, 8, '2026-02-08', 7.00),
('T-Shirt', 'Clothing', 599.00, 200, '2026-02-10', 20.00),
('Jeans', 'Clothing', 1499.00, 75, '2026-02-12', 15.00),
('Jacket', 'Clothing', 2499.00, 35, '2026-02-15', 25.00),
('Running Shoes', 'Footwear', 3499.00, 45, '2026-02-18', 10.00),
('Formal Shoes', 'Footwear', 2799.00, 25, '2026-02-20', 12.00),
('Water Bottle', 'Accessories', 499.00, 150, '2026-03-01', 5.00),
('Backpack', 'Accessories', 1299.00, 60, '2026-03-05', 10.00),
('Wrist Watch', 'Accessories', 4999.00, 18, '2026-03-08', 15.00),
('Blender', 'Home Appliances', 3200.00, 22, '2026-03-10', 8.00),
('Microwave', 'Home Appliances', 12000.00, 10, '2026-03-12', 10.00),
('Air Conditioner', 'Home Appliances', 38000.00, 5, '2026-03-15', 18.00),
('Desk Lamp', 'Furniture', 899.00, 65, '2026-03-18', 5.00);

SELECT * FROM PRODUCTS;

-- total quantity available of all products

SELECT SUM(QUANTITY) AS TOTAL_QUANTITY FROM PRODUCTS;

-- total quantity available of ELECTRONICS whoes price grater than 20,000

SELECT SUM(QUANTITY) AS TOTAL_QUANTITY FROM PRODUCTS
WHERE CATEGORY = 'Electronics' and price >20000;


-- Find the total number of products.

SELECT COUNT(*) AS TOTAL_PRODUCTS FROM PRODUCTS;

-- Find the total quantity of all products in stock.

SELECT SUM(QUANTITY) AS _TOTAL_QUANTITY 
FROM PRODUCTS;


-- Calculate the average price of all products.

SELECT AVG(PRICE) AS AVG_PRICE FROM PRODUCTS;

-- Find the highest product price.

SELECT MAX(PRICE) AS HIGHEST_PRICE_PRODUCT FROM PRODUCTS;

-- Find the lowest product price.

SELECT MIN(PRICE) AS LOWEST_PRICE_PRODUCT FROM PRODUCTS;


-- Calculate the total value of all products using PRICE * QUANTITY.

SELECT PRODUCT_NAME, (PRICE*QUANTITY) AS TOTAL_VALUE FROM PRODUCTS;

-- Find the total number of products in the Electronics category.

SELECT SUM(QUANTITY) FROM PRODUCTS
WHERE CATEGORY = 'Electronics';


-- Calculate the average discount rate of all products.


SELECT AVG(DISCOUNT_RATE) AS AVG_DISC FROM PRODUCTS;

-- AVG PRICE OF PRODUCTS WITH CONDITION

SELECT AVG(PRICE) AS AVG_PRICE FROM PRODUCTS
WHERE CATEGORY = 'Accessories' and added_date >'2026-02-10';

-- Level 2: GROUP BY

-- 9. Find the total number of products in each category.
-- 10. Calculate the average price of products in each category.
-- 11. Find the maximum price in each category.
-- 12. Find the minimum price in each category.
-- 13. Calculate the total quantity available in each category.
-- 14. Find the total inventory value of each category.
-- 15. Calculate the average discount rate for each category.
-- 16. Find the total revenue potential of each category using PRICE * QUANTITY.







-- string functions


Beginner
-- 1. Display all product names in uppercase.

select UPPER(PRODUCT_NAME) FROM PRODUCTS;

-- 2. Display all product names in lowercase.

select  LOWER(PRODUCT_NAME) FROM PRODUCTS;

-- 3. Find the length of each product name.

SELECT PRODUCT_NAME, LENGTH(PRODUCT_NAME) FROM PRODUCTS;

-- 4. Display product names along with their categories using CONCAT().

 SELECT CONCAT(PRODUCT_NAME,'-',CATEGORY) AS NAME_AND_CATEGORY FROM PRODUCTS;

-- 5. Extract the first 3 characters of each product name using LEFT().

SELECT LEFT(PRODUCT_NAME,3) FROM PRODUCTS;

-- 6. Extract the last 3 characters of each product name using RIGHT().

SELECT RIGHT(PRODUCT_NAME,3) FROM PRODUCTS;

-- 7. Display the first 5 characters of each product name using SUBSTRING().

SELECT SUBSTRING(PRODUCT_NAME,1,5) FROM PRODUCTS;



-- DATE TIME FUNCTION----------------------------------


-- Display today's date.

SELECT NOW() AS TODAY_DATE;

-- Display the current time.

SELECT CURRENT_TIME;


-- Display the current date and time.

SELECT CURRENT_DATE , CURRENT_TIME;

-- -- Find the age of every product (time since added).

SELECT
	PRODUCT_NAME,
	AGE (CURRENT_DATE, ADDED_DATE) AS PRODUCT_AGE
FROM
	PRODUCTS;

-- Extract the year from ADDED_DATE.

SELECT
	EXTRACT(
		YEAR
		FROM
			ADDED_DATE
	)
FROM
	PRODUCTS;

-- Extract the month from ADDED_DATE.

SELECT
	EXTRACT(
		MONTH
		FROM
			ADDED_DATE
	)
FROM
	PRODUCTS;


-- Extract the day from ADDED_DATE.

SELECT
	EXTRACT(
		DAY
		FROM
			ADDED_DATE
	)
FROM
	PRODUCTS;


-- Display product names and their joining year (year added).

SELECT
    PRODUCT_NAME,
    DATE_PART('year', ADDED_DATE) AS ADDED_YEAR
FROM PRODUCTS;

-- Find products added in 2025 using EXTRACT().

SELECT PRODUCT_NAME, ADDED_DATE FROM PRODUCTS 
WHERE  extract(YEAR FROM ADDED_DATE)  = '2026';

-- Find the number of days between today's date and each product's added date.


SELECT (CURRENT_DATE - ADDED_DATE) AS NO_OF_DAYS FROM PRODUCTS;

-- TO_CHAR() - FORMAT DATES AS STRINGS
-- FORMAT ADDED_DATE IN A CUSTOM FORMAT (DD-MM-YYYY)



SELECT
	PRODUCT_NAME,
	TO_CHAR(ADDED_DATE, 'DD-MM-YYYY') AS FORMATED_DATE
FROM
	PRODUCTS;

-- DATE_PART() - GET specific date part
-- extract the day of the week from added_date

SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	DATE_PART('DOW', ADDED_DATE) AS DAY_OF_WEEK
FROM
	PRODUCTS;

-- DATE_TRUNC() - TRUCATE DATE TO PRECISION
-- TRUNCATE ADDED_DATE TO THE START OF THE MONTH

SELECT
	PRODUCT_NAME,
	DATE_TRUNC('MONTH', ADDED_DATE) AS MONTH_START
FROM
	PRODUCTS

-- INTERVAL - ADD OR SUBSCTRACT TIME INTERVALS
-- ADD 6MONTH TO ADDED_DATE

SELECT
	PRODUCT_NAME,
	ADDED_DATE,
	ADDED_DATE + INTERVAL '6 MONTHS' AS NEW_DATE
FROM
	PRODUCTS;


-- TO_DATE - CONVERT STRING TO DATE
-- CONVERT A STRING TO A DATE FORMATE.

SELECT TO_DATE('28-11-2026','DD-MM-YYYY') AS CONVERTED_DATE;


-- CONDITONAL FUNCTIONS

  /* CASE CASE FUNCTION- CATEGORIZING BASED ON CONDITIONS 
  WE Will categorize products into price ranges:

  expensive if the Price is greter than or equal to 50,000.
  moderate if the price is between 10,000 and 49,999.
  Affordale if the price is less than 10,000.

  */


 SELECT
	PRODUCT_NAME,
	PRICE,
	CASE
		WHEN PRICE >= 50000 THEN 'EXPENSIVE'
		WHEN PRICE >= 10000
		AND PRICE <= 49999 THEN 'MODERATE'
		ELSE 'AFORDATBLE'
	END AS PRICE_CATEGORY
FROM
	PRODUCTS;

--  ASSIGMENT: CASE FUNCTION

/* if quantity is 10 or more = in stock
   if qunatity is between 5 to 9 = limited stock
   if quantity is less than 5 = out of stock
   */

   SELECT * FROM PRODUCTS;

SELECT
	PRODUCT_NAME,
	QUANTITY, CASE
		WHEN QUANTITY >= 20 THEN 'IN STOCK'
		WHEN QUANTITY >= 10
		AND QUANTITY <= 19 THEN 'LIMITED STOCK'
		ELSE 'OUT OF STOCK'
	END AS PRODUCT_STATUS
FROM
	PRODUCTS; 


/* CHECK if the category name contains
"Electronics item" or "furniture item" or
'Accessory' item using LIKE */

SELECT
	PRODUCT_NAME,
	CATEGORY,
	CASE
		WHEN CATEGORY LIKE '%Electronics%' THEN 'Electronics ITEM'
		WHEN CATEGORY LIKE '%Accessories%' THEN 'ACCESSORIES ITEM'
		ELSE 'OTHER ITEMS'
	END AS CATEG0RY_STATUS
FROM
	PRODUCTS;


-- COALESCE FUNCTION


ALTER TABLE PRODUCTS
ADD COLUMN DISCOUNT_PRICE NUMERIC(10,2);

UPDATE PRODUCTS
	SET DISCOUNT_PRICE = 
	CASE
		WHEN PRODUCT_NAME = 'Laptop' THEN NULL
		WHEN PRODUCT_NAME = 'Keyboard' THEN NULL
		ELSE (PRICE * (0.01*DISCOUNT_RATE))
	END 


SELECT * FROM PRODUCTS;



-- SELECT PRODUCT_NAME , COLAESCE(DISCOUNT_PRICE, PRICE) AS FINAL_PRICE
-- FROM PRODUCTS;


-- WINDOW FUNCTIONS----------------------------------------------------------



-- ASSIGN A UNIQUE ROW NUMBER TO EACH PRODUCT WITHIN THE SAME CATEGORY.







































