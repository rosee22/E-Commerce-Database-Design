/*Create Users Table*/
CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    PhoneNumber VARCHAR(20)
);
/*Create Products Table (Super-Type)*/

CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Brand VARCHAR(50),
    Model VARCHAR(50),
    Colour VARCHAR(20),
    DateOfPurchase DATE,
    Specification TEXT, 
    ProductCondition VARCHAR(20) CHECK (ProductCondition IN ('New', 'Like New', 'Used', 'Refurbished')),
    Price DECIMAL(10, 2) NOT NULL,
    UserID INT REFERENCES Users(UserID),
    Category VARCHAR(50)
);
/*3. Create Gadgets Table (Sub-Type)*/
CREATE TABLE Gadgets (
    ProductID SERIAL PRIMARY KEY,
    BatteryLife VARCHAR(50),
    ScreenSize VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
/*4. Create Accessories Table (Sub-Type)*/
CREATE TABLE Accessories (
    ProductID SERIAL PRIMARY KEY,
    Compatibility VARCHAR(50),
    Type VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
/*Create Orders Table*/

CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalPrice DECIMAL(10, 2) NOT NULL,
    ShippingAddress VARCHAR(255),
    ShippingCity VARCHAR(100),
    ShippingPostalCode VARCHAR(20),
    ShippingCountry VARCHAR(50)
);
/*6. Create OrderItems Table*/

CREATE TABLE OrderItems (
    OrderItemID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    ProductID INT REFERENCES Products(ProductID),
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);
/*7. Create Sales Table*/

CREATE TABLE Sales (
    SaleID SERIAL PRIMARY KEY,
    ProductID INT REFERENCES Products(ProductID),
    SaleDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Quantity INT NOT NULL,
    SalePrice DECIMAL(10, 2) NOT NULL
);
/*8. Create Stock Table*/

CREATE TABLE Stock (
    ProductID INT PRIMARY KEY REFERENCES Products(ProductID),
    Quantity INT NOT NULL CHECK (Quantity >= 0),
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
/*9. Create Indexes*/

CREATE INDEX idx_product_name ON Products(Name);