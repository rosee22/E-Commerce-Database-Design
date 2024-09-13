--OrderSummary

CREATE VIEW OrderSummary AS
SELECT 
    Users.UserID,
    Users.Username,
    Users.Email,
    COUNT(Orders.OrderID) AS TotalOrders,
    SUM(Orders.TotalPrice) AS TotalAmount,
    MAX(Orders.OrderDate) AS LastOrderDate
    FROM Users
    JOIN Orders
    ON Users.UserID = Orders.UserID
    GROUP BY 
    Users.UserID, Users.Username, Users.Email;

--ProductSalesPerformance

CREATE VIEW ProductSalesPerformance AS
SELECT 
    Products.ProductID,
    Products.Name,
    Products.Brand,
    Products.Category,
    COUNT(Sales.SaleID) AS TotalSales,
    SUM(Sales.SalePrice) AS TotalRevenue,
    AVG(Sales.SalePrice) AS AverageSalePrice
FROM 
    Products 
JOIN 
    Sales
    ON Products.ProductID = Sales.ProductID
GROUP BY 
    Products.ProductID, Products.Name, Products.Brand, Products.Category;
