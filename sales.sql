--Write a SQL query to find the total customers list who are all ordered from the USA?
SELECT COUNT(DISTINCT CUSTOMERNAME) AS Customercount FROM SALES WHERE COUNTRY= 'USA';

--Count the customers who have purchased a product priced above 5000
SELECT COUNT(DISTINCT CUSTOMERNAME) AS Customercount FROM SALES WHERE SALES > 5000;

--Find the number of products ordered in the year 2003;
SELECT COUNT(DISTINCT PRODUCTCODE) AS Productcount FROM SALES WHERE YEAR_ID=2003;

--Find the total sale price in the year 2005;
SELECT SUM(SALES) AS Totalsaleprice FROM SALES WHERE YEAR_ID=2005;

--Find the total sale price from each year;
SELECT YEAR_ID,SUM(SALES) AS Totalsaleprice FROM SALES GROUP BY YEAR_ID;