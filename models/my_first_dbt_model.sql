
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

-- {{ config(materialized='view') }}

-- with source_data as (

--     select 1 as id
--     union all
--     select null as id

-- )

-- select *
-- from source_data

with source_data as (

    select
        string_field_0 AS user_id,
        string_field_1 AS user_name
    from
        {{ source('raw_customers_src', 'raw_customers') }}
    
)

select * from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
