-- Cleansed Fact_InternetSales Table --
SELECT 
	ProductKey,
	OrderDateKey,
	DueDateKey,
	ShipDateKey,
	CustomerKey,
	SalesOrderNumber,
	SalesAmount
FROM 
	dbo.FactInternetSales
WHERE LEFT(OrderDateKey,4) >= YEAR(GETDATE()) - 2
ORDER BY
	OrderDate ASC