use restaurant_db;
select * from menu_items;
select count(*) from menu_items;
select * from menu_items
order by price desc;
select count(*) from menu_items
where category='italian';

select * from menu_items
where category='italian' 
order by price;

select * from menu_items
where category='italian' 
order by price desc ;

select category, avg(price) as avg_price_dishes 
from menu_items group by category;
