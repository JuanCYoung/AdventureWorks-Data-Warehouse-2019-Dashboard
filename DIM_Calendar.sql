-- Cleansed DIM_DateTable --
SELECT 
	DateKey,
	FullDateAlternateKey AS Date,
	EnglishDayNameOfWeek AS Day,
	EnglishMonthName AS Month,
	LEFT(EnglishMonthName,3) AS MonthShort,
	MonthNumberOfYear AS MonthNo,
	CalendarQuarter AS Quarter,
	CalendarYear AS Year
FROM dbo.DimDate
WHERE CalendarYear >= 2019

