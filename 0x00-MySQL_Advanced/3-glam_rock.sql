-- 3-glam_rock.sql script
-- lists all bands with glam rock as their main style

CREATE TEMPORARY TABLE lifespan_calc AS
    SELECT
        band_name,
        (CASE 
            WHEN split IS NULL THEN 2022 - formed
            ELSE split - formed
        END) AS lifespan
    FROM
        metal_bands
    WHERE
        style LIKE '%Glam rock%';

SELECT
    band_name,
    lifespan
FROM
    lifespan_calc
ORDER BY
    lifespan DESC;