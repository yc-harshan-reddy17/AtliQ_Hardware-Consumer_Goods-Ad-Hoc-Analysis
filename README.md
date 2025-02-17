# AtliQ Hardware Consumer Goods: (Ad-Hoc-Analysis & Insights)

## Project Overview and Problem Statement

AtliQ Hardware, a leading computer hardware manufacturer in India with a global presence, specializes in selling computers and accessories.

The management identified a gap in actionable insights, making it difficult to make quick and informed business decisions. To address this, Tony Sharma (Data Analytics Director) plans to expand the data analytics team by hiring junior analysts. To assess both technical and analytical skills, he introduced an SQL challenge.

The company now seeks insights for 10 ad-hoc/business requests.

## Data Structure/ Data Modeling and Tools

The 'gdb023' (AtliQ_hardware database) was provided to me to work on and it includes six main tables:

1. dim_customer: contains customer-related data
1. dim_product: contains product-related data
1. fact_pre_invoice_deductions: contains pre-invoice deductions information for each product
1. fact_gross_price: contains gross price information for each product
1. fact_manufacturing_cost: contains the cost incurred in the production of each product
1. fact_sales_monthly: contains monthly sales data for each product.

This is the data model I made for the visualization section of Power BI:-
![ad hoc data model]()


**Tools used -** 

* Utilized MySQL to solve queries and extract insights.
* Used Power BI for data visualization and reporting.

## Ad-Hoc Requests and Answers:

### 1. Provide the list of markets in which customer "Atliq Exclusive" operates its business in the APAC region.
![1 pic]()


### 2. What is the percentage of unique product increase in 2021 vs. 2020? The final output contains these fields, unique_products_2020, unique_products_2021, percentage_chg

![2 pic]()


### 3. Provide a report with all the unique product counts for each segment and sort them in descending order of product counts. The final output contains 2 fields, segment product_count

![3 pic]()


### 4. Follow-up: Which segment had the most increase in unique products in 2021 vs 2020? The final output contains these fields, segment product_count_2020, product_count_2021, difference

![4 pic]()


### 5. Get the products that have the highest and lowest manufacturing costs. The final output should contain these fields, product_code, product, manufacturing_cost


![5 new pic]()


### 6. Generate a report that contains the top 5 customers who received an average high pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market. The final output contains these fields, customer_code, customer, average_discount_percentage

![6 pic]()


### 7. Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month. This analysis helps to get an idea of low and high-performing months and make strategic decisions. The final report contains these columns: Month, Year, Gross sales Amount


![for 2020]()

![for 2021]()


### 8. In which quarter of 2020, got the maximum total_sold_quantity? The final output contains these fields sorted by the total_sold_quantity, --> Quarter, total_sold_quantity

![8 pic]()


### 9. Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution? The final output contains these fields --> channel, gross_sales_mln, percentage


![9 pic]()


### 10. Get the Top 3 products in each division that have a high total_sold_quantity in the fiscal_year 2021? The final output contains these fields, division, product_code

![10 pic]()

=========================================================================

**NOTE-**

Ad-Hoc Requests – Includes all the questions.

All Ad-Hoc SQL Queries – Contains all the answers.

Atliq Hardware Ad-Hoc Insights Presentation PDF – Contains the presentation.
