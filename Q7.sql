/*7. Get the complete report of the Gross sales amount for the customer “Atliq
Exclusive” for each month. This analysis helps to get an idea of low and
high-performing months and take strategic decisions.
The final report contains these columns:
Month
Year
Gross sales Amount*/

WITH cte1 AS (
    SELECT customer,
    concat(monthname(date),' ', '(',Year(date),')') AS Month ,
    month(date) AS month_number, 
    year(date) AS year,
    s.fiscal_year,
    (sold_quantity * gross_price)  AS gross_sales
 FROM fact_sales_monthly s JOIN
 fact_gross_price g ON s.product_code = g.product_code
 JOIN dim_customer c ON s.customer_code=c.customer_code
 WHERE customer="Atliq exclusive"
)
SELECT Month,fiscal_year, concat(round(sum(gross_sales)/1000000,2),"M") AS Gross_sales_Amount FROM cte1
GROUP BY year,Month
ORDER BY year,month_number;