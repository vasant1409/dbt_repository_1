WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey02`),

x2 AS ( 
SELECT 

  Year as t2_Year,
  Industry_aggregation_NZSIOC as t2_Industry_aggregation_NZSIOC,
  Industry_code_NZSIOC as t2_Industry_code_NZSIOC,
  Units as t2_Units,
  Variable_code as t2_Variable_code,
  Variable_name as t2_Variable_name,
  Variable_category as t2_Variable_category,
  Value as t2_Value,
  Industry_code_ANZSIC06 as t2_Industry_code_ANZSIC06,
  serial_number as t2_serial_number

FROM survey
)

SELECT * FROM x2
