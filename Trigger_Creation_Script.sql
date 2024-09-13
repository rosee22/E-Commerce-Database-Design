--Alter table Products

ALTER TABLE Products 
ADD StockQuantity INT DEFAULT 0,
ADD Status VARCHAR(20) DEFAULT 'In Stock';

--Products

CREATE TRIGGER UpdateProductStatus
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.StockQuantity < 5 THEN
        SET NEW.Status = 'Out of Stock';
    ELSE
        SET NEW.Status = 'In Stock';
    END IF;
END

