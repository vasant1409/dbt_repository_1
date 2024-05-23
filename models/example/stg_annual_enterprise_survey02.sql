WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey02`),

n AS ( 
SELECT 
    id,
    year AS Year,
    Industry_code_NZSIOC AS Industry_code,
    Industry_name_NZSIOC AS Industry_name,
    rme_size_grp AS Size_group,
    variable AS Variable,
    value,
    unit AS Units
FROM survey
)

SELECT * FROM n
