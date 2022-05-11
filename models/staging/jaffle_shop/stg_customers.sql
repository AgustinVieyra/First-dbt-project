select
    id as customer_id,
    first_name,
    last_name

from {{ source('jaffle_shop', 'customers') }} order by customer_id
/* Changed the statement from raw.jaffle_shop.customers to dbt-tutorial.jaffle_shop.customers
Since the project raw is not enables in BigQuery*/