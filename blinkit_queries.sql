-- ==========================================
-- BlinkIT Grocery Sales Analysis
-- ==========================================

-- =========================
-- Data Cleaning
-- =========================

USE newstart;

SELECT * FROM blinkit_data;

SELECT COUNT(*) AS Total_Records
FROM blinkit_data;

DESCRIBE blinkit_data;

SELECT *
FROM blinkit_data
WHERE Sales IS NULL
   OR Rating IS NULL
   OR `Item Weight` IS NULL;

UPDATE blinkit_data
SET `Item Fat Content`='Low Fat'
WHERE `Item Fat Content`='LF';

UPDATE blinkit_data
SET `Item Fat Content`='Regular'
WHERE `Item Fat Content`='reg';

SELECT DISTINCT `Item Fat Content` FROM blinkit_data;
SELECT DISTINCT `Item Type` FROM blinkit_data;
SELECT DISTINCT `Outlet Type` FROM blinkit_data;

-- =========================
-- Exploratory Data Analysis (EDA)
-- =========================

SELECT SUM(Sales) AS Total_Sales FROM blinkit_data;
SELECT ROUND(AVG(Sales),2) AS Average_Sales FROM blinkit_data;
SELECT ROUND(AVG(Rating),2) AS Average_Rating FROM blinkit_data;

SELECT `Item Type`,SUM(Sales) AS Total_Sales FROM blinkit_data GROUP BY `Item Type` ORDER BY Total_Sales DESC;
SELECT `Outlet Type`,SUM(Sales) AS Total_Sales FROM blinkit_data GROUP BY `Outlet Type` ORDER BY Total_Sales DESC;
SELECT `Outlet Size`,SUM(Sales) AS Total_Sales FROM blinkit_data GROUP BY `Outlet Size` ORDER BY Total_Sales DESC;
SELECT `Outlet Location Type`,SUM(Sales) AS Total_Sales FROM blinkit_data GROUP BY `Outlet Location Type` ORDER BY Total_Sales DESC;
SELECT `Item Fat Content`,SUM(Sales) AS Total_Sales FROM blinkit_data GROUP BY `Item Fat Content`;
SELECT `Outlet Establishment Year`,SUM(Sales) AS Total_Sales FROM blinkit_data GROUP BY `Outlet Establishment Year` ORDER BY `Outlet Establishment Year`;

SELECT `Item Type`,`Item Fat Content`,SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Type`,`Item Fat Content`
ORDER BY Total_Sales DESC;

SELECT `Item Type`,ROUND(AVG(Rating),2) AS Average_Rating
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Average_Rating DESC;

SELECT `Outlet Location Type`,ROUND(AVG(Sales),2) AS Average_Sales
FROM blinkit_data
GROUP BY `Outlet Location Type`
ORDER BY Average_Sales DESC;

SELECT `Outlet Size`,ROUND(AVG(Sales),2) AS Average_Sales
FROM blinkit_data
GROUP BY `Outlet Size`;

SELECT `Outlet Type`,ROUND(AVG(Rating),2) AS Average_Rating
FROM blinkit_data
GROUP BY `Outlet Type`;

-- =========================
-- Business Insights
-- =========================

SELECT `Item Identifier`,Sales FROM blinkit_data ORDER BY Sales DESC LIMIT 10;
SELECT `Item Identifier`,Sales FROM blinkit_data ORDER BY Sales LIMIT 10;
SELECT `Item Identifier`,Rating FROM blinkit_data ORDER BY Rating DESC LIMIT 10;

SELECT `Item Type`,COUNT(*) AS Total_Items
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Items DESC;

SELECT `Outlet Size`,COUNT(*) AS Total_Items
FROM blinkit_data
GROUP BY `Outlet Size`
ORDER BY Total_Items DESC;

SELECT `Item Identifier`,`Item Type`,Rating
FROM blinkit_data
WHERE Rating>4
ORDER BY Rating DESC;

SELECT `Item Identifier`,Sales
FROM blinkit_data
WHERE Sales>200
ORDER BY Sales DESC;

SELECT `Item Type`,SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Sales DESC
LIMIT 1;

SELECT `Item Type`,SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Total_Sales
LIMIT 1;

SELECT `Item Type`,ROUND(AVG(Rating),2) AS Average_Rating
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Average_Rating DESC
LIMIT 1;

SELECT `Item Weight`,SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Item Weight`
ORDER BY Total_Sales DESC;

SELECT `Outlet Location Type`,ROUND(AVG(Rating),2) AS Average_Rating
FROM blinkit_data
GROUP BY `Outlet Location Type`
ORDER BY Average_Rating DESC;

SELECT `Outlet Identifier`,SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Identifier`
ORDER BY Total_Sales DESC;

SELECT `Outlet Type`,COUNT(*) AS Total_Items
FROM blinkit_data
GROUP BY `Outlet Type`
ORDER BY Total_Items DESC;

SELECT `Outlet Size`,`Outlet Location Type`,SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY `Outlet Size`,`Outlet Location Type`
ORDER BY Total_Sales DESC;

SELECT `Item Type`,ROUND(AVG(`Item Weight`),2) AS Average_Weight
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Average_Weight DESC;

SELECT `Item Type`,ROUND(AVG(`Item Visibility`),4) AS Average_Visibility
FROM blinkit_data
GROUP BY `Item Type`
ORDER BY Average_Visibility DESC;
