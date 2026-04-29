-- DATA exploartion -----
-- 1. View first 10 rows
SELECT *
FROM superstore_data;


 -- 2. Count total records
SELECT COUNT(*) AS total_records
FROM superstore_data;

 -- 3. Find distinct categories
SELECT DISTINCT Category
FROM superstore_data;

-- 4. Find distinct postal code
SELECT DISTINCT `postal code`,`Sub-Category`,category ,`ship mode`, segment
FROM superstore_data;

-- 5. Total sales
SELECT SUM(Sales) AS total_sales 
FROM superstore_data;

-- 6. Total profit
SELECT SUM(profit) AS total_profit
FROM superstore_data;


-- 7. Total sales per segment
SELECT Segment, SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY Segment;

-- 8.total profit per segment
SELECT Segment, SUM(profit) AS total_profit
FROM superstore_data
GROUP BY Segment;


-- 9. Total profit per category
SELECT Category, SUM(Profit) AS total_profit
FROM superstore_data
GROUP BY Category;

-- 10. Total sales per category
SELECT Category, SUM(sales) AS total_sales
FROM superstore_data
GROUP BY Category;


-- 11. Average discount
SELECT AVG(Discount) AS avg_discount,min(discount) as min_discount,max(discount) as max_discount 
FROM superstore_data;

-- 12 count of min (discount) city 
select count(distinct C+F1:Q82ity) as min_discount_cities
from superstore_data
where discount =(select min(discount) from superstore_data);

-- 13 count of max (discount) city 
select count(distinct city ) as max_discount_cities
from superstore_data
where discount =(select max(discount) from superstore_data);


-- 14 distinct region with min_discount ,state
select distinct region as min_discount_region ,state
from superstore_data
where discount =(select min(discount) from superstore_data);

-- 15 distinct region with min_discount ,state
select distinct region as max_discount_region ,state
from superstore_data
where discount =(select max(discount) from superstore_data);


-- 16. Top  state ,city ,region  by  total sales
SELECT state, city,region,SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY state,city,region
ORDER BY total_sales DESC
LIMIT 1;


-- 17. Top 5 states by profit
SELECT state,SUM(profit) AS total_profit
FROM superstore_data
GROUP BY state
ORDER BY total_profit DESC
LIMIT 5;


-- 18. Top  region   by sales
SELECT region , SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY region
ORDER BY total_sales desc;



-- 19. Least profitable category
SELECT Category, SUM(Profit) AS total_profit
FROM superstore_data
GROUP BY Category
ORDER BY total_profit ASC
LIMIT 1;

-- 20. Loss making products
SELECT city, SUM(Profit) AS total_profit
FROM superstore_data
GROUP BY city
HAVING total_profit <0;

-- 17. profit margin by category

select category ,sum(profit) as total_profit ,sum(sales) as total_sales ,(sum(profit)/sum(sales))*100 as profit_margin
from superstore_data
group by category ;

-- 18  Sales Contribution by Region

select region , sum(sales) as total_sales ,sum(sales)/ (select sum(sales) from superstore_data )*100 as region_salesp
from superstore_data
group by region ;

-- 19. Rank customers by total sales
SELECT CATEGORY ,sum(sales) as total_sales,
ROW_NUMBER() OVER(ORDER BY SUM(SALES) DESC)
FROM superstore_data
GROUP BY CATEGORY;

-- 20. left join
select * 
from orders
left join superstore_data
on orders.ordernumber=superstore_data.ordernumber;

-- 21 RIGHT JOIN
SELECT superstore_data.city,orders.ordernumber,orders.orderdate,superstore_data.region from
superstore_data 
right join orders
on orders.ordernumber=superstore_data.ordernumber;

-- 22 IDENTIFY THE PREVIOUS SALES USING LAG FUNCTION
SELECT ordernumber,sales,
LAG(sales) OVER (ORDER BY ordernumber) AS previous_sales
FROM superstore_data;

-- 23 IDENTIFY THE COMING PROFIT USING LEAD FUNCTION
SELECT ORDERNUMBER,PROFIT ,
LEAD(PROFIT) OVER (ORDER BY ORDERNUMBER)AS NEXT_PROFIT
FROM SUPERSTORE_DATA;



/** INSIGHTS 
