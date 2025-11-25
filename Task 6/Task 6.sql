CREATE TABLE online_sales (
  order_id INT,
  order_date DATE,
  amount DECIMAL(10,2),
  product_id INT
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1,'2023-01-05',500,101),
(2,'2023-01-22',650,102),
(3,'2023-02-10',700,103),
(4,'2023-02-27',450,104),
(5,'2023-03-05',300,105),
(6,'2023-03-18',850,106),
(7,'2023-04-04',900,107),
(8,'2023-04-21',550,108),
(9,'2023-05-03',650,109),
(10,'2023-05-29',750,110),
(11,'2023-06-12',450,111),
(12,'2023-06-26',990,112),
(13,'2023-07-09',800,113),
(14,'2023-07-22',420,114),
(15,'2023-08-18',550,115),
(16,'2023-08-30',780,116),
(17,'2023-09-07',400,117),
(18,'2023-09-27',1200,118),
(19,'2024-01-03',750,119),
(20,'2024-01-19',670,120),
(21,'2024-05-14',600,121),
(22,'2024-06-28',990,122),
(23,'2024-10-05',499,123),
(24,'2024-12-22',950,124);

SELECT  
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    order_id,
    amount
FROM online_sales
ORDER BY year, month;


SELECT  
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month
FROM online_sales
GROUP BY year, month;


SELECT 
    DATE_FORMAT(order_date, '%Y') AS year,
    DATE_FORMAT(order_date, '%M') AS month_name,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month_name
ORDER BY year, STR_TO_DATE(month_name, '%M');


SELECT  
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS unique_orders
FROM online_sales
GROUP BY year, month
HAVING COUNT(DISTINCT order_id) >= 2
ORDER BY unique_orders DESC;


SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS revenue
FROM online_sales
GROUP BY year, month
ORDER BY revenue DESC;

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS revenue
FROM online_sales
GROUP BY year, month
ORDER BY year DESC, month DESC
LIMIT 3;