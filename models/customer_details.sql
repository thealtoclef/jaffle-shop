with details as (

    select * from {{ ref('stg_customer_details') }}

)

select
    customer_id,
    tier,
    loyalty_points

from details
