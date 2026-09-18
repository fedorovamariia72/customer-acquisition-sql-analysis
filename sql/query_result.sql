--ТОР 5 каналів залучення клієнтів-жінок, які приносять найбільше виручки

SELECT 
     c.acquisition_channel,
     COUNT(DISTINCT c.user_id) AS female_users,
     COUNT(o.order_id) AS female_orders,
     COALESCE(SUM(o.purchase_amount), 0) AS female_revenue,
     COALESCE(ROUND(AVG(o.purchase_amount), 2), 0) AS avg_check
FROM customers c
LEFT JOIN orders o ON o.user_id = c.user_id
WHERE c.gender = 'Female'
GROUP BY c.acquisition_channel
ORDER BY female_revenue DESC  LIMIT 5;
