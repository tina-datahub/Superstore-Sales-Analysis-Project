CREATE DATABASE superstore;
DROP DATABASE IF  EXISTS superstore ;
USE superstore;

CREATE TABLE superstore_data(
order_id INT PRIMARY KEY,
order_date DATE,
ship_mode VARCHAR(50),	
Segment VARCHAR(50),
Country	VARCHAR(50),
City VARCHAR(50),
State VARCHAR(50),
PostalCode	INT,
Region VARCHAR(50)	,
Category VARCHAR(50),
Sub_Category VARCHAR(50),
Sales FLOAT,
samplesuperstoreQuantity FLOAT,
Discount FLOAT,
Profit FLOAT

);
CREATE TABLE orders (
ordernumber INT,
orderdate date,
requiredDate  date,
shippedDate date,
status varchar(20),
customerNumber int  
); 
    
    
select * from superstore_data;
select * from orders;

