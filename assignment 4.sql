create database customer_information;
use customer_information;
create table sales(
SaleID int,
ProductID int,
CustomerID int,
SaleDate date,
quantity int,
Unitprice int,
Region varchar(100));

insert into sales(SaleID, ProductID, CustomerID, SaleDate, quantity, Unitprice, Region)
values (1,101,1001, '2024-01-05', 5,200,'North'),
       (2,102,1002, '2024-01-10', 10,150,'East'),
       (3,103,1003, '2024-02-15', 2, 300, 'North'),
       (4,104, 1001, '2024-02-20', 7, 250, 'West'),
       (5,101, 1004, '2024-03-05', 1, 200, 'East');




#Q1. Write a query to calculate the total sales (Quantity * UnitPrice) for each product.
SELECT ProductID, sum(Quantity * UnitPrice) as "total sales" from Sales
GROUP BY ProductID;

#Q2. Write a query to find the total number of products sold in each region.
SELECT Region, count(ProductID) as "total number of products sold" from Sales
GROUP BY Region;

#Q3. Write a query to get the average sales amount per product.
SELECT ProductID, avg(Quantity * UnitPrice) as "average sales amount" from Sales
GROUP BY ProductID;

#Q4. Find the regions where total sales are more than 3000.
SELECT Region, sum(Quantity * UnitPrice) as "total sales" from Sales GROUP BY Region HAVING sum(Quantity * UnitPrice) > 3000;


#Q5. Write a query to get the maximum quantity sold for each product.
SELECT ProductID, max(quantity) as "maximum quantity sold" from Sales
GROUP BY ProductID;

#Q6. Write a query to calculate the average quantity of products sold per region.
SELECT Region, avg(quantity) as "average quantity of products sold" from Sales
GROUP BY Region;

#Q7. Find the product IDs that have generated a total sales amount of more than 1000.
SELECT ProductID, sum(quantity * UnitPrice) as "total sales amount of more than 1000"
from Sales
GROUP BY ProductID
HAVING sum(quantity * UnitPrice) > 1000;

#Q8. Write a query to get the total number of sales (rows) made for each customer.
SELECT CustomerID, count(Quantity) as "total number of sales" from Sales
GROUP BY CustomerID;

#Q9. Find the products for which the average quantity sold is less than 5.
SELECT ProductID, avg(quantity) as "average quantity sold" from Sales
GROUP BY ProductID
HAVING avg(quantity) < 5;

#Q10. Write a query to find the sum of total sales for each customer in each region.
SELECT CustomerID, Region, sum(Quantity * UnitPrice) as "Total Sales" from Sales
GROUP BY CustomerID, Region;

#Q11. Write a query to calculate the total sales for each month.
SELECT EXTRACT(MONTH FROM SaleDate) as month, sum(Quantity * UnitPrice) as "Total Sales" from Sales GROUP BY EXTRACT(MONTH FROM SaleDate);

#Q12. Find the regions where the average unit price is more than 200.
SELECT Region, avg(UnitPrice) as "average unit price" from Sales GROUP BY Region HAVING avg(UnitPrice) > 200;

#Q13. Write a query to get the minimum and maximum quantity sold per region.
SELECT Region, min(Quantity), max(Quantity) from Sales GROUP BY Region;

#Q14. Find the customers who have made more than 2 purchases.
SELECT CustomerID, count(ProductID) from sales
group by CustomerID
having count(ProductID) > 1;

#Q15. Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.
SELECT ProductID, sum(Quantity * UnitPrice) as "total sales" from Sales GROUP BY ProductID HAVING sum(Quantity * UnitPrice) > 1500;