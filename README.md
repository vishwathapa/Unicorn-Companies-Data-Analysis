# Unicorn-Companies-Data-Analysis
Data cleaning and analysis Using SQL.

## Introduction
In this venture, I will be taking you on a journey through the fascinating realm of unicorn startups – those extraordinary companies valued at over $1 billion.
Through data analysis, I will uncover valuable insights into their remarkable achievements, growth strategies, funding trends, geographical distribution, and much more...

## Dataset
This dataset is sourced from www.mavenanalytics.io/data-playground.
The unicorn dataset has around 1000+ records of data and 10 fields. It includes each company's current valuation, funding, country of origin, industry, select investors, and the years they were founded and became unicorns and many more attributes that you will see as we go.

## Data Dictionary
Company: Company name  
Valuation:	Company valuation in billions (B) of dollars  
Date Joined:	The date in which the company reached $1 billion in valuation  
Industry:	Company industry  
City:	City the company was founded in  
Country:	Country the company was founded in  
Continent:	Continent the company was founded in  
Year Founded:	Year the company was founded  
Funding:	Total amount raised across all funding rounds in billions (B) or millions (M) of dollars  
Select Investors:	Top 4 investing firms or individual investors (some have less than 4)  

## Skills Used
 
CTEs (Common Table Expressions): Creating temporary result sets for complex queries.   
Temporary Tables: Storing intermediate results for further analysis.  
Window Functions: Performing calculations over specific result sets.  
Aggregate Functions: Computing summary statistics like sums, counts, etc.  
Creating Views: Creating virtual tables for simplified querying.   
Converting Data Types: Changing the data type of specific columns.  

## Data Cleaning using SQl
### While cleaning data, I worked on the following things…
1.	Identified and Handled Missing Values:  
  a.	Used SQL queries to identify rows with missing values (NULL) in specific columns.  
  b.	Decided how to handle missing data, which may include filling in missing values with defaults, interpolating values, or removing rows with missing data.  
2.	Removed Duplicates:  
  a.	Used SQL to find and remove duplicate rows in your dataset, as discussed in the previous response.  
3.	Standardized Data Formats:  
  a.	Ensure that data is in a consistent format.    
4.	Corrected Data Inconsistencies:  
  a.	Identified and corrected data inconsistencies, such as inconsistent abbreviations, misspellings, or variations in data values.  
5.	Trimmed Whitespace:  
  a.	Removed leading and trailing whitespace from text data to avoid issues with string comparisons.  
6.	Converted Data Types:  
  a.	Converted data types when necessary.  
7.	Validated Numeric Values:  
  a.	Checked numeric columns for outliers and anomalies.  
8.	Validated Date and Time Values:  
  a.	Ensured that date and time values are valid and follow the correct format.  
9.	Performed Data Imputation:  
  a.	Imputed missing values based on statistical methods or domain knowledge.  


