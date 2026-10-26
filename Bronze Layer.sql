USE MASTER;
GO

CREATE DATABASE Airbnb;
GO

USE Airbnb;
GO

CREATE SCHEMA BRONZE;
GO
--===========================================================--
--BRONZE.amsterdam_weekdays--

SELECT *
FROM BRONZE.amsterdam_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.amsterdam_weekdays;

-- 2
SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.amsterdam_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.amsterdam_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;

--===========================================================--
--BRONZE.amsterdam_weekends--

SELECT *
FROM BRONZE.amsterdam_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.amsterdam_weekends;

-- 2
SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.amsterdam_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.amsterdam_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;


--===========================================================--
--BRONZE.athens_weekdays--

SELECT *
FROM BRONZE.athens_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.athens_weekdays;

-- 2
SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.athens_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.athens_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.athens_weekends--

SELECT *
FROM BRONZE.athens_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.athens_weekends;

-- 2
SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.athens_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.athens_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.barcelona_weekdays--

SELECT *
FROM BRONZE.barcelona_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.barcelona_weekdays;

-- 2
SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.barcelona_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.barcelona_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;


--===========================================================--
--BRONZE.barcelona_weekends--

SELECT *
FROM BRONZE.barcelona_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.barcelona_weekends;

-- 2
SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.barcelona_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.barcelona_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.berlin_weekdays--

SELECT *
FROM BRONZE.berlin_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.berlin_weekdays;

-- 2
SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.berlin_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.berlin_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.berlin_weekends--

SELECT *
FROM BRONZE.berlin_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.berlin_weekends;

-- 2
SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.berlin_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.berlin_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.budapest_weekdays--

SELECT *
FROM BRONZE.budapest_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.budapest_weekdays;

-- 2
SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.budapest_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.budapest_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;




--===========================================================--
--BRONZE.budapest_weekends--

SELECT *
FROM BRONZE.budapest_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.budapest_weekends;

-- 2
SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.budapest_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.budapest_weekends--

SELECT *
FROM BRONZE.budapest_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.budapest_weekends;

-- 2
SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.budapest_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.budapest_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.lisbon_weekdays--

SELECT *
FROM BRONZE.lisbon_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.lisbon_weekdays;

-- 2
SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.lisbon_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.lisbon_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.lisbon_weekends--

SELECT *
FROM BRONZE.lisbon_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.lisbon_weekends;

-- 2
SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.lisbon_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.lisbon_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.london_weekdays--

SELECT *
FROM BRONZE.london_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.london_weekdays;

-- 2
SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.london_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.london_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;




--===========================================================--
--BRONZE.london_weekends--

SELECT *
FROM BRONZE.london_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.london_weekends;

-- 2
SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.london_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.london_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;




--===========================================================--
--BRONZE.paris_weekdays--

SELECT *
FROM BRONZE.paris_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.paris_weekdays;

-- 2
SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.paris_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.paris_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;




--===========================================================--
--BRONZE.paris_weekends--

SELECT *
FROM BRONZE.paris_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.paris_weekends;

-- 2
SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.paris_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.paris_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;





--===========================================================--
--BRONZE.rome_weekdays--

SELECT *
FROM BRONZE.rome_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.rome_weekdays;

-- 2
SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.rome_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.rome_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;




--===========================================================--
--BRONZE.rome_weekends--

SELECT *
FROM BRONZE.rome_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.rome_weekends;

-- 2
SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.rome_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.rome_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;




--===========================================================--
--BRONZE.vienna_weekdays--

SELECT *
FROM BRONZE.vienna_weekdays; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.vienna_weekdays;

-- 2
SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.vienna_weekdays
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.vienna_weekdays
GROUP BY [Column 0]
HAVING COUNT(*) > 1;



--===========================================================--
--BRONZE.vienna_weekends--

SELECT *
FROM BRONZE.vienna_weekends; 
-- 1
SELECT 
   SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN dist IS NULL OR dist = '' THEN 1 ELSE 0 END) AS dist,
   SUM(CASE WHEN room_type IS NULL OR room_type = '' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN lng IS NULL OR lng = '' THEN 1 ELSE 0 END) AS lng,
   SUM(CASE WHEN lat IS NULL OR lat = '' THEN 1 ELSE 0 END) AS lat,
   SUM(CASE WHEN bedrooms IS NULL OR bedrooms = '' THEN 1 ELSE 0 END) AS bedrooms,
   SUM(CASE WHEN guest_satisfaction_overall IS NULL OR guest_satisfaction_overall = '' THEN 1 ELSE 0 END) AS guest_satisfaction_overall,
   SUM(CASE WHEN host_is_superhost IS NULL OR host_is_superhost = '' THEN 1 ELSE 0 END) AS host_is_superhost,
   SUM(CASE WHEN multi IS NULL OR multi = '' THEN 1 ELSE 0 END) AS multi,
   SUM(CASE WHEN biz IS NULL OR biz = '' THEN 1 ELSE 0 END) AS biz
FROM BRONZE.vienna_weekends;

-- 2
SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(bedrooms AS INT) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(multi AS BIT) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(biz AS BIT) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(host_is_superhost AS BIT) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(realSum AS DECIMAL) IS NULL;

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) IS NULL;

--3 Out of range

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(realSum AS DECIMAL) <= 0;


SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(guest_satisfaction_overall AS DECIMAL) NOT BETWEEN 0 AND 100;

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(bedrooms AS INT) < 0;



SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(dist AS decimal) < 0;

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(multi AS BIT) NOT IN (0,1);

SELECT * 
FROM BRONZE.vienna_weekends
WHERE TRY_CAST(biz AS BIT) NOT IN (0,1);

-- Check Duplicates

SELECT
    [Column 0],
    COUNT(*) AS cnt
FROM BRONZE.vienna_weekends
GROUP BY [Column 0]
HAVING COUNT(*) > 1;