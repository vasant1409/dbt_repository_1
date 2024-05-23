WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey02`),

n AS ( 
SELECT 
    id,
    year AS Year,
    Industry_code_NZSIOC AS Industry_code,
    Industry_name_NZSIOC AS Industry_name
FROM survey
)

SELECT * FROM n
