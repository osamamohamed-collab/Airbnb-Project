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

--============================================================================
-- Silver Schema


CREATE SCHEMA Silver;
GO

SELECT *
FROM BRONZE.amsterdam_weekdays;

SELECT
    TRY_CAST([Column 0] AS INT) AS listing_id,
    TRY_CAST(realSum AS DECIMAL(18, 2)) AS realSum,
    room_type,
    TRY_CAST(room_shared AS BIT) AS room_shared,
    TRY_CAST(room_private AS BIT) AS room_private,
    person_capacity,
    TRY_CAST(host_is_superhost AS BIT) AS host_is_superhost,
    TRY_CAST(multi AS BIT) AS multi,
    TRY_CAST(biz AS BIT) AS biz,
    TRY_CAST(cleanliness_rating AS DECIMAL(5, 2))
        AS cleanliness_rating,
    TRY_CAST(guest_satisfaction_overall AS DECIMAL(5, 2))
        AS guest_satisfaction_overall,
    TRY_CAST(bedrooms AS INT) AS bedrooms,
    TRY_CAST(dist AS DECIMAL(10, 3)) AS dist,
    TRY_CAST(metro_dist AS DECIMAL(10, 3)) AS metro_dist,
    TRY_CAST(attr_index AS DECIMAL(18, 6)) AS attr_index,
    TRY_CAST(attr_index_norm AS DECIMAL(18, 6))
        AS attr_index_norm,
    TRY_CAST(rest_index AS DECIMAL(18, 6)) AS rest_index,
    TRY_CAST(rest_index_norm AS DECIMAL(18, 6))
        AS rest_index_norm,
    TRY_CAST(lng AS DECIMAL(10, 6)) AS lng,
    TRY_CAST(lat AS DECIMAL(10, 6)) AS lat
INTO SILVER.vienna_weekends
FROM BRONZE.vienna_weekends;

SELECT *
FROM SILVER.vienna_weekends;


ALTER TABLE SILVER.amsterdam_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.amsterdam_weekdays
ADD CONSTRAINT PK_amsterdam_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.amsterdam_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.amsterdam_weekends
ADD CONSTRAINT PK_amsterdam_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.athens_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.athens_weekdays
ADD CONSTRAINT PK_athens_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.athens_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.athens_weekends
ADD CONSTRAINT PK_athens_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.barcelona_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.barcelona_weekdays
ADD CONSTRAINT PK_barcelona_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.barcelona_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.barcelona_weekends
ADD CONSTRAINT PK_barcelona_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.berlin_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.berlin_weekdays
ADD CONSTRAINT PK_berlin_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.berlin_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.berlin_weekends
ADD CONSTRAINT PK_berlin_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.budapest_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.budapest_weekdays
ADD CONSTRAINT PK_budapest_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.budapest_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.budapest_weekends
ADD CONSTRAINT PK_budapest_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.lisbon_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.lisbon_weekdays
ADD CONSTRAINT PK_lisbon_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.lisbon_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.lisbon_weekends
ADD CONSTRAINT PK_lisbon_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.london_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.london_weekdays
ADD CONSTRAINT PK_london_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.london_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.london_weekends
ADD CONSTRAINT PK_london_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.paris_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.paris_weekdays
ADD CONSTRAINT PK_paris_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.paris_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.paris_weekends
ADD CONSTRAINT PK_paris_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.rome_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.rome_weekdays
ADD CONSTRAINT PK_rome_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.rome_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.rome_weekends
ADD CONSTRAINT PK_rome_weekends
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.vienna_weekdays
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.vienna_weekdays
ADD CONSTRAINT PK_vienna_weekdays
PRIMARY KEY (listing_id);
GO


ALTER TABLE SILVER.vienna_weekends
ALTER COLUMN listing_id INT NOT NULL;

ALTER TABLE SILVER.vienna_weekends
ADD CONSTRAINT PK_vienna_weekends
PRIMARY KEY (listing_id);
GO



SELECT
    'Amsterdam' AS city,
    'Weekdays' AS day_type,
    *
INTO SILVER.airbnb_all
FROM SILVER.amsterdam_weekdays

UNION ALL

SELECT 'Amsterdam', 'Weekends', *
FROM SILVER.amsterdam_weekends

UNION ALL

SELECT 'Athens', 'Weekdays', *
FROM SILVER.athens_weekdays

UNION ALL

SELECT 'Athens', 'Weekends', *
FROM SILVER.athens_weekends

UNION ALL

SELECT 'Barcelona', 'Weekdays', *
FROM SILVER.barcelona_weekdays

UNION ALL

SELECT 'Barcelona', 'Weekends', *
FROM SILVER.barcelona_weekends

UNION ALL

SELECT 'Berlin', 'Weekdays', *
FROM SILVER.berlin_weekdays

UNION ALL

SELECT 'Berlin', 'Weekends', *
FROM SILVER.berlin_weekends

UNION ALL

SELECT 'Budapest', 'Weekdays', *
FROM SILVER.budapest_weekdays

UNION ALL

SELECT 'Budapest', 'Weekends', *
FROM SILVER.budapest_weekends

UNION ALL

SELECT 'Lisbon', 'Weekdays', *
FROM SILVER.lisbon_weekdays

UNION ALL

SELECT 'Lisbon', 'Weekends', *
FROM SILVER.lisbon_weekends

UNION ALL

SELECT 'London', 'Weekdays', *
FROM SILVER.london_weekdays

UNION ALL

SELECT 'London', 'Weekends', *
FROM SILVER.london_weekends

UNION ALL

SELECT 'Paris', 'Weekdays', *
FROM SILVER.paris_weekdays

UNION ALL

SELECT 'Paris', 'Weekends', *
FROM SILVER.paris_weekends

UNION ALL

SELECT 'Rome', 'Weekdays', *
FROM SILVER.rome_weekdays

UNION ALL

SELECT 'Rome', 'Weekends', *
FROM SILVER.rome_weekends

UNION ALL

SELECT 'Vienna', 'Weekdays', *
FROM SILVER.vienna_weekdays

UNION ALL

SELECT 'Vienna', 'Weekends', *
FROM SILVER.vienna_weekends;
GO


SELECT *
FROM SILVER.airbnb_all;

--====================================================================


-- Check for duplicate records based on the proposed composite key
-- to ensure that each listing is uniquely identified by its ID,
-- city, and day type before adding the Primary Key.

SELECT
    listing_id,
    city,
    day_type,
    COUNT(*) AS duplicate_count
FROM SILVER.airbnb_all
GROUP BY
    listing_id,
    city,
    day_type
HAVING COUNT(*) > 1;
--=============================================================


-- Add a Composite Primary Key to the consolidated Airbnb Silver table.
-- The combination of listing_id, city, and day_type uniquely identifies
-- each record and prevents duplicate key combinations.


ALTER TABLE SILVER.airbnb_all
ALTER COLUMN listing_id INT NOT NULL;
GO

ALTER TABLE SILVER.airbnb_all
ALTER COLUMN city VARCHAR(50) NOT NULL;
GO

ALTER TABLE SILVER.airbnb_all
ALTER COLUMN day_type VARCHAR(20) NOT NULL;
GO

ALTER TABLE SILVER.airbnb_all
ADD CONSTRAINT PK_airbnb_all
PRIMARY KEY (listing_id, city, day_type);
GO




--=================================================================================
-- Gold Schema


CREATE SCHEMA GOLD;
GO

-- 1. City Dimension
CREATE TABLE GOLD.DimCity(
      city_key INT IDENTITY (1,1) PRIMARY KEY,
      city_name VARCHAR(50) NOT NULL UNIQUE

);


-- 2. Day Type Dimension
CREATE TABLE GOLD.DimDayType (
      day_type_key INT IDENTITY(1,1) PRIMARY KEY,
      day_type VARCHAR(20) NOT NULL UNIQUE
);


-- 3. Room Type Dimension
CREATE TABLE GOLD.DimRoomType(
      room_type_key INT IDENTITY (1,1) PRIMARY KEY,
      room_type VARCHAR(100) NOT NULL UNIQUE,
      room_shared BIT,
      room_private BIT
);


-- 4. Listing Dimension
CREATE TABLE GOLD.DimListing
(
    listing_key INT IDENTITY(1,1) NOT NULL,
    source_row_id INT NOT NULL,
    city_key INT NOT NULL,
    day_type_key INT NOT NULL,

    host_is_superhost BIT NULL,
    multi BIT NULL,
    biz BIT NULL,
    longitude DECIMAL(10,6) NULL,
    latitude DECIMAL(10,6) NULL,

    CONSTRAINT PK_DimListing
        PRIMARY KEY (listing_key),

    CONSTRAINT UQ_DimListing_SourceCityDay
        UNIQUE (source_row_id, city_key, day_type_key),

    CONSTRAINT FK_DimListing_City
        FOREIGN KEY (city_key)
        REFERENCES GOLD.DimCity(city_key),

    CONSTRAINT FK_DimListing_DayType
        FOREIGN KEY (day_type_key)
        REFERENCES GOLD.DimDayType(day_type_key)
);


-- 5. Airbnb Fact Table
CREATE TABLE GOLD.FactAirbnbListing
(
    listing_key INT NOT NULL,
    city_key INT NOT NULL,
    day_type_key INT NOT NULL,
    room_type_key INT NOT NULL,

    price DECIMAL(18,2) NULL,
    person_capacity VARCHAR(50) NULL,
    bedrooms INT NULL,
    cleanliness_rating DECIMAL(5,2) NULL,
    guest_satisfaction_overall DECIMAL(5,2) NULL,
    dist DECIMAL(10,3) NULL,
    metro_dist DECIMAL(10,3) NULL,
    attr_index DECIMAL(18,6) NULL,
    attr_index_norm DECIMAL(18,6) NULL,
    rest_index DECIMAL(18,6) NULL,
    rest_index_norm DECIMAL(18,6) NULL,

    CONSTRAINT PK_FactAirbnbListing
        PRIMARY KEY (listing_key),

    CONSTRAINT FK_Fact_Listing
        FOREIGN KEY (listing_key)
        REFERENCES GOLD.DimListing(listing_key),

    CONSTRAINT FK_Fact_City
        FOREIGN KEY (city_key)
        REFERENCES GOLD.DimCity(city_key),

    CONSTRAINT FK_Fact_DayType
        FOREIGN KEY (day_type_key)
        REFERENCES GOLD.DimDayType(day_type_key),

    CONSTRAINT FK_Fact_RoomType
        FOREIGN KEY (room_type_key)
        REFERENCES GOLD.DimRoomType(room_type_key)
);


-- LOAD TO DIM CITY TABLE
INSERT INTO GOLD.DimCity (city_name)
SELECT DISTINCT S.city
FROM SILVER.airbnb_all AS S
WHERE S.city IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM GOLD.DimCity AS D
      WHERE D.city_name = S.city
  );


-- LOAD TO DIM DAY TYPE TABLE
INSERT INTO GOLD.DimDayType (day_type)
SELECT DISTINCT S.day_type
FROM SILVER.airbnb_all AS S
WHERE S.day_type IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM GOLD.DimDayType AS D
      WHERE D.day_type = S.day_type
  );


INSERT INTO GOLD.DimRoomType
    (room_type, room_shared, room_private)
SELECT DISTINCT
    S.room_type,
    S.room_shared,
    S.room_private
FROM SILVER.airbnb_all AS S
WHERE S.room_type IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM GOLD.DimRoomType AS D
      WHERE D.room_type = S.room_type
  );


-- LOAD TO DIM LISTING TABLE
INSERT INTO GOLD.DimListing
(
    source_row_id,
    city_key,
    day_type_key,
    host_is_superhost,
    multi,
    biz,
    longitude,
    latitude
)
SELECT DISTINCT
    S.listing_id,
    C.city_key,
    D.day_type_key,
    S.host_is_superhost,
    S.multi,
    S.biz,
    S.lng,
    S.lat
FROM SILVER.airbnb_all AS S
JOIN GOLD.DimCity AS C
    ON C.city_name = S.city
JOIN GOLD.DimDayType AS D
    ON D.day_type = S.day_type;





-- LOAD TO FACT TABLE

INSERT INTO GOLD.FactAirbnbListing
(
    listing_key,
    city_key,
    day_type_key,
    room_type_key,
    price,
    person_capacity,
    bedrooms,
    cleanliness_rating,
    guest_satisfaction_overall,
    dist,
    metro_dist,
    attr_index,
    attr_index_norm,
    rest_index,
    rest_index_norm
)
SELECT
    L.listing_key,
    C.city_key,
    D.day_type_key,
    R.room_type_key,
    S.realSum,
    S.person_capacity,
    S.bedrooms,
    S.cleanliness_rating,
    S.guest_satisfaction_overall,
    S.dist,
    S.metro_dist,
    S.attr_index,
    S.attr_index_norm,
    S.rest_index,
    S.rest_index_norm
FROM SILVER.airbnb_all AS S
JOIN GOLD.DimCity AS C
    ON C.city_name = S.city
JOIN GOLD.DimDayType AS D
    ON D.day_type = S.day_type
JOIN GOLD.DimRoomType AS R
    ON R.room_type = S.room_type
JOIN GOLD.DimListing AS L
    ON L.source_row_id = S.listing_id
   AND L.city_key = C.city_key
   AND L.day_type_key = D.day_type_key;







