CREATE DATABASE CustomerDB;

USE CustomerDB;

CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    company VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    phone1 VARCHAR(20),
    phone2 VARCHAR(20),
    email VARCHAR(100),
    subscription VARCHAR(50),
    website VARCHAR(100)
);

select * from customers;


SELECT COUNT(*) AS total_customers
FROM customers;

SELECT Country, COUNT(*) AS total_customers
FROM customers
GROUP BY Country
ORDER BY total_customers DESC
LIMIT 5;

select * from customers where company='Google';


SELECT *
FROM customers
WHERE Phone1 IS NOT NULL AND Phone2 IS NOT NULL;



SELECT *
FROM customers
WHERE Email LIKE '%@gmail.com';


SELECT Subscription, COUNT(*) AS total
FROM customers
GROUP BY Subscription;



SELECT *
FROM customers
WHERE Website IS NULL OR Website = '';


SELECT Company, COUNT(*) AS total_customers
FROM customers
GROUP BY Company
HAVING COUNT(*) > 1;


SELECT *
FROM customers
ORDER BY LastName ASC;



SELECT *
FROM customers
WHERE City = 'New York' AND Country = 'USA';







