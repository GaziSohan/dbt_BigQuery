WITH 
sales_orders AS 
    (SELECT * FROM `shining-sphinx-365804.Project_Staykeepers.Table_Sales_Orders`),
customers AS 
    (SELECT * FROM `shining-sphinx-365804.Project_Staykeepers.Table_Customers`),
regions AS 
    (SELECT * FROM `shining-sphinx-365804.Project_Staykeepers.Table_Regions`),
products AS 
    (SELECT * FROM `shining-sphinx-365804.Project_Staykeepers.Table_Products`)

SELECT 
  sales.OrderNumber,
  sales.OrderDate,
  sales.Customer_Name_Index,
  cust.Customer_Names,
  sales.Channel,
  sales.Currency_Code,
  sales.Warehouse_Code,
  sales.Delivery_Region_Index,
  reg.City,
  reg.Country,
  reg.Territory,
  reg.Full_Name,
  sales.Product_Description_Index,
  prod.Product_Name,
  sales.Order_Quantity,
  sales.Unit_Price,
  sales.Line_Total,
  sales.Total_Unit_Cost

FROM sales_orders AS sales
LEFT JOIN customers AS cust 
ON cust.Customer_Index = sales.Customer_Name_Index
LEFT JOIN regions AS reg
ON reg.Index = sales.Delivery_Region_Index
LEFT JOIN products AS prod
ON prod.Index = sales.Product_Description_Index