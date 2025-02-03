/*ALTER TABLE dimcustomer RENAME to customer;
ALTER TABLE dimproduct RENAME to product;
ALTER TABLE ptoduct RENAME to product;
ALTER TABLE factsales RENAME TO sales; */

/* Retrieve all customers name alongside the quantity bought.
including customers who haven't made any purchase (if any)*/
select firstname, lastname, quantitysold
	from customer left join sales on customer.customerid = sales.customerid;

select firstname, lastname, quantitysold
	from sales right join customer on sales.customerid = customer.customerid;

/*Retrieve all sales_id, sales_date and customer_email.
include sales records without corresponding customer information (if any). */
select email, saleid, saledate
	from customer right join sales on customer.customerid = sales.customerid;

select email, saleid, saledate
	from sales
	right join customer on customer.customerid = sales.customerid;

--List all id of products sold along with the customer's first name.
select firstname, productid
	from sales
	inner join customer on customer.customerid = sales.customerid;

--list all product name and cast their prices as text.
select productname, cast(price as text)
	from product;



/*Retrieve all customers names(first and last)
and show the sale amount of product purchases if available; otherwise, show "No amount" or 0,*/
select firstnames, lastname, saleamount
	From customer 
	left join sales on customer.customerid = sales.customerid;

select firstname, lastname, coalesce(cast(saleamount as text), 'No Amount') as sale_amount
	From customer c
	left join sales s on c.customerid = s.customerid;

--Retrieve the sale amount as a decimal with three decimal places.
select saleamount from sales;

select round(saleamount, 3) from sales;

select cast(saleamount as decimal(10,3))
	from sales;

/*Classify products based on their stock levels.
Return the product name, category, and a label that indicates whether the product is 
"low stock" (less than 10 units), "Medium stock" (10 to 50 units), or "High stock" (more than 50 units)*/
select productname, category,
	CASE
		when stockquantity < 10 then 'low stock'
		when stockquantity between 10 and 50 then 'medium stock'
		when stockquantity > 50 then 'high stock'
		else 'null'
	end as stock_category
	from product;

select productname, category,
	CASE
		when stockquantity < 10 then 'low stock'
		when stockquantity > 50 then 'high stock'
		when stockquantity > 10 then 'medium stock'
		else 'null'
	end as stock_category
	from product;

--Extract the salesid, saledate and the sale month
select saleid, saledate,
	extract(month from saledate) as month
	from sales;

select saleid, saledate,
	TO_CHAR(saledate, 'Month') as month
	from sales;

--List all sales transactions and match them with product information, including sales with unlisted products.
SELECT f.saleid, dp.productname
from sales f
FULL outer join product dp on dp.productid = f.productid

SELECT f.saleid, dp.productname
from product dp
left join sales f on dp.productid = f.productid

--Loyal custmers who have made at least 5 purchases in the past year
select customerid,sum (quantitysold) as Totalquantity_sold,
sum(saleamount) as TotalSpend from sales 
where saledate between '2023-01-01' and '2023-12-31'
group by customerid,quantitysold
having sum(quantitysold) >=5
order by TotalSpend desc
LIMIT 5;


--Top 10 Product Categories for promotional campaign based on profitability:
select Productid, sum(SaleAmount) AS TotalSales
from Sales
group by Productid
order by TotalSales desc
limit 10;


--List all products available in the inventory.
SELECT * FROM product;

--Find the total number of customers in the database.
SELECT COUNT (*) AS TotalCustomers FROM customer;

SELECT COUNT (customerid) AS TotalCustomers FROM customer;

--Display distinct categories of products sold.
SELECT * FROM product;
SELECT DISTINCT category FROM product;

--Identify customers who signed up in 2023.
SELECT * FROM customer;
SELECT firstname, lastname, signupyear, signupdate FROM customer WHERE signupyear = 2023;

SELECT firstname, lastname, signupyear, signupdate FROM customer WHERE signupyear = 2022;

--List products priced above $500.
SELECT productid, productname, price
FROM product WHERE price > 500;

--List products that are priced between 200 and 500
SELECT productid, productname, price
FROM product WHERE price between 200 and 500;

--Show products with less than 50 items in stock.
SELECT * from product where stockquantity < 50;

--List all sales transactions.
select * from sales;

--Count the total number of sales transactions.
select count (*) as Totalsales from sales;

--Display the top 10 most expensive products.
select * from product
order by price desc
limit 10;

--Find the average sale amount per transaction.
SELECT ROUND (AVG(saleamount),2) AS average_sale_amount
FROM sales;

--Calculate the total revenue generated from sales.
SELECT ROUND (SUM(saleamount),2) AS totalrevenue
FROM sales;

--Round the average price of the products to 2 decimal places.
select round (avg(price),2)
from product;

--List customer emails that contain 'gmail'.
SELECT * FROM customer;

--Determine the average sale amount for each product category.
SELECT ROUND(AVG(f.saleamount),2) AS Avg_sales_amount,dp.category
from sales f
inner join product dp on f.productid = dp.productid
GROUP by dp.category
ORDER BY Avg_sales_amount DESC;


SELECT ROUND(AVG(sales.saleamount),2) AS Avg_sales_amount,product.category
from product
inner join sales on product.productid = sales.productid
GROUP by product.category
ORDER BY Avg_sales_amount DESC;


--List customers and their purchase counts who have bought more than 3 items.
SELECT dc.firstname, dc.lastname, 
COUNT(f.saleid) AS Qty_Purchased
from customer dc
inner join sales f ON f.customerid = dc.customerid
GROUP BY dc.customerid
HAVING COUNT(f.saleid) > 3


--List all products and any sales data, including products that have not been sold.
SELECT dp.productname, f.saleid, f.saleamount
from product dp
full outer join sales f on dp.productid = f.productid;


--Show all customers and any sales transactions, including customers with no purchases.
SELECT dc.firstname, dc.lastname, f.saleid, f.saleamount
from customer dc
full join sales f on f.customerid = dc.customerid;


--Find total sales and stock quantities for all products, including those never sold.
SELECT dp.productname, dp.stockquantity, sum(f.quantitysold) AS Total_sales 
from product dp
full join sales f ON f.productid = dp.productid
group by dp.productname, dp.stockquantity
order by dp.stockquantity desc;


--list all product name and show the total quantity sold, with 0 if no sales.
select productname, coalesce(sum(quantitysold), 0)
	from product 
	left join sales on sales.productid = product.productid
	group by productname;
























































	