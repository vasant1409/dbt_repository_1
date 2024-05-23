WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey01`),

ae AS ( 
SELECT 
    id,
    value,
    Industry_aggregation_NZSIOC,
    Variable_category
FROM survey
)

SELECT * FROM ae
