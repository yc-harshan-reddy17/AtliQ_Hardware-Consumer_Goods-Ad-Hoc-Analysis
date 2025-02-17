/*9. Which channel helped to bring more gross sales in the fiscal year 2021
and the percentage of contribution? The final output contains these fields,
channel
gross_sales_mln
percentage*/

WITH temp_table AS (
    SELECT 
        c.channel,
        SUM(s.sold_quantity * g.gross_price) AS total_sales
    FROM 
        fact_sales_monthly s
    JOIN 
        fact_gross_price g ON s.product_code = g.product_code
    JOIN 
        dim_customer c ON s.customer_code = c.customer_code
    WHERE 
        s.fiscal_year = 2021
    GROUP BY 
        c.channel
)
SELECT 
    channel,
    ROUND(total_sales / 1000000, 2) AS Gross_sales_mln,
    ROUND(total_sales / SUM(total_sales) OVER () * 100, 2) AS percentage
FROM 
    temp_table
ORDER BY 
    total_sales DESC;