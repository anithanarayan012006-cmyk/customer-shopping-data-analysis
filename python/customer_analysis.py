import pandas as pd

# Load the customer shopping dataset
df = pd.read_csv("../customer_shopping_behavior.csv")

# Display the first 5 records
print("First 5 Records:")
print(df.head())

# Display dataset information
print("\nDataset Information:")
print(df.info())

# Display number of rows and columns
print("\nDataset Shape:")
print(df.shape)

# Display column names
print("\nColumn Names:")
print(df.columns.tolist())

# Check for missing values
print("\nMissing Values:")
print(df.isnull().sum())

# Check for duplicate records
print("\nDuplicate Records:")
print(df.duplicated().sum())

# Basic statistical summary
print("\nStatistical Summary:")
print(df.describe())
