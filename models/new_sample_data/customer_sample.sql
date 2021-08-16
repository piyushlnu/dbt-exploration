with customer_sample as (
    select * from {{ source('new_sample', 'customer') }}
),
final as(
    select * from customer_sample
)
select * from final