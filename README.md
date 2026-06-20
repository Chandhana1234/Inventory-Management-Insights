📦 INVENTORY MANAGEMENT INSIGHTS

End-to-end supply chain & inventory analytics project — from raw data in MySQL to KPI-driven insights in Power BI. Built as part of my Data Analytics Internship at AI Variant.


🎯 Project Overview :

This project analyzes a multi-table supply chain dataset (customers, stores, sales, and inventory) to uncover insights around stock health, order behavior, and store performance. 
The workflow covers the full analytics pipeline: data cleaning & querying in MySQL → KPI modeling with DAX → interactive Power BI dashboard.


🛠️ Tools & Tech Stack :

Category            Tools Used 

Database              :  MySQL,
Querying              :  SQL,
Cloud Data Warehouse  :  Snowflake,
Visualization         :  Power BI (DAX measures),
Data Modeling         :  Star Schema (Fact & Dimension tables),


🗂️ Repository Structure :

├── inventory_management_project.pbix   # Power BI dashboard file

├── supply_chain_sql.sql                # SQL queries used for analysis

├── dataset/                            # Raw source data

└── README.md


🧮 Dataset :

The dataset follows a fact–dimension model with the following core tables:


f_sales — transaction-level sales / order data
f_inventory_adjusted — inventory quantities & cost values
customer — customer demographics (region, gender)
d_store — store details (region, employee count, online ordering capability)



🔍 Key SQL Analysis :

The supply_chain_sql.sql file covers:


👥 Customer segmentation by region and gender
🏬 Store distribution and online ordering capability across regions
👨‍💼 Average employee strength per store region
💰 Inventory valuation (Quantity on Hand × Cost Amount) — top 10 highest-value products
📦 Total inventory value aggregated by Product Family
🛒 Order volume by Purchase Method and Transaction Type
🔗 Multi-table joins linking sales to customer regions for order-volume analysis



📊 Power BI Dashboard Highlights :

Interactive dashboard built on top of the SQL-modeled data, featuring DAX-driven KPIs such as:


📈 Inventory Turnover Ratio
🚚 On-Time Delivery %
⏱️ Average Lead Time
💵 Procurement & Supply Chain Cost
📦 Stock valuation and product-family breakdowns

<img width="1650" height="733" alt="Screenshot 2026-06-02 172459" src="https://github.com/user-attachments/assets/6c3c3301-b4c4-48ac-b6a6-f3b2c9eeb4b5" />





(Open inventory_management_project.pbix in Power BI Desktop to explore interactively.)


🚀 Key Insights :


Identified top revenue-driving products through inventory valuation analysis
Surfaced regional disparities in store performance and order volumes
Built a reusable KPI framework connecting raw transactional data to business-ready metrics



📬 Connect With Me :


💼 LinkedIn : https://www.linkedin.com/in/warunq01am-ehandhana-71007a2bb/
💻 GitHub   : https://github.com/Chandhana1234


⭐ If you found this project useful, consider giving it a star!
