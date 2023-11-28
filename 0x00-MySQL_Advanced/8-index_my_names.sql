-- 8-index_my_names.sql script
-- creates an index on the table names
ALTER TABLE names
ADD COLUMN first_letter CHAR(1) GENERATED ALWAYS AS (LEFT(name, 1)) STORED;

CREATE INDEX idx_name_first
ON names(first_letter);