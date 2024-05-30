WITH
{{config(materialized='ephemeral')}}

inter_survey as (
SELECT
     SUM(CAST(REPLACE(t2.Value,',', '') AS INT64)) AS Total_Value,
     REPLACE(t2.Value,'C', ' ') AS Cleaned_Value,
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey01'))}},
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey02'))}}
FROM
     {{ ref('stg_annual_enterprise_survey02') }} AS t2
RIGHT JOIN
     {{ ref('stg_annual_enterprise_survey01') }} AS t1
ON
     t1.t1_serial_number = t2.t2_serial_number
AND  t1.t1_serial_number_1 = t2.t2_serial_number_1
WHERE
     t1.t1_year = 2013
AND  t2.t2_Year = 2013
AND  t2.Value != 'C'  

GROUP BY 
     t1_id,
     t2_ID,
     t1_year,
     t2_Year,
     industry_code_ANZSIC,
     industry_name_ANZSIC,
     rme_size_grp,
     unit,
     t2.Value,
     t1_value,
     variable,
     Industry_code,
     Industry_name, 
     Variable_name, 
     Industry_code_ANZSIC06,
     Units,
     Variable_code,
     Variable_category,
     Industry_aggregation_NZSIOC,
     t1_serial_number_1,
     t1_serial_number,
     t2_serial_number,
     t2_serial_number_1
)

SELECT * FROM inter_survey
