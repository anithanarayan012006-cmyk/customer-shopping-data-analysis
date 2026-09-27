# Customer Shopping Behavior Analysis

## Project Overview

This project analyzes customer shopping behavior using SQL, Python, and Power BI.

The goal is to understand customer purchasing patterns, product performance, sales trends, payment methods, subscription behavior, and discount usage.

## Tools & Technologies

- SQL
- Python
- Pandas
- Matplotlib
- Power BI
- GitHub

## Dataset

The dataset contains 3,900 customer shopping records with information including:

- Customer ID
- Age
- Gender
- Item Purchased
- Category
- Purchase Amount
- Location
- Season
- Review Rating
- Subscription Status
- Shipping Type
- Discount Applied
- Promo Code Used
- Previous Purchases
- Payment Method
- Frequency of Purchases

## Data Cleaning

The dataset was checked for:

- Missing values
- Duplicate records
- Data quality issues

There were 37 missing values in the Review Rating column.

The missing ratings were replaced using the median review rating.

No duplicate records were found.

## SQL Analysis

SQL was used to analyze:

- Total sales
- Product performance
- Category performance
- Customer purchasing behavior
- Seasonal sales
- Subscription status
- Payment methods
- Discount usage

SQL file:

`sql/customer_analysis.sql`

## Python Analysis

Python was used for:

- Data loading
- Data cleaning
- Missing value handling
- Exploratory data analysis
- Business metrics
- Sales analysis
- Data visualization

Python file:

`python/customer_analysis.py`

## Power BI Dashboard

An interactive Power BI dashboard was created to visualize:

- Total Sales
- Total Customers
- Average Purchase
- Average Review Rating
- Sales by Product Category
- Sales by Season
- Sales by Gender
- Sales by Payment Method
- Subscription Status
- Discount Status

Power BI file:

`powerbi/customer_shopping_analysis.pbix`

## Key Insights

- Clothing generated the highest sales among the product categories.
- Fall recorded the highest seasonal sales.
- Male customers contributed a larger share of total sales in this dataset.
- Debit Card had the highest average purchase amount among the payment methods.
- Customers without discounts had a slightly higher average purchase amount than customers who used discounts.
- Non-subscribed customers generated more total sales than subscribed customers.

## Project Structure

```text
customer-shopping-data-analysis/
│
├── powerbi/
│   ├── README.md
│   └── customer_shopping_analysis.pbix
│
├── python/
│   └── customer_analysis.py
│
├── sql/
│   └── customer_analysis.sql
│
├── customer_shopping_behavior.csv
│
└── README.md
