SELECT 
    city,
    DATE(transferdate) AS sale_day,
    SUM(price) AS total_sales
FROM pp_table  
GROUP BY city, sale_day
ORDER BY total_sales DESC
LIMIT 20;
