import pandas as pd
import matplotlib.pyplot as plt

# Load Dataset
df = pd.read_csv("BlinkIT Grocery Data.csv")

# Display First 5 Rows
print(df.head())

# Dataset Information
print("\nDataset Info")
print(df.info())

# Summary Statistics
print("\nSummary Statistics")
print(df.describe())

# Missing Values
print("\nMissing Values")
print(df.isnull().sum())

# Total Records
print("\nTotal Records:", len(df))

# Total Sales
print("Total Sales:", df["Sales"].sum())

# Average Sales
print("Average Sales:", df["Sales"].mean())

# Average Rating
print("Average Rating:", df["Rating"].mean())

# Sales by Item Fat Content
fat_sales = df.groupby("Item Fat Content")["Sales"].sum()
print("\nSales by Item Fat Content")
print(fat_sales)

# Sales by Item Type
item_sales = df.groupby("Item Type")["Sales"].sum().sort_values(ascending=False)
print("\nSales by Item Type")
print(item_sales)

# Sales by Outlet Size
outlet_size = df.groupby("Outlet Size")["Sales"].sum()
print("\nSales by Outlet Size")
print(outlet_size)

# Sales by Outlet Location
location_sales = df.groupby("Outlet Location Type")["Sales"].sum()
print("\nSales by Outlet Location")
print(location_sales)

# Sales by Outlet Type
outlet_type = df.groupby("Outlet Type")["Sales"].sum()
print("\nSales by Outlet Type")
print(outlet_type)

# -----------------------
# Charts
# -----------------------

# Sales by Item Fat Content
fat_sales.plot(kind="bar", figsize=(8,5))
plt.title("Sales by Item Fat Content")
plt.xlabel("Item Fat Content")
plt.ylabel("Sales")
plt.tight_layout()
plt.show()

# Top 10 Item Types
item_sales.head(10).plot(kind="bar", figsize=(10,5))
plt.title("Top 10 Item Types by Sales")
plt.xlabel("Item Type")
plt.ylabel("Sales")
plt.tight_layout()
plt.show()

# Sales by Outlet Size
outlet_size.plot(kind="bar", figsize=(8,5))
plt.title("Sales by Outlet Size")
plt.xlabel("Outlet Size")
plt.ylabel("Sales")
plt.tight_layout()
plt.show()

# Sales by Outlet Location
location_sales.plot(kind="bar", figsize=(8,5))
plt.title("Sales by Outlet Location Type")
plt.xlabel("Outlet Location Type")
plt.ylabel("Sales")
plt.tight_layout()
plt.show()

# Sales by Outlet Type
outlet_type.plot(kind="bar", figsize=(10,5))
plt.title("Sales by Outlet Type")
plt.xlabel("Outlet Type")
plt.ylabel("Sales")
plt.tight_layout()
plt.show()
