USE classicmodels;
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orderdetails;
SELECT * FROM productlines;
SELECT * FROM payments;

-- All products belonging to the 'Classic Cars' product line, and they want them sorted from the most expensive to the cheapest based on MSRP
SELECT productName, productLine, MSRP
FROM products
WHERE productLine='Classic Cars'
ORDER BY MSRP DESC;

-- A list of all orders, but instead of just showing the numeric customerNumber, your project requires showing the actual
-- customerName next to the orderNumber and orderDate
SELECT o.customerNumber, c.customerName, o.orderNumber, o.orderDate
FROM orders o
INNER JOIN customers c
ON o.customerNumber= c.customerNumber;

-- Listing all customer names and any payments they've made (showing even those who haven't paid anything yet).
SELECT c.customerNumber, c.customerName, p.amount
FROM customers c
LEFT JOIN payments p
ON c.customerNumber = p.customerNumber;

-- Listing all office codes and cities alongside the employees working there (showing even offices that have zero employees).
SELECT o.officeCode, o.city, e.LastName, e.firstName
FROM employees e
RIGHT JOIN offices o
ON o.officeCode = e.officeCode;

-- The total amount of money paid by each customer(only want to see the customerNumber and the sum of all their payments)
SELECT customerNumber, SUM(amount) AS TotAmtPer_Customer
FROM payments
GROUP BY customerNumber;

-- Finding the average credit limit of all customers located in the 'USA'.
SELECT AVG(creditLimit) AS Avg_Credit_Lim
FROM customers;

-- Finding all products that are priced higher than the average buy price of all products in the database.
SELECT buyPrice
FROM products
WHERE buyPrice > (SELECT AVG(buyPrice)
FROM products);

-- A table the business uses every single day, so saving it as a View named customer_orders_summary.
CREATE VIEW customer_orders_summary AS
SELECT o.customerNumber, c.customerName, o.orderNumber, o.orderDate
FROM orders o
INNER JOIN customers c
ON o.customerNumber= c.customerNumber;
SELECT * FROM customer_orders_summary;

-- Creating an Index on customers table
CREATE INDEX SL_NO ON customers(customerName);
SHOW INDEX FROM customers;