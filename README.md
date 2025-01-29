# ds2002 SQL & Python ETL Projects

## 📌 Overview
This repository contains various **SQL and Python-based ETL scripts**, assignments, and data science projects. The focus is on **data extraction, transformation, and loading (ETL)** using SQL queries, Python scripting, and APIs.

## 🚀 Features
- **SQL Data Extraction & Transformation**: Includes SQL scripts for querying and transforming structured datasets.
- **Python for ETL**: Jupyter Notebooks for API data fetching, transformation, and analysis.
- **MongoDB Data Analysis**: Python-based exploration and insights on NoSQL databases.
- **Stock Market API Analysis**: Scripts fetching stock data via APIs and performing analytics.

## 🛠️ Tech Stack
- **SQL (PostgreSQL, MySQL, SQLite)**
- **Python (Pandas, NumPy, Seaborn, Requests)**
- **MongoDB**
- **Jupyter Notebooks**

## 📈 Example Code Snippets

### 📌 Extracting & Cleaning Data in SQL
```sql
SELECT customer_id, name, total_spent
FROM orders
WHERE total_spent > 1000
ORDER BY total_spent DESC;
```
### 📌 Fetching Stock Data via API (Python)
```python
import requests
import pandas as pd

url = "https://api.stockmarket.com/data"
response = requests.get(url)
data = response.json()

df = pd.DataFrame(data)
df.head()
```
