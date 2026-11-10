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

 SELECT

-- 5. Extract the first 3 characters of each product name using LEFT().

-- 6. Extract the last 3 characters of each product name using RIGHT().

-- 7. Display the first 5 characters of each product name using SUBSTRING().
























