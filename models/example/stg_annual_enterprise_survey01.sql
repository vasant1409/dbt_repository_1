WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey01`),

x AS ( 
SELECT 
    id as t1_id,
    year as t1_year,
    industry_code_ANZSIC,
    industry_name_ANZSIC,
    rme_size_grp,
    unit,
    value t1_value,
    variable,
    serial_number as t1_serial_number,
    serial_number_1 as t1_serial_number_1
FROM survey
)

SELECT * FROM x
