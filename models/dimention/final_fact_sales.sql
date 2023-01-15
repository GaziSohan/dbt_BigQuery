with final_sales AS(
    select *
    from {{ref('fact_sales')}}
)

SELECT
*,
Line_Total AS Total_Sales,
Line_Total - (Order_Quantity * Total_Unit_Cost) AS Total_Profit,
(Line_Total - (Order_Quantity * Total_Unit_Cost))/Line_Total AS Profit_Margin

FROM final_sales