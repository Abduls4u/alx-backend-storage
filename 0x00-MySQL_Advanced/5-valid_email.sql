-- 5-valid_email.sql script
-- checks if email is valid
DELIMITER //
CREATE TRIGGER IF NOT EXISTS is_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email != OLD.email 
    THEN
        SET NEW.valid_email = 0;
    END IF;
END;
//
DELIMITER ;