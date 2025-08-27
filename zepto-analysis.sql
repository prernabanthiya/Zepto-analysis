DROP TABLE IF EXISTS zepto;

--📑Creating a table 

CREATE TABLE zepto (
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,	
quantity INTEGER
);

--📑data exploration

--count of rows
SELECT COUNT(*) FROM zepto;

--sample data
SELECT * FROM zepto
LIMIT 10;

--null values
SELECT * FROM zepto
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

--different product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

--products in stock vs out of stock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

--product names present multiple times
SELECT name, COUNT(sku_id) AS "Number of SKUs"
FROM zepto
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) DESC;

--📝 data cleaning

--products with price = 0
SELECT * FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

DELETE FROM zepto
WHERE mrp = 0;

--convert paise to rupees
UPDATE zepto
SET mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

SELECT mrp, discountedSellingPrice FROM zepto;

--📝 data analysis

/*Q1. Find the top 10 best-value products based on the discount percentage.
**NOTE - This is both usefull for customers who are looking for bargains and businesses to know which products are being heavily promoted */
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;
 

/*Q2. What are the Products with HIgh MRP but OUt of Stock 
**NOTE- Business might want to restock them as soon as possible if customers are buying them frequently */
SELECT DISTINCT name,mrp from zepto
WHERE  mrp>300 and outofStock=TRUE
ORDER BY mrp DESC;

/*Q3. which categories are most affected by stockouts
**NOTE_ ops/supply chain can prioritize restocking those categories */
SELECT category,
       ROUND(100.0*AVG(CASE WHEN outOfStock THEN 1 ELSE 0 END),2) AS oos_rate_pct
FROM zepto
GROUP BY category
ORDER BY oos_rate_pct DESC;

--- Q4. Perform ABC analysis of product categories to identify critical (A), moderate (B), and low-impact (C) categories based on their revenue contribution.
WITH rev AS (
  SELECT category,
         SUM((discountedSellingPrice/100.0) * quantity) AS revenue_rs
  FROM zepto
  GROUP BY category
),
ranked AS (
  SELECT r.*,
         SUM(revenue_rs) OVER () AS total_rev,
         SUM(revenue_rs) OVER (ORDER BY revenue_rs DESC) 
         / NULLIF(SUM(revenue_rs) OVER (),0) AS cum_share
  FROM rev r
)
SELECT category,
       ROUND(revenue_rs,2) AS revenue_rs,
       ROUND(total_rev,2) AS total_rev,
       ROUND(cum_share,4) AS cum_share,
       CASE WHEN cum_share <= 0.8 THEN 'A'
            WHEN cum_share <= 0.95 THEN 'B'
            ELSE 'C' END AS abc_bucket
FROM ranked
ORDER BY revenue_rs DESC;


--Q5. Find all producrs where MRP is greater than 500 and discount is less than 10%
SELECT DISTINCT name, mrp , discountPercent from zepto
WHERE mrp>500 and discountPercent<10
ORDER BY mrp DESC , discountPercent DESC; 

/*Q6. Identify the top 5 categories offering the heighest average discount percentage
**NOTE- This can be very useful for marketing team to understand where price cuts are happening the most and how they can optimize them accordingly */
SELECT Category, ROUND(AVG(discountPercent)) AS avg_discount FROM zepto
GROUP BY Category 
ORDER BY avg_discount DESC
LIMIT 5;

/*Q7 . Find the price per gram for products above 100g and sort by best value 
**NOTE- This is important for customers comparing value for money products and even internal team for pricing strategy */ 
SELECT DISTINCT name, weightInGms, discountedsellingprice, ROUND(discountedsellingprice/weightingms,2) as price_per_gram FROM zepto
WHERE weightInGms>=100 
ORDER BY price_per_gram
;

--Q8.Group the products into categories like low , Medium , Bulk
-- This kind of segmentation helps in packaging , delivery and bulk order strategies . 
SELECT DISTINCT name , weightingms ,
CASE WHEN weightInGms<1000 THEN 'LOW'
     WHEN weightInGms<5000 THEN 'MEDIUM'
	 ELSE 'BULK'
	 END AS weight_category
FROM zepto;

--Q9.what is the total inventory weight per category 
--Lets find out which category contribute the most to the overall inventory weight 
SELECT category, SUM(weightInGms * availablequantity) AS total_inventory_weight FROM zepto
GROUP BY category 
ORDER BY total_inventory_weight DESC;
--NOTE- This is really great for warehouse planning or identify bulky product categories 




