WITH
survey AS (
SELECT * FROM `cloudside-academy.dbt_sample_data.annual-enterprise-survey01`),

x1 AS ( 
SELECT 
    t1_id,
    t1_year,
    t1_industry_code_ANZSIC,
    t1_industry_name_ANZSIC,
    t1_rme_size_grp,
    t1_variable,
    t1_value,
    t1_unit,
    t1_serial_number,
    t1_serial_number_1
  
FROM survey
)

SELECT * FROM x1
