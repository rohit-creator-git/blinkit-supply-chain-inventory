-- Select Database
USE  newstart;

-- View Data
SELECT *
FROM blinkit_data;

-- Total Records
SELECT COUNT(*) AS Total_Records
FROM blinkit_data;

-- Check Missing Values
SELECT *
FROM blinkit_data
WHERE Sales IS NULL
   OR Rating IS NULL
   OR `Item Weight` IS NULL;

-- Check Duplicate Records
SELECT `Item Identifier`,
COUNT(*) AS Total
FROM blinkit_data
GROUP BY `Item Identifier`
HAVING COUNT(*) > 1;

-- Update Item Fat Content
UPDATE blinkit_data
SET `Item Fat Content` = 'Low Fat'
WHERE `Item Fat Content` = 'LF';

UPDATE blinkit_data
SET `Item Fat Content` = 'Regular'
WHERE `Item Fat Content` = 'reg';

-- Verify Changes
SELECT DISTINCT `Item Fat Content`
FROM blinkit_data;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM blinkit_data;

-- Average Sales
SELECT ROUND(AVG(Sales),2) AS Average_Sales
FROM blinkit_data;

-- Average Rating
SELECT ROUND(AVG(Rating),2) AS Average_Rating
FROM blinkit_data;

-- Sales by Item Type
SELECT `Item Type`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Sales DESC;

-- Sales by Outlet Type
SELECT `Outlet Type`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Type`
ORDER BY Total_Sales DESC;

-- Sales by Outlet Size
SELECT `Outlet Size`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Size`
ORDER BY Total_Sales DESC;

-- Sales by Outlet Location
SELECT `Outlet Location Type`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Location Type`
ORDER BY Total_Sales DESC;

-- Sales by Fat Content
SELECT `Item Fat Content`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Fat Content`;

-- Sales by Establishment Year
SELECT `Outlet Establishment Year`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Establishment Year`
ORDER BY `Outlet Establishment Year`;

-- Top 10 Highest Selling Products
SELECT `Item Identifier`,
Sales
FROM blinkit_data
ORDER BY Sales DESC
LIMIT 10;

-- Top 10 Lowest Selling Products
SELECT `Item Identifier`,
Sales
FROM blinkit_data
ORDER BY Sales
LIMIT 10;

-- Highest Rated Products
SELECT `Item Identifier`,
Rating
FROM blinkit_data
ORDER BY Rating DESC
LIMIT 10;

-- Average Sales by Outlet Size
SELECT `Outlet Size`,
ROUND(AVG(Sales),2) AS Average_Sales
FROM blinkit_data
GROUP BY `Outlet Size`;

-- Average Rating by Outlet Type
SELECT `Outlet Type`,
ROUND(AVG(Rating),2) AS Average_Rating
FROM blinkit_data
GROUP BY `Outlet Type`;

-- Total Items by Item Type
SELECT `Item Type`,
COUNT(*) AS Total_Items
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Items DESC;