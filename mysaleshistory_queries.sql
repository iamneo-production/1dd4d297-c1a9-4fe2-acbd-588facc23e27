--Count the customers who are all ordered from the country USA
SELECT COUNT(DISTINCT CUSTOMERNAME) FROM SALES WHERE COUNTRY='USA';

--Count the customers who are all purchase the product above 5000
SELECT COUNT(DISTINCT CUSTOMERNAME) FROM Sales WHERE SALES>5000;

--Find how many products are ordered in the year 2003
SELECT COUNT(DISTINCT PRODUCTCODE) FROM SALES WHERE YEAR_ID=2003;

--Find the total sale price in the year 2005
SELECT SUM(SALES) FROM SALES WHERE YEAR_ID=2005;

--Find the total sale price of each year
SELECT YEAR_ID, SUM(SALES) FROM SALES GROUP BY YEAR_ID;