CREATE INDEX sale_index ON sales(year_id,sales,country);

----Count all customers who ordered from the country USA
SELECT COUNT(DISTINCT customername) AS total_customers FROM sales WHERE country = 'USA';

--Count all customers who purchased the product exceeding 5000
SELECT COUNT(DISTINCT customername) AS customer_count FROM sales WHERE priceeach*quantityordered > 5000;

--Find how many products are ordered in the year 2003
SELECT COUNT(DISTINCT productcode) AS product_count FROM sales WHERE year_id = 2003;

--Find the total sale price in the year 2005
SELECT SUM(sales) AS total_sale_price FROM sales WHERE year_id = 2005;

--Find the total sale price of each year
SELECT year_id, SUM(sales) AS total_sale_price FROM sales GROUP BY year_id;