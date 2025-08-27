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
 ![Top Discounts Screenshot](https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20122612.png)  
**Finding:** Customers benefit most from these deals; businesses may be using them for promotions.  
**Conclusion:** Products like Dukes Waffy wafers and Ceres instant masalas are offering the steepest ~50% discounts, making them the most attractive bargains for customers.

---

### 2️⃣ High MRP Products Frequently Out of Stock  

![High MRP OOS Screenshot](https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20123127.png)  

**Finding:** Premium products are in demand — must be prioritized for restocking.  
**Conclusion:** Aashirvaad Atta With Multigrains and Everest Kashmiri Lal Chilli Powder are high-MRP products that are out of stock.

---

### 3️⃣ Stockout Rates by Category  
 ![Stockout Rate Screenshot](https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20123518.png)  
**Finding:** Certain categories face frequent stockouts → supply chain bottlenecks.

**Conclusion:** Biscuits have the highest out-of-stock rate, followed by Beverages and Dairy, Bread & Batter. 

---

### 4️⃣ ABC Analysis (Revenue Contribution)  
 ![ABC Analysis Screenshot](https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20123550.png)  
**Finding:** ~80% of revenue comes from “A” categories → focus procurement here.  
**Conclusion:** 
- A-Bucket: Packaged Food, Chocolates & Candies, Ice Cream & Desserts, Munchies, and Cooking Essentialsare critical categories.
- B-Bucket: Paan Corner, Personal Care, Meats, Fish & Eggs, and Home & Cleaning are the moderate categories.
- C-Bucket : Beverages, Dairy, Bread & Batter, Biscuits, Health & Hygiene, and Fruits & Vegetables are the low-impact categories.
---

### 5️⃣ Weight-Based Product Segmentation
![Weight Segmentation Screenshot]( https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20123615.png)

**Finding:** Helps logistics optimize packaging, delivery, and bulk orders.

**Conclusion:** High-priced products with minimal discounts reflect premium positioning and steady consumer demand, highlighting margin stability.

### 6️⃣ Inventory Weight by Category  
![Inventory Weight Screenshot](https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20125955.png)

**Finding:** A few categories dominate warehouse space → optimize storage accordingly.

**Conclusion:** Fruits & Vegetables and Meats, Fish & Eggs offer the highest average discounts, indicating aggressive pricing strategies in perishable categories to drive volume sales.

### 7️⃣ Price per Gram for Products Above 100g
![Price per Gram Screenshot](https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20130036.png)  
**Finding:** Helps customers identify best-value products and assists internal pricing strategies.

**Conclusion:** Products like Tata Salt, onions, and atta offer the lowest price per gram, highlighting the most cost-effective options for value-conscious customers.

---

### 8️⃣ Weight-Based Product Segmentation
![Weight Segmentation Screenshot](https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20130100.png)  
Finding: Segmentation into low, medium, and bulk weights aids packaging, delivery, and bulk order strategies.

Conclusion:Products span low, medium, and bulk weight categories, enabling targeted packaging, delivery optimization, and bulk order planning.

---

### 9️⃣ Total Inventory Weight by Category
![Inventory Weight Screenshot](https://github.com/prernabanthiya/Zepto-analysis/blob/main/Screenshot%202025-08-27%20130122.png
) 

Finding: Certain categories dominate warehouse weight → plan storage and handling accordingly.

Conclusion: Munchies and Cooking Essentials dominate total inventory weight, indicating the need for focused warehouse space and efficient handling for bulky categories.



## 📜 License
This project is licensed under the **MIT License** – feel free to use and adapt.  

---
## Connect with me on LinkedIn: [Prerna Banthiya](https://www.linkedin.com/in/prernabanthiya)
