/*4. Follow-up: Which segment had the most increase in unique products in
2021 vs 2020? The final output contains these fields,
segment
product_count_2020
product_count_2021
difference*/

WITH product_counts AS (
    SELECT 
        p.segment,
        s.fiscal_year,
        COUNT(DISTINCT s.product_code) AS product_count
    FROM 
        fact_sales_monthly s
    JOIN 
        dim_product p ON s.product_code = p.product_code
    GROUP BY 
        p.segment, s.fiscal_year
)
SELECT 
    pc_2020.segment,
    pc_2020.product_count AS product_count_2020,
    pc_2021.product_count AS product_count_2021,
    pc_2021.product_count - pc_2020.product_count AS difference
FROM 
    product_counts pc_2020
JOIN 
    product_counts pc_2021
ON 
    pc_2020.segment = pc_2021.segment
    AND pc_2020.fiscal_year = 2020
    AND pc_2021.fiscal_year = 2021
ORDER BY 
    difference DESC;