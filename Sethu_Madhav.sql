create index sales_idx on sales( PRICEEACH, QUANTITYORDERED, YEAR_ID, COUNTRY);

select COUNT(distinct CUSTOMERNAME) as CustomerName from sales where COUNTRY = 'USA';

select COUNT(distinct CUSTOMERNAME) as CountCustomer from sales where PRICEEACH * QUANTITYORDERED > 5000;


select COUNT(distinct PRODUCTCODE) as ProductCount from sales
where YEAR_ID = 2003;


select SUM(SALES) as TotalSalePrice from sales 
where YEAR_ID = 2005;

select YEAR_ID, SUM(sales) as totalsaleprice from sales group by YEAR_ID;
