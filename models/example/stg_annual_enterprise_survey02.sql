WITH
survey AS (
SELECT * FROM `cloudside-academy.dataset1409.annual-enterprise-survey02`),

n AS ( 
SELECT 
    id as t2_ID,
    Year as t2_Year,
    Industry_code_NZSIOC AS Industry_code,
    Industry_name_NZSIOC AS Industry_name, 
    Variable_name, 
    Industry_code_ANZSIC06,
    Units,
    Value,
    Variable_code,
    Variable_category,
    Industry_aggregation_NZSIOC,
    serial_number as t2_serial_number,
    serial_number_1 as t2_serial_number_1
FROM survey
)

SELECT * FROM n
