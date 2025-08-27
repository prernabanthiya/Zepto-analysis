# Zepto Retail Analytics (SQL Project)

This project analyzes **Zepto retail product data** using SQL, focusing on **data cleaning, exploration, and business-driven insights**.  
It provides actionable analysis for **pricing, inventory, supply chain, and marketing decisions**.  

---

## 📌 Project Overview
- **Table Creation** → Defined schema for `zepto` table.  
- **Data Exploration** → Row counts, null checks, duplicates, and categories.  
- **Data Cleaning** → Removed invalid entries, normalized prices.  
- **Business Analysis Queries** → Discount insights, stockouts, ABC analysis, weight segmentation, and inventory optimization.  

---

## 🛠️ Technologies Used
- **SQL (PostgreSQL syntax)**    

---

## 🚀 How to Run
1. Create a PostgreSQL database.  
2. Run the provided SQL script (`zepto_analysis.sql`).  
3. Execute queries step by step to explore and analyze data.  

---

## 📊 Key Insights Generated

### 1️⃣ Top 10 Best-Value Discounted Products  
📸 ![Top Discounts Screenshot](./screenshots/top_discounts.png)  
**Finding:** Customers benefit most from these deals; businesses may be using them for promotions.  

---

### 2️⃣ High MRP Products Frequently Out of Stock  
📸 ![High MRP OOS Screenshot](./screenshots/high_mrp_oos.png)  
**Finding:** Premium products are in demand — must be prioritized for restocking.  

---

### 3️⃣ Stockout Rates by Category  
📸 ![Stockout Rate Screenshot](./screenshots/stockout_rate.png)  
**Finding:** Certain categories face frequent stockouts → supply chain bottlenecks.  

---

### 4️⃣ ABC Analysis (Revenue Contribution)  
📸 ![ABC Analysis Screenshot](./screenshots/abc_analysis.png)  
**Finding:** ~80% of revenue comes from “A” categories → focus procurement here.  

---

### 5️⃣ Weight-Based Product Segmentation  
📸 ![Weight Segmentation Screenshot](./screenshots/weight_segmentation.png)  
**Finding:** Helps logistics optimize packaging, delivery, and bulk orders.  

---

### 6️⃣ Inventory Weight by Category  
📸 ![Inventory Weight Screenshot](./screenshots/inventory_weight.png)  
**Finding:** A few categories dominate warehouse space → optimize storage accordingly.  

---

## 📌 Future Improvements
- Add **dashboards** (Power BI / Tableau / Streamlit).  
- Perform **predictive analytics** (demand forecasting, price elasticity).  
- Automate ETL with **Airflow / dbt**.  
- Explore **market basket analysis** & recommendation systems.  

---

## 📜 License
This project is licensed under the **MIT License** – feel free to use and adapt.  

---
