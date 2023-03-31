SELECT customers.customer_state, count(orders.order_id) as total
FROM `dbt_cristian.orders` as orders 
INNER JOIN `dbt_cristian.customers` as customers ON customers.customer_id = orders.customer_id
group by customers.customer_state
