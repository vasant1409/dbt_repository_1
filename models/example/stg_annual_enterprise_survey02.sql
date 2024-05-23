WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey02`),

n AS ( 
SELECT 
    id,
    year AS Year,
    Industry_code_NZSIOC AS Industry_code,
    Industry_name_NZSIOC AS Industry_name,
    Size_group, 
    Variable, 
    Units,
    Variable_category,
    Industry_aggregation_NZSIOC,
    Value as value
FROM survey
)

SELECT * FROM n
