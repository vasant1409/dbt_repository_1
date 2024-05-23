WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey01`),

x1 AS ( 
SELECT 
    id as t1_id,
    year as t1_year,
    industry_code_ANZSIC as t1_industry_code_ANZSIC,
    industry_name_ANZSIC as t1_industry_name_ANZSIC,
    rme_size_grp as t1_rme_size_grp,
    variable as t1_variable,
    value as t1_value,
    unit as t1_unit,
    serial_number as t1_serial_number,
    serial_number_1 as t1_serial_number_1
  
FROM survey
)

SELECT * FROM x1
