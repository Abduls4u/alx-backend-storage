-- 4-store.sql script
-- creates a trigger

DELIMITER //
CREATE TRIGGER IF NOT EXISTS decrease_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    DECLARE item_quantity INT;
    -- get current vlaue of quantity
    SELECT quantity INTO item_quantity
    FROM items
    WHERE name=NEW.item_name;

    -- decrease the quantity by one
    UPDATE items
    SET quantity = item_quantity - 1
    WHERE name=NEW.item_name;
END;
//
DELIMITER ;