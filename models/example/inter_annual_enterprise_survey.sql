WITH
{{config(materialized='view')}}

inter_survey as (
SELECT
     
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey01') }},
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey02') )}}
        
FROM
     {{ ref('stg_annual_enterprise_survey02') }} AS t2

JOIN
     {{ ref('stg_annual_enterprise_survey01') }} AS t1
ON
    t1.serial_number = t2.serial_number AND
    t1.serial_number_1 = t2.serial_number_1

WHERE
    
    t1.year = 2013 AND
    t2.Year = 2013


Select * from inter_survey

