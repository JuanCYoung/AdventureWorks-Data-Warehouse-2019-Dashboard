-- Cleansed Dim_Customers Table --
SELECT 
	c.CustomerKey AS [Customer Key],
	c.FirstName AS [First Name],
	c.LastName AS [Last Name],
	c.FirstName+' '+c.LastName as [Full Name],
	CASE c.gender 
		WHEN 'M' then 'Male'
		WHEN 'F' then 'Female'
	END AS [Gender],
	c.DateFirstPurchase AS [Date First Purchase],
	g.city AS [Customer City]

FROM 
	dbo.DimCustomer as c
	LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey
ORDER BY
	CustomerKey ASC
