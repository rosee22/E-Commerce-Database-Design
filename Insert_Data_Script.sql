
INSERT INTO Users (Username, Password, Email, FirstName, LastName, Address, City, PostalCode, Country, PhoneNumber)
VALUES 
('john_doe', 'hashed_password1', 'john@example.com', 'John', 'Doe', '123 Elm Street', 'London', 'E1 6AN', 'UK', '07123456789'),
('jane_smith', 'hashed_password2', 'jane@example.com', 'Jane', 'Smith', '456 Oak Street', 'Manchester', 'M1 3AU', 'UK', '07234567890'),
('alice_jones', 'hashed_password3', 'alice@example.com', 'Alice', 'Jones', '789 Pine Street', 'Birmingham', 'B2 5AL', 'UK', '07345678901');

-- Insert Sample Data into Products Table
INSERT INTO Products (Name, Brand, Model, Colour, DateOfPurchase, Specification, ProductCondition, Price, UserID, Category)
VALUES 
('iPhone 11', 'Apple', 'A2221', 'Black', '2019-09-20', '64GB, Dual SIM', 'Used', 450.00, 1, 'Gadget'),
('Galaxy S10', 'Samsung', 'SM-G973F', 'White', '2019-03-08', '128GB, Dual SIM', 'Like New', 500.00, 2, 'Gadget'),
('AirPods Pro', 'Apple', 'A2084', 'White', '2020-01-15', 'Active Noise Cancellation', 'New', 200.00, 3, 'Accessory');

-- Insert Sample Data into Gadgets Table
INSERT INTO Gadgets (ProductID, BatteryLife, ScreenSize)
VALUES 
(1, '10 hours', '6.1 inches'),
(2, '12 hours', '6.4 inches');

-- Insert Sample Data into Accessories Table
INSERT INTO Accessories (ProductID, Compatibility, Type)
VALUES 
(3, 'iOS devices', 'Wireless Earbuds');

-- Insert Sample Data into Orders Table
INSERT INTO Orders (UserID, OrderDate, TotalPrice, ShippingAddress, ShippingCity, ShippingPostalCode, ShippingCountry)
VALUES 
(1, '2024-06-01 10:00:00', 450.00, '123 Elm Street', 'London', 'E1 6AN', 'UK'),
(2, '2024-06-02 11:30:00', 500.00, '456 Oak Street', 'Manchester', 'M1 3AU', 'UK');

-- Insert Sample Data into OrderItems Table
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price)
VALUES 
(1, 1, 1, 450.00),
(2, 2, 1, 500.00);

-- Insert Sample Data into Sales Table
INSERT INTO Sales (ProductID, SaleDate, Quantity, SalePrice)
VALUES 
(1, '2024-06-01 10:00:00', 1, 450.00),
(2, '2024-06-02 11:30:00', 1, 500.00);

-- Insert Sample Data into Stock Table
INSERT INTO Stock (ProductID, Quantity, LastUpdated)
VALUES 
(1, 5, '2024-06-01 10:00:00'),
(2, 3, '2024-06-02 11:30:00'),
(3, 10, '2024-06-03 14:45:00');