-- 9-index_name_score.sql script
-- creates an index for name and score
ALTER TABLE names
ADD COLUMN first_letter CHAR(1) GENERATED ALWAYS AS (LEFT(name, 1)) STORED;

CREATE INDEX idx_name_first_score ON names(first_letter, score);