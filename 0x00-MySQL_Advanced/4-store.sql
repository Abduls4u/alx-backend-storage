-- 4-store.sql script
-- creates a trigger

DELIMITER //
CREATE TRIGGER IF NOT EXISTS decrease_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    -- decrease the quantity by one
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name=NEW.item_name;
END;
//
DELIMITER ;