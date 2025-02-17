/*8. In which quarter of 2020, got the maximum total_sold_quantity? The final
output contains these fields sorted by the total_sold_quantity,
Quarter
total_sold_quantity*/

WITH temp_table AS (
    SELECT 
        date, 
        MONTH(DATE_ADD(date, INTERVAL 4 MONTH)) AS period, 
        fiscal_year, 
        sold_quantity 
    FROM 
        fact_sales_monthly
)
SELECT 
    CASE 
        WHEN period <= 3 THEN 'Q1'
        WHEN period <= 6 THEN 'Q2'
        WHEN period <= 9 THEN 'Q3'
        ELSE 'Q4'
    END AS quarter,
    SUM(sold_quantity)  AS total_sold_quantity
FROM 
    temp_table
WHERE 
    fiscal_year = 2020
GROUP BY 
    quarter
ORDER BY 
    total_sold_quantity DESC;