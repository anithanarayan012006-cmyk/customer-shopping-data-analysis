-- Customer Shopping Trends Analysis

-- 1. View all customer records
SELECT *
FROM customer_shopping_behavior;

-- 2. Count total customers
SELECT COUNT(*) AS total_customers
FROM customer_shopping_behavior;

-- 3. Calculate total purchase amount
SELECT SUM("Purchase Amount (USD)") AS total_sales
FROM customer_shopping_behavior;

-- 4. Calculate average purchase amount
SELECT AVG("Purchase Amount (USD)") AS average_purchase
FROM customer_shopping_behavior;

-- 5. Total sales by category
SELECT
    Category,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer_shopping_behavior
GROUP BY Category
ORDER BY total_sales DESC;

-- 6. Number of customers by category
SELECT
    Category,
    COUNT(*) AS customer_count
FROM customer_shopping_behavior
GROUP BY Category
ORDER BY customer_count DESC;

-- 7. Average review rating by category
SELECT
    Category,
    AVG("Review Rating") AS average_rating
FROM customer_shopping_behavior
GROUP BY Category
ORDER BY average_rating DESC;

-- 8. Sales by season
SELECT
    Season,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer_shopping_behavior
GROUP BY Season
ORDER BY total_sales DESC;

-- 9. Sales by gender
SELECT
    Gender,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer_shopping_behavior
GROUP BY Gender
ORDER BY total_sales DESC;

-- 10. Subscription status analysis
SELECT
    "Subscription Status",
    COUNT(*) AS customers,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer_shopping_behavior
GROUP BY "Subscription Status";
