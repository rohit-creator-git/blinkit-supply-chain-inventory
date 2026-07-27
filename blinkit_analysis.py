## **Import**
"""

import pandas as pd
import matplotlib.pyplot as plt

"""# **Load Dataset**"""

df = pd.read_csv("/BlinkIT Grocery Data.csv")
df.head()

"""# **Basic Info & Data Cleaning**"""

print("Shape :", df.shape)

df.info()

df.columns = df.columns.str.strip()

df["Item Fat Content"] = df["Item Fat Content"].replace({
    "LF": "Low Fat",
    "reg": "Regular"
})

df = df.drop_duplicates()

print("\nMissing Values")
print(df.isnull().sum())

print("\nDuplicate Rows :", df.duplicated().sum())

df.head()

"""# **Analysis**"""

print("Total Sales :", df["Sales"].sum())
print("Average Sales :", df["Sales"].mean())
print("Average Rating :", df["Rating"].mean())

item_sales = df.groupby("Item Type")["Sales"].sum().sort_values(ascending=False)

outlet_sales = df.groupby("Outlet Type")["Sales"].sum()

fat_sales = df.groupby("Item Fat Content")["Sales"].sum()

location_sales = df.groupby("Outlet Location Type")["Sales"].sum()

size_sales = df.groupby("Outlet Size")["Sales"].sum()

year_sales = df.groupby("Outlet Establishment Year")["Sales"].sum()

print(item_sales)
print(outlet_sales)
print(fat_sales)
print(location_sales)
print(size_sales)
print(year_sales)

"""## **Charts**"""

plt.figure(figsize=(10,5))
item_sales.plot(kind="bar")
plt.title("Sales by Item Type")
plt.xlabel("Item Type")
plt.ylabel("Sales")
plt.show()

plt.figure(figsize=(6,4))
outlet_sales.plot(kind="bar")
plt.title("Sales by Outlet Type")
plt.show()

plt.figure(figsize=(5,4))
fat_sales.plot(kind="bar")
plt.title("Sales by Fat Content")
plt.show()

plt.figure(figsize=(5,5))
location_sales.plot(kind="pie", autopct="%1.1f%%")
plt.ylabel("")
plt.title("Sales by Outlet Location")
plt.show()

plt.figure(figsize=(5,5))
size_sales.plot(kind="pie", autopct="%1.1f%%")
plt.ylabel("")
plt.title("Sales by Outlet Size")
plt.show()

plt.figure(figsize=(8,4))
year_sales.plot(kind="line", marker="o")
plt.title("Sales by Outlet Establishment Year")
plt.xlabel("Year")
plt.ylabel("Sales")
plt.show()

"""## **Business Insights**"""

print("Top Selling Item Type :", item_sales.idxmax())
print("Best Outlet Type :", outlet_sales.idxmax())
print("Highest Sales Location :", location_sales.idxmax())
print("Best Outlet Size :", size_sales.idxmax())
print("Most Preferred Fat Content :", fat_sales.idxmax())
