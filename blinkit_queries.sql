USE blinkit;

-- View Data
SELECT * FROM blinkit_data;

-- Total Records
SELECT COUNT(*) AS Total_Records
FROM blinkit_data;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM blinkit_data;

-- Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM blinkit_data;

-- Average Rating
SELECT AVG(Rating) AS Average_Rating
FROM blinkit_data;

-- Sales by Item Fat Content
SELECT `Item Fat Content`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Fat Content`;

-- Sales by Item Type
SELECT `Item Type`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Sales DESC;

-- Sales by Outlet Size
SELECT `Outlet Size`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Size`;

-- Sales by Outlet Location Type
SELECT `Outlet Location Type`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Location Type`;

-- Sales by Outlet Type
SELECT `Outlet Type`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Type`;

-- Average Sales by Item Type
SELECT `Item Type`,
AVG(Sales) AS Average_Sales
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Average_Sales DESC;

-- Maximum Sales
SELECT MAX(Sales) AS Highest_Sale
FROM blinkit_data;

-- Minimum Sales
SELECT MIN(Sales) AS Lowest_Sale
FROM blinkit_data;

-- Average Item Weight
SELECT AVG(`Item Weight`) AS Average_Item_Weight
FROM blinkit_data;

-- Average Item Visibility
SELECT AVG(`Item Visibility`) AS Average_Visibility
FROM blinkit_data;

-- Rating Distribution
SELECT Rating,
COUNT(*) AS Total_Items
FROM blinkit_data
GROUP BY Rating
ORDER BY Rating;

-- Outlet Establishment Year
SELECT `Outlet Establishment Year`,
COUNT(*) AS Total_Outlets
FROM blinkit_data
GROUP BY `Outlet Establishment Year`
ORDER BY `Outlet Establishment Year`;

-- Top 10 Highest Sales Products
SELECT `Item Identifier`,
`Item Type`,
Sales
FROM blinkit_data
ORDER BY Sales DESC
LIMIT 10;

-- Top 10 Lowest Sales Products
SELECT `Item Identifier`,
`Item Type`,
Sales
FROM blinkit_data
ORDER BY Sales ASC
LIMIT 10;

-- Sales by Outlet Establishment Year
SELECT `Outlet Establishment Year`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Establishment Year`
ORDER BY `Outlet Establishment Year`;

-- Sales by Outlet Size and Type
SELECT `Outlet Size`,
`Outlet Type`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Size`,`Outlet Type`;

-- Sales by Fat Content and Item Type
SELECT `Item Fat Content`,
`Item Type`,
SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Fat Content`,`Item Type`;

-- Average Rating by Outlet Type
SELECT `Outlet Type`,
AVG(Rating) AS Average_Rating
FROM blinkit_data
GROUP BY `Outlet Type`;

-- Item Count by Type
SELECT `Item Type`,
COUNT(*) AS Total_Items
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Items DESC;

-- Sales Greater Than 200
SELECT *
FROM blinkit_data
WHERE Sales > 200;

-- Rating Greater Than 4
SELECT *
FROM blinkit_data
WHERE Rating > 4;

-- Weight Greater Than 15
SELECT *
FROM blinkit_data
WHERE `Item Weight` > 15;

-- Visibility Less Than 0.05
SELECT *
FROM blinkit_data
WHERE `Item Visibility` < 0.05;

-- Final Dataset Check
SELECT *
FROM blinkit_data
LIMIT 20;
