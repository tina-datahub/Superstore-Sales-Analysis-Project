# Superstore-Sales-Analysis-Project
End-to-End Sales Analysis Project using SQL &amp; Excel. Includes data cleaning, SQL-based insights, KPI analysis, and interactive dashboard creation to uncover business trends and support data-driven decision making

	 Executive Summary:
                       The Superstore Sales Analysis project focuses on analyzing retail sales data to evaluate business performance across different regions, categories, and customer segments. The goal of this project is to uncover key trends, identify profit-driving factors, and detect areas of loss using SQL for data analysis and Excel for dashboard visualization.
                             The analysis highlights critical KPIs such as Total Sales, Profit,  Orders, and Profit Margin, providing a clear overview of business health. Through structured querying and visualization, the project identifies high-performing categories, top customers, and underperforming segments.
               The final dashboard enables stakeholders to interact with the data using filters and visual elements, making it easier to derive insights and support data-driven decision-making.

	Business Problem
The business is facing multiple performance-related challenges that require data-driven analysis:

	Key Problems:
Inconsistent Profitability:
   Some products and categories generate high sales but low or negative profit. 
      Impact of Discounts:
            Excessive discounting is reducing overall profitability. 
            Regional Performance Variation:
            Certain regions perform significantly better than others, indicating imbalance. 
           Customer Concentration Risk:
           A small group of customers contributes a large portion of total revenue. 
           Lack of Visibility:
            No centralized dashboard to monitor KPIs and trends effectively. 

	Problem Statement:
            The company needs a structured analysis to identify profit leakage, high-performing segments, and optimization opportunities in order to improve overall business performance.

 
 Why I Selected This Dataset
 1. Real-World Business Relevance
   The Superstore dataset simulates a real retail business scenario, making it ideal for understanding practical challenges like sales trends, profit margins, and customer behavior.

Complete End-to-End Analysis Opportunity
This dataset allows performing the full data analysis lifecycle:
•	Data cleaning 
•	SQL querying 
•	KPI creation 
•	Dashboard building 
•	Insight generation 

 Rich & Diverse Data
It contains multiple dimensions such as:
•	Region 
•	Category & Sub-category 
•	Customer segments 
•	Time (Order Date) 
•	This helps in performing deep and meaningful analysis.

 Strong Portfolio Value
     This is one of the most commonly used datasets in the data analytics field, making it highly     relevant for:
Interviews 
Resume projects 
Case studies 
        Skill Demonstration
Using this dataset helped demonstrate:
•	SQL (data extraction & analysis) 
•	Excel (dashboard & visualization) 
•	Business understanding 
•	Analytical thinking

	Project Overview
			This project is an end-to-end Data Analytics solution focused on analyzing a retail Superstore dataset to uncover meaningful business insights and support strategic decision-making.
The project demonstrates the complete analytics lifecycle, starting from raw data handling to final insight generation and visualization.

🔹 Project Workflow:
•	Data Cleaning & Exploration using SQL and Excel 
•	Data Analysis using SQL queries 
•	Dashboard Development using Excel 
•	Business Insights & Recommendations presented through structured reporting 

The final outcome is an interactive Excel dashboard supported by SQL-driven analysis, enabling stakeholders to monitor performance and take informed actions.

	Objectives :

          The primary objectives of this project are:
•	To analyze sales and profit trends over time 
•	To identify top-performing segments, categories, and regions 
•	To evaluate the impact of discounts on profitability 
•	To understand customer and regional behavior patterns 
•	To provide data-driven business recommendations for improving performance

	.Dataset  Details:-
     The dataset contains order-level transactional data representing a retail business. It includes multiple dimensions such as region, category, customer segments, and time, enabling deep and meaningful analysis across different business areas.

SNO.	COLUMN NAMES	DESCRIPTIONS
1.		Order ID	Unique identifier for each order

2.		Order Date	Date when order was placed

3.		Ship Mode	Shipping method used

4.		Segment	Customer type (Consumer, Corporate, Home Office)

5.		Country	United States

6.		City, State, Region	Geographic details

7.		Category	Product category

8.		Sub-Category	Product classification

9.		Sales	Revenue generated

10.		Profit	Profit earned

11.		Discount	Discount applied in table formate.

12.		Quantity	Units sold
	 Data Characteristics:
   Multi-dimensional dataset (Time, Geography, Product, Customer) 
•	Suitable for trend analysis, segmentation, and KPI tracking 
•	Contains both numerical and categorical variables

	Tools & Technologies Used :
      This project uses a focused set of tools to perform end-to-end data analysis and visualization. Each tool plays a specific role in the analytics workflow, from data extraction and analysis to dashboard development and insight presentation.

	SQL :
  Used for data extraction, cleaning, and in-depth analysis through structured queries. SQL enables efficient handling of the order-level transactional data and supports the creation of KPIs and segment-level insights.

	Excel:
  Used for building interactive dashboards, data visualization, and KPI reporting. Excel provides the visual layer that enables stakeholders to monitor performance and explore data through filters and charts.

	Business Understanding:
      Applied throughout the project to interpret analytical results in a business context, identify profit drivers and loss areas, and translate data findings into actionable recommendations for improving performance
- Excel dataset taken from Kaggle  

	Data Cleaning & Preparation (In-Depth):
               Data cleaning is a critical step to ensure that the dataset is accurate, consistent, and analysis-ready. Poor data quality can lead to misleading insights, so multiple validation and transformation steps were applied.

	Data Quality Assessment: 
                          Before cleaning, the dataset was evaluated for:
•	Missing value
•	Duplicate records
•	Incorrect data types 
•	Inconsistent formatting 
•	Outliers (especially in Sales, Profit, Discount) 

	Cleaning Steps Performed :
  Removal of Duplicate Records
  Checked duplicate rows using: 
   SQL: GROUP BY + COUNT(*) HAVING COUNT > 1 
    Excel: Remove Duplicates feature 
                Ensured each Order ID + Product combination is unique 
   Why important?
        Duplicates inflate sales, profit, and order counts → leads to incorrect KPIs.


	Handling Missing / Null Values:
 No null values found in the dataset 

	Why important?
Null values can break aggregations and distort insights.

	Standardizing Data Formats:
•	Ensured consistent naming: 
•	Category, Segment, Region (no spelling variations) 
•	Removed extra spaces and formatting inconsistencies 
•	Example:
"Technology " → "Technology" 

	Why important?
Prevents incorrect grouping in SQL and pivot tables.

	Date Format Conversion:
•	Converted:
 MM/DD/YYYY → DD/MM/YYYY 
•	Extracted additional fields: 
•	Year 
•	Month 
•	Quarter 

 Why important?
•	Enables time-based trend analysis 
•	Required for timeline slicers in Excel 

	Data Type Validation:
•	Sales, Profit → Numeric 
•	Quantity → Integer 
•	Discount → Decimal 
•	Dates → Date format 

Why important?
 Incorrect data types can:
 Break formulas 
 Cause aggregation errors 
Impact dashboard performance 

	Data Transformation (Advanced Layer)
•	Created calculated fields: 
o	Profit Margin 
o	Year-Month 
•	Structured dataset for: 
o	Pivot Tables 
o	SQL Aggregations 



	SQL Analysis: -
		Performed various SQL operations:

	Database Design & Table Creation:
The initial step of the project involved designing and setting up a structured relational database to store and analyze the Superstore dataset efficiently.

Database Creation:
A dedicated database named Superstore was created to organize and manage all project-related data.

 Purpose:
•	To ensure proper data storage 
•	To enable efficient querying and analysis using 
•	To maintain data integrity and structure 

 Table Creation: superstore_data
A primary table named superstore_data was created to store the raw transactional data.
✔ Structure & Constraints:
All relevant columns such as: 
o	Order ID 
o	Order Date 
o	Ship Mode 
o	Customer Segment 
o	Region 
o	Category & Sub-Category 
o	Sales, Profit, Discount, Quantity 
o	
 Appropriate data types (dtype) were assigned to each column: 
o	VARCHAR → for categorical/text data 
o	DATE → for order and shipping dates 
o	DECIMAL/FLOAT → for Sales, Profit, Discount 
o	INT → for Quantity 

✔ Primary Key Constraint:
•	The column Order ID was defined as the Primary Key 
•	It was also set as NOT NULL 
Reason:
•	Ensures each record is uniquely identifiable 
•	Prevents duplicate or missing entries 
•	Maintains data integrity 

 Creation of Secondary Table: orders
In addition to the main table, another table named orders was created.

✔ Purpose of Creating orders Table:
•	To structure the dataset in a more organized and query-efficient manner 
•	To support better analysis and joins 
•	To separate transactional data for focused querying 

 Benefits:
•	Improves query performance 
•	Enables modular data handling 
•	Supports advanced SQL operations such as joins and aggregations


	Data Exploration: -
		- Total records count
		- Distinct categories, regions, segments

	Aggregations: -
		- Total Sales & Profit
		- Sales & Profit by Segment, Category, Region

	Advanced Analysis: -
		- Profit Margin Calculation
		- Sales Contribution by Region
		- Window Functions (LAG, LEAD, ROW_NUMBER)
		- Joins (LEFT JOIN, RIGHT JOIN)


	Excel Dashboard Analysis:
An interactive Excel dashboard was developed to present key business insights in a clear, concise, and visually engaging manner. The dashboard enables users to monitor performance, analyze trends, and make data-driven decisions through dynamic filtering and visualization.

 
Dashboard Components
✔ KPI Cards
The top section of the dashboard highlights key performance indicators (KPIs), providing a quick snapshot of overall business performance:
•	Total Sales: 2.3M+ 
•	Total Profit: 285K+ 
•	Total Orders: 9,978 
•	Profit Margin: 12.46% 
•	Average Discount: 15.6% 
These KPIs help stakeholders quickly assess:
•	Revenue generation 
•	Profitability 
•	Sales efficiency 
•	Discount impact 

Visualizations & Analysis: 
The dashboard includes multiple charts to analyze performance across different business dimensions:

	Category-wise Sales & Profit:
              Compares sales and profit across product categories 

 Insight Purpose:
	Identify high-performing and underperforming categories 
	Support product-level decision-making

   Key Insights:
	The Technology category generates the highest sales and profit, making it the     most valuable product segment.
	The Furniture category records the lowest profit despite sales, indicating margin issues and inefficiencies. 

	Region-wise Sales & Profit
             Displays geographic performance distribution 
             
Insight Purpose:
	Identify top-performing regions 
	Detect regions requiring improvement

 Key Insights:
•	The West region leads in sales performance, making it the strongest market. 
•	The South region underperforms, suggesting the need for improved strategy and market penetration. 

	Ship Mode Analysis:
               Compares sales and profit across different shipping modes 

 Insight Purpose:
	Evaluate operational efficiency 
	Understand customer delivery preferences

Key Insights:

	Standard Class shipping generates the highest sales and profit, making it the most preferred and efficient shipping method. 
	Same Day delivery performs the lowest, possibly due to higher costs or lower demand.

	Segment-wise Analysis:
	Analyzes performance across customer segments 

  Insight Purpose:
•	Identify high-value customer groups 
•	Support targeted marketing strategies

  Time-Based Analysis (Order Date):
   Line chart representing sales and profit trends over time 

  Insight Purpose:

•	Identify seasonal trends 
•	Monitor business growth patterns.
  Sales and Profit Analysis (2001–2010):
•	Year-wise Overview (2001–2005)
•	From 2001 to 2005, both sales and profit were recorded only in December each  year. 
•	The highest performance in this period was observed in: 
•	Year: 2003 
•	Sales: 2,713 
•	Profit: 413 

Year-wise Overview (2006–2010):
 From 2006 to 2010, sales and profit were recorded across multiple months. 

Key highlights: 
•	Highest Sales: 
•	Year: 2006 
•	Sales: 481,081 
•	Highest Profit: 
•	Year: 2009 
•	Profit: 73,933 

Month-wise Highest Sales and Profit :

 2006
•	Highest Sales: November (57,127) 
•	Highest Profit: October (6,090) 
•	Negative Profit: August 

2007
•	Highest Sales: November (60,029) 
•	Highest Profit: February (6,656) 

 2008
•	Highest Sales: October (52,802) 
•	Highest Profit: January (10,052) 
•	Negative Profit: April 

 2009
•	Highest Sales: June (65,956) 
•	Highest Profit: June (14,295) 

2010
•	Highest Sales: January (58,415) 
•	Highest Profit: January (11,633) 
•	Negative Profit: February 

Key Insights :
•	Early years (2001–2005) show limited seasonal activity, with transactions only in December. 
•	Post-2006, the business shows consistent monthly activity and growth. 
•	2009 is the most profitable year, indicating strong business performance. 
    Some months recorded negative profit, highlighting potential issues in cost management or sales strategy.

	Discount vs Quantity Relationship:
Analyzes how discount levels impact quantity sold 

 Insight Purpose:
•	 Understand pricing strategy effectiveness 
•	Evaluate trade-off between sales volume and profitability 

 Interactivity Features:

   Slicers:
•	Region 
•	Segment 
•	Category 
       Allow users to dynamically filter data and focus on specific segments.

  Timeline Slicer:
•	Enables filtering by date (year/month) 
•	Helps in performing time-based analysis efficiently.

         Business Problems Identified: -
 			- High discounts reducing profitability
			- Furniture category underperforming
			- Central region facing profit issues

	Recommendations:-
		- Reduce discounts in low-profit categories (Furniture)
		- Avoid unnecessary discounts in Technology category
		- Optimize pricing strategy in Central region
		- Focus more on high-performing regions (West & East)

 Business Impact & Conclusion:
•	This project delivers measurable business impact by improving decision-making, identifying profit leakage,                   and optimizing sales strategies. The interactive dashboard enhances data visibility, enabling stakeholders to monitor KPIs and trends effectively. By addressing challenges such as inconsistent profitability, excessive discounting, and regional performance gaps, the analysis supports targeted actions to improve overall business performance.

 Key Problems Solved:
•	Inconsistent profitability, discount impact, regional variation, customer concentration risk, and lack of visibility addressed through structured analysis.

  Workflow Stages:
•	Data cleaning, SQL analysis, dashboard development, and business insights delivered end-to-end.

Core Tools Used:
•	SQL for data extraction and analysis, Excel for dashboard and visualization, and business understanding for actionable recommendations.
•	This project demonstrates how structured data analysis using SQL and Excel can transform raw retail data into actionable business intelligence, enabling stakeholders to make informed, data-driven decisions that improve profitability and operational performance.
Future Scope:
•	Implement predictive analysis (sales forecasting) 
•	Build advanced dashboards using Power BI 
•	Automate reporting using real-time data pipelines 
•	Perform customer segmentation using advanced analytics 



