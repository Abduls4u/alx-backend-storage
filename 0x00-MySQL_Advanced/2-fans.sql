-- 2-fans.sql script
-- ranks country origins of bands

CREATE TEMPORARY TABLE band_fans_count 
    SELECT 
        origin,
        SUM(fans) AS nb_fans
    FROM
        holberton.metal_bands
    GROUP BY
        origin;
SELECT
    origin,
    nb_fans
FROM
    band_fans_count
ORDER BY
    nb_fans DESC;