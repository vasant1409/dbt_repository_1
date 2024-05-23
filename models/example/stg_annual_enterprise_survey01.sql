WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey01`),

ae AS ( 
SELECT 
    id,
    value,
    Variable_category
FROM survey
)

SELECT * FROM ae
