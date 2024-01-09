with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        CAST(revenue as int64) AS revenue,
        quantity

    from source

)

select * from renamed
