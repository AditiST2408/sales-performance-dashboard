1. Category Sales View
CREATE VIEW category_sales AS
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales
FROM train
GROUP BY Category
ORDER BY total_sales DESC;

2. Region Sales View
CREATE VIEW region_sales AS
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales
FROM train
GROUP BY Region
ORDER BY total_sales DESC;

3. Monthly Sales View
CREATE VIEW monthly_sales AS
SELECT
    DATE_FORMAT(
        STR_TO_DATE(`Order Date`, '%m/%d/%Y'),
        '%Y-%m'
    ) AS month,
    ROUND(SUM(Sales), 2) AS total_sales
FROM train
GROUP BY month
ORDER BY month;

4. Top Customers View
CREATE VIEW top_customers AS
SELECT
    `Customer Name`,
    ROUND(SUM(Sales), 2) AS total_sales
FROM train
GROUP BY `Customer Name`
ORDER BY total_sales DESC;