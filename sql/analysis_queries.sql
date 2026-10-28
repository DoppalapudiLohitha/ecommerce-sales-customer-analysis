SELECT DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
       ROUND(SUM(i.price), 2) AS revenue
FROM orders o
JOIN order_items i ON o.order_id = i.order_id
WHERE o.order_status = 'delivered'
GROUP BY order_month
ORDER BY order_month;

SELECT p.product_category_name, ROUND(SUM(i.price), 2) AS revenue
FROM orders o
JOIN order_items i ON o.order_id = i.order_id
JOIN products p ON i.product_id = p.product_id
WHERE o.order_status = 'delivered'
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;

SELECT orders_per_customer, COUNT(*) AS customers
FROM (
    SELECT c.customer_unique_id, COUNT(DISTINCT o.order_id) AS orders_per_customer
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
) t
GROUP BY orders_per_customer
ORDER BY orders_per_customer;

SELECT customer_unique_id, total_spent,
       RANK() OVER (ORDER BY total_spent DESC) AS spend_rank
FROM (
    SELECT c.customer_unique_id, ROUND(SUM(i.price), 2) AS total_spent
    FROM orders o
    JOIN order_items i ON o.order_id = i.order_id
    JOIN customers c ON o.customer_id = c.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
) t
ORDER BY spend_rank
LIMIT 10;