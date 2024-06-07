-- 1. Temporal Sales Analysis

-- 1.1. What are the total gross ticket sales per fiscal year?

SELECT 
    fiscal_year,
    SUM(gross_sales_amount) AS total_gross_sales
FROM [TABLE_NAME]
GROUP BY fiscal_year;

-- 1.2. How do ticket sales vary from month to month within a given calendar year, for example 2023?

SELECT 
    cal_month,
    SUM(gross_sales_amount) AS monthly_gross_sales
FROM [TABLE_NAME]
WHERE cal_year = 2023
GROUP BY cal_month
ORDER BY cal_month;

-- 2. Geographical Distribution

-- 2.1. Which retailer location cities have the highest net ticket sales?
-- We will examine the top 5 cities based on their net ticket sales.

SELECT 
    location_city,
    SUM(net_sales_amount) AS total_net_sales
FROM [TABLE_NAME]
GROUP BY location_city
ORDER BY total_net_sales DESC
LIMIT 5;

-- 2.2. How do ticket sales compare across different counties?
-- Top 3 Texas counties with the highest gross ticket sales.

SELECT 
    location_county_desc,
    SUM(gross_sales_amount) AS total_gross_sales
FROM [TABLE_NAME]
GROUP BY location_county_desc
ORDER BY total_gross_sales DESC
LIMIT 3;

-- Top 3 Texas counties with the lowest gross ticket sales.

SELECT 
    location_county_desc,
    SUM(gross_sales_amount) AS total_gross_sales
FROM [TABLE_NAME]
GROUP BY location_county_desc
ORDER BY total_gross_sales ASC
LIMIT 3;

-- 3. Game Category Analysis

-- 3.1. Which game categories generate the most gross ticket sales?

SELECT 
    game_category,
    SUM(gross_sales_amount) AS total_gross_sales
FROM [TABLE_NAME]
GROUP BY game_category
ORDER BY total_gross_sales DESC;

-- 4. Retailer Performance

-- 4.1. Which retailer locations have the highest number of cancelled tickets?
-- We'll examine the top 5 Texas locations with the highest number of cancelled tickets.

SELECT 
    location_name,
    SUM(cancelled_amount) AS total_cancelled_amount
FROM [TABLE_NAME]
GROUP BY location_name
ORDER BY total_cancelled_amount DESC
LIMIT 5;

-- 5. Sales Efficiency

-- 5.1. Which counties have the most efficient (highest net to gross sales ratio) ticket sales?
-- We'll examine the top 5 counties with the most efficient (highest net to gross sales ratio) ticket sales.

SELECT 
    location_county_desc,
    SUM(net_sales_amount) / SUM(gross_sales_amount) AS efficiency
FROM [TABLE_NAME]
WHERE gross_sales_amount > 0
GROUP BY location_county_desc
ORDER BY efficiency DESC
LIMIT 5;

-- We'll examine the top 5 counties with the least efficient (lowest net to gross sales ratio) ticket sales.

SELECT 
    location_county_desc,
    SUM(net_sales_amount) / SUM(gross_sales_amount) AS efficiency
FROM [TABLE_NAME]
WHERE gross_sales_amount > 0
GROUP BY location_county_desc
ORDER BY efficiency ASC
LIMIT 5;

-- 6. Longitudinal Studies

-- 6.1. How has the average Scratch ticket price changed over the years?
-- We'll examine the year-over-year change in the average price of Scratch Tickets from 2021 through 2024 fiscal years.

SELECT 
    fiscal_year,
    AVG(instant_price_point) AS average_price
FROM [TABLE_NAME]
WHERE game_category = 'Scratch Tickets'
GROUP BY fiscal_year
ORDER BY fiscal_year;
