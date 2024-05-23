WITH
survey AS (
SELECT * FROM `cloudside-academy.dbt_sample_data.annual-enterprise-survey01`),

x2 AS ( 
SELECT 

  t2_Year,
  t2_Industry_aggregation_NZSIOC,
  t2_Industry_code_NZSIOC,
  t2_Units,
  t2_Variable_code,
  t2_Variable_name,
  t2_Variable_category,
  t2_Value,
  t2_Industry_code_ANZSIC06,
  t2_serial_number

FROM survey
)

SELECT * FROM x2
