create index sales_idx on sales( PRICEEACH, YEAR_ID, COUNTRY);

select count(distinct CUSTOMERNAME) as CustomerName from sales where COUNTRY = 'USA';

select COUNT(distinct CUSTOMERNAME) as CountCustomer from sales where SALES > 5000;


select count(distinct PRODUCTCODE) as ProductCount from sales
where YEAR_ID = 2003;


select sum(SALES) as TotalSalePrice from sales 
where YEAR_ID = 2005;

select YEAR_ID, sum(sales) as totalsaleprice from sales group by YEAR_ID;