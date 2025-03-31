-- Combine the menu_items and order_details tables into a single table
select * from menu_items;
select * from order_details;

select * from order_details od left join menu_items mi
		     on od.item_id = mi.menu_item_id;

-- What were the least and most ordered items? What categories were they in?

select item_name, category, count(order_details_id) as num_purchase from order_details od left join menu_items mi
		     on od.item_id = mi.menu_item_id group by item_name, category order by num_purchase desc ;

-- What were the top 5 orders that spent the most money?

select order_id, sum(price) as total_spend from order_details od left join menu_items mi
		     on od.item_id = mi.menu_item_id group by order_id order by total_spend desc limit 5 ;


-- View the details of the highest spend order. Which specific items were purchased?
select category, count(item_id) as num_items from order_details od left join menu_items mi
		     on od.item_id = mi.menu_item_id 
             where order_id=440 group by category;


-- BONUS: View the details of the top 5 highest spend orders
select order_id, category, count(item_id) as num_items from order_details od left join menu_items mi
		     on od.item_id = mi.menu_item_id 
             where order_id in (440, 2075,1957,330,2675) group by order_id, category;

             