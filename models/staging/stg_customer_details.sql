with source as (

    select * from {{ ref('raw_customer_details') }}

),

renamed as (

    select
        customer_id,
        tier,
        loyalty_points

    from source

)

select * from renamed
