-- 5-valid_email.sql script
-- checks if email is valid
DELIMITER //
CREATE TRIGGER IF NOT EXISTS is_valid_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    DECLARE valid_email_reset boolean;
    CASE( WHEN users.
    )
