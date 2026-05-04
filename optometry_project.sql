SELECT * FROM Sales;
SELECT Store, SUM(Price) AS TotalSales
FROM Sales
GROUP BY Store;
SELECT 
    MONTH(SaleDate) AS Month,
    SUM(Price) AS TotalSales
FROM Sales
GROUP BY MONTH(SaleDate);
SELECT 
    CASE 
        WHEN Age < 18 THEN 'Child'
        WHEN Age BETWEEN 18 AND 35 THEN 'Young Adult'
        WHEN Age BETWEEN 36 AND 60 THEN 'Adult'
        ELSE 'Senior'
    END AS AgeGroup,
    COUNT(*) AS TotalCustomers
FROM Sales
GROUP BY AgeGroup;
SELECT Age, LensType, COUNT(*) AS Total
FROM Sales
GROUP BY Age, LensType;
SELECT Gender, LensType, COUNT(*) AS Total
FROM Sales
GROUP BY Gender, LensType;
SELECT PaymentMethod, SUM(Price) AS TotalSales
FROM Sales
GROUP BY PaymentMethod;