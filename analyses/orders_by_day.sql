with orders as (
    select * from {{ ref('stg_orders') }}
),
daily as(
    select order_date,count(*)
    from orders 
    group by order_date
)

select * from daily