CREATE INDEX saleshistory_index ON SALES(sales,year_id,country);

--Count the customers who are all ordered from the country USA
SELECT COUNT(DISTINCT CUSTOMERNAME) AS USA FROM SALES WHERE COUNTRY='USA';

--Count the customers who are all purchase the products above 5000
SELECT COUNT(DISTINCT CUSTOMERNAME) AS productsprice FROM SALES WHERE PRICEEACH * QUANTITYORDERED > 5000;

--Find how many products are ordered in the year 2003
SELECT COUNT(DISTINCT PRODUCTCODE) AS ProductsCountIn2003 FROM SALES WHERE YEAR_ID=2003;

--Find the total sale price in the year 2005
SELECT SUM(SALES) AS TotalPriceInYear2005 FROM SALES WHERE YEAR_ID=2005;

--Find the total sale price of each year
SELECT YEAR_ID, SUM(SALES) AS TotalPrice FROM SALES GROUP BY YEAR_ID;