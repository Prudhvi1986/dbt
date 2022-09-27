with total_revenue as (

    select sum(Amount) as totalrevenue from {{ ref('stg_payments') }} where status ='success'
) 

select * from total_revenue