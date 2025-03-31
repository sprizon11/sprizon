-- View the order_details table. 
select *from order_details;
-- What is the date range of the table?
select * from order_details
order by order_date;
-- How many orders were made within this date range? 
select count(distinct order_id) from order_details;

-- Which orders had the most number of items?
select count(*) from order_details;

-- Which orders had the most number of items?
select order_id, count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;

-- How many orders had more than 12 items?
select count(*)
from
(select order_id, count(item_id) as num_items
from order_details
group by order_id
having num_items >12) as num_orders;
