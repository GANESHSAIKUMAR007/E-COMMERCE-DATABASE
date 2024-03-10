
-- Create the trigger
IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'update_quantity_trigger')
    DROP TRIGGER update_quantity_trigger;
GO

CREATE TRIGGER update_quantity_trigger
ON ordered_products
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Update the quantity in the Products_option table
    UPDATE po
    SET po.quantity = po.quantity - 1
    FROM Products_option po
    INNER JOIN inserted i ON po.product_id = i.product_id;
END;
GO
