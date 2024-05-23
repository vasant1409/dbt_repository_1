WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey01`),

ae AS ( 
SELECT 
    id,
    value,
    variable
FROM survey
)

SELECT * FROM ae
