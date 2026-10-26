# Airbnb-Project
🏠 StayScope — End-to-End Airbnb Data Engineering & Analytics

StayScope is an end-to-end Data Engineering & Analytics project that explores the European Airbnb market using Microsoft SQL Server and Power BI. It transforms raw Airbnb data into structured, analytics-ready datasets and interactive dashboards to uncover insights into pricing, property characteristics, and guest experience.

📌 Project Overview

The project follows the Medallion Architecture, organizing data processing into three layers: Bronze, Silver, and Gold. The final dimensional data model powers an interactive Power BI dashboard with three analytical pages.

🏗️ Data Architecture

🥉 Bronze Layer — Raw Data

Ingested and stored the original Airbnb datasets.

Preserved raw data for downstream processing.

🥈 Silver Layer — Cleaned & Prepared Data

Cleaned and transformed the source data.

Validated data quality, consistency, and integrity.

Prepared reliable datasets for analytical modeling.

🥇 Gold Layer — Analytics-Ready Data

Designed a dimensional data model using Fact and Dimension tables.

Implemented primary keys, foreign keys, and referential integrity constraints.

Prepared analytics-ready data for reporting and business analysis.

🗄️ Data Warehouse Design

The Gold layer includes the following tables:

DimCity: Stores city information.

DimDayType: Identifies weekday and weekend records.

DimRoomType: Stores room type classifications.

DimListing: Stores listing-related attributes and geographic coordinates.

FactAirbnbListing: Contains pricing, ratings, cleanliness, and property-related metrics.

This dimensional model supports analysis across cities, room types, and day types.

📊 Power BI Dashboard

The interactive dashboard contains three pages:

📍 1. Market Overview

Average listing price.

Total records analyzed.

Average guest satisfaction rating.

Number of cities.

Average price comparisons across cities.

Room type distribution.

Weekday vs. weekend pricing.

🌍 2. City & Pricing Analysis

Average price rankings by city.

Geographic exploration using an interactive map.

Weekday vs. weekend price comparisons across cities.

⭐ 3. Guest Experience & Property Insights

Guest satisfaction ratings by city.

Cleanliness and guest satisfaction analysis.

Superhost vs. non-Superhost comparisons.

🧭 Interactive Features

Dedicated icons for each dashboard page.

Additional navigation icons for seamless page switching.

Interactive slicers and cross-filtering.

DAX measures for key performance indicators.

🧮 DAX & Analytics

Created DAX measures for key metrics, including:

Average Price

Total Records

Average Guest Rating

Average Cleanliness

Total Cities

Highest City Average Price

Lowest City Average Price

City Price Gap

These measures enable dynamic calculations and interactive reporting.

🛠️ Tools & Technologies

Microsoft SQL Server — Data storage, transformation, and data warehouse development.

SQL — Data preparation, validation, and relational modeling.

Power BI — Interactive dashboards and data visualization.

DAX — Measures and analytical calculations.

Medallion Architecture — Bronze, Silver, and Gold data layers.

Dimensional Modeling — Fact and Dimension tables.

🎯 Project Objectives

Build an end-to-end data workflow from raw data to analytics-ready datasets.

Apply data quality validation and dimensional modeling.

Develop an analytical data warehouse using SQL Server.

Create interactive dashboards to explore European Airbnb market trends.

Turn raw data into meaningful, data-driven insights.

📈 Key Learnings

This project strengthened my practical skills in data engineering, SQL Server, data warehousing, dimensional modeling, DAX, and Power BI dashboard development.

👨‍💻 Author

Osama Mohamed

Aspiring Data Engineer | Data Analyst | AI & Data Science

⭐ If you find this project interesting, feel free to explore the repository and share your feedback.

#DataEngineering #DataAnalytics #SQLServer #PowerBI #DAX #DataWarehouse
