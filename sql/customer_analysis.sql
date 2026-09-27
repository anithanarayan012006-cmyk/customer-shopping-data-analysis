# Customer Shopping Behavior Analysis
# Data Analyst Portfolio Project

import pandas as pd
import matplotlib.pyplot as plt

# Load dataset
url = "https://raw.githubusercontent.com/anithanarayan012006-cmyk/customer-shopping-data-analysis/main/customer_shopping_behavior.csv"

df = pd.read_csv(url)

# -----------------------------
# DATA CLEANING
# -----------------------------

# Fill missing Review Rating values with median
df["Review Rating"] = df["Review Rating"].fillna(
    df["Review Rating"].median()
)

# -----------------------------
# KEY BUSINESS METRICS
# -----------------------------

total_customers = df["Customer ID"].nunique()
total_sales = df["Purchase Amount (USD)"].sum()
average_purchase = df["Purchase Amount (USD)"].mean()
average_rating = df["Review Rating"].mean()

print("CUSTOMER SHOPPING BEHAVIOR ANALYSIS")
print("------------------------------------")
print("Total Customers:", total_customers)
print("Total Sales ($):", round(total_sales, 2))
print("Average Purchase ($):", round(average_purchase, 2))
print("Average Review Rating:", round(average_rating, 2))

# -----------------------------
# CATEGORY ANALYSIS
# -----------------------------

category_analysis = (
    df.groupby("Category")["Purchase Amount (USD)"]
      .agg(["count", "sum", "mean"])
      .sort_values("sum", ascending=False)
)

print("\nCATEGORY ANALYSIS")
print(category_analysis)

# -----------------------------
# SEASON ANALYSIS
# -----------------------------

season_analysis = (
    df.groupby("Season")["Purchase Amount (USD)"]
      .sum()
      .sort_values(ascending=False)
)

print("\nSEASON ANALYSIS")
print(season_analysis)

# -----------------------------
# GENDER ANALYSIS
# -----------------------------

gender_analysis = (
    df.groupby("Gender")["Purchase Amount (USD)"]
      .agg(["count", "sum", "mean"])
      .sort_values("sum", ascending=False)
)

print("\nGENDER ANALYSIS")
print(gender_analysis)

# -----------------------------
# SUBSCRIPTION ANALYSIS
# -----------------------------

subscription_analysis = (
    df.groupby("Subscription Status")["Purchase Amount (USD)"]
      .agg(["count", "sum", "mean"])
)

print("\nSUBSCRIPTION ANALYSIS")
print(subscription_analysis)

# -----------------------------
# PAYMENT METHOD ANALYSIS
# -----------------------------

payment_analysis = (
    df.groupby("Payment Method")["Purchase Amount (USD)"]
      .agg(["count", "sum", "mean"])
      .sort_values("sum", ascending=False)
)

print("\nPAYMENT METHOD ANALYSIS")
print(payment_analysis)

# -----------------------------
# DISCOUNT ANALYSIS
# -----------------------------

discount_analysis = (
    df.groupby("Discount Applied")["Purchase Amount (USD)"]
      .agg(["count", "sum", "mean"])
)

print("\nDISCOUNT ANALYSIS")
print(discount_analysis)

# -----------------------------
# VISUALIZATIONS
# -----------------------------

# Sales by Category
category_sales = (
    df.groupby("Category")["Purchase Amount (USD)"]
      .sum()
      .sort_values(ascending=False)
)

category_sales.plot(kind="bar", figsize=(8, 5))
plt.title("Sales by Product Category")
plt.xlabel("Category")
plt.ylabel("Total Sales (USD)")
plt.xticks(rotation=0)
plt.tight_layout()
plt.show()

# Sales by Season
season_sales = (
    df.groupby("Season")["Purchase Amount (USD)"]
      .sum()
      .sort_values(ascending=False)
)

season_sales.plot(kind="bar", figsize=(8, 5))
plt.title("Sales by Season")
plt.xlabel("Season")
plt.ylabel("Total Sales (USD)")
plt.xticks(rotation=0)
plt.tight_layout()
plt.show()

# Sales by Gender
gender_sales = df.groupby("Gender")["Purchase Amount (USD)"].sum()

gender_sales.plot(kind="bar", figsize=(7, 5))
plt.title("Sales by Gender")
plt.xlabel("Gender")
plt.ylabel("Total Sales (USD)")
plt.xticks(rotation=0)
plt.tight_layout()
plt.show()
