create schema hr;
go

create table hr.candidates(
	id int primary key identity,
	fullname varchar(100) not null);

create table hr.employees(
	id int primary key identity,
	fullname varchar(100) not null);


insert into 
	hr.candidates(fullname)
values
	('Saad'),
	('Mohsin'),
	('Owais'),
	('Haseeb')

insert into 
	hr.employees(fullname)
values
	('Haseeb'),
	('Saad'),
	('Bilal'),
	('Adnan')

select * from hr.employees
select * from hr.candidates

--syntax
--SELECT * FROM TABLE_1
-- INNER JOIN TABLE_2
--      ON TABLE_1.COLUMN = TABLE_2.COLUMN

SELECT c.fullname FROM hr.candidates c
INNER JOIN hr.employees e
    ON c.fullname = e.fullname

SELECT c.id as candid_id, e.id as emp_id, c.fullname FROM hr.candidates c
INNER JOIN hr.employees e
    ON c.fullname = e.fullname --these values are interchangable

select 
product_name, 
list_price, 
products.category_id 
--brands.brand_id
from 
	production.products
	INNER JOIN production.categories
		ON products.category_id = categories.category_id
	INNER JOIN production.brands
		ON products.brand_id = brands.brand_id
ORDER BY
	product_name desc


select first_name + ' ' + last_name as Full_name, order_id, order_status from sales.customers
INNER JOIN sales.orders
	ON orders.customer_id = customers.customer_id 

--left join
SELECT
	p.product_name,
	oi.order_id
FROM
	production.products p
JOIN SALES.order_items oi
	ON p.product_id = oi.product_id

SELECT
	p.product_name,
	oi.order_id
FROM
	production.products p
LEFT JOIN SALES.order_items oi
	ON p.product_id = oi.product_id
order by order_id
	
