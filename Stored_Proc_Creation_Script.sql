--GetUserOrderSummary

CREATE PROCEDURE GetUserOrderSummary(
    IN pUserID INT  
   ) 
BEGIN
    SELECT 
        Users.UserID,
        Users.Username,
        Users.Email,
        COUNT(Orders.OrderID) AS TotalOrders,
        SUM(Orders.TotalPrice) AS TotalSpent,
        MAX(Orders.OrderDate) AS LastOrderDate
    FROM 
        Users 
    JOIN 
        Orders
        ON Users.UserID = Orders.UserID
    WHERE 
        Users.UserID = pUserID  
    GROUP BY 
        Users.UserID, Users.Username, Users.Email;
END 

CALL GetUserOrderSummary(1); 


--GetProductUserDetails

CREATE PROCEDURE GetProductUserDetails(
    IN ProductID INT  
)
BEGIN
    SELECT 
        Products.ProductID,
        Products.Name AS ProductName,
        Products.Brand,
        Products.Price,
        Users.UserID,
        Users.Username,
        Users.Email
    FROM 
        Products 
    JOIN 
        Users 
        ON Products.UserID = Users.UserID
    WHERE 
        Products.ProductID = ProductID;
END 


CALL GetProductUserDetails(1);