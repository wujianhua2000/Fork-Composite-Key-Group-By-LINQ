SELECT CarId, Name, Manufacturer, [Year], Price
  FROM [dbo].[Cars]

SELECT Manufacturer, MAX(Price) AS MaxPrice, MIN(Price) AS MinPrice
  FROM [dbo].[Cars]
 GROUP BY Manufacturer

SELECT Manufacturer, Name, MAX(Price) AS MaxPrice, MIN(Price) AS MinPrice
  FROM [dbo].[Cars]
 GROUP BY Manufacturer, Name

SELECT Manufacturer, Name, MAX(Price) AS MaxPrice, MIN(Price) AS MinPrice
  FROM [dbo].[Cars]
 WHERE [Year] IS NOT NULL
 GROUP BY Manufacturer, Name

SELECT Manufacturer, Name, [Year], MAX(Price) AS MaxPrice, MIN(Price) AS MinPrice
  FROM [dbo].[Cars]
 WHERE [Year] IS NOT NULL
 GROUP BY Manufacturer, Name, [Year]
HAVING COUNT([Year]) > 1
 ORDER BY [Year], Name, Manufacturer
