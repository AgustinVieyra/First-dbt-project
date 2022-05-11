select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from {{ source('jaffle_shop', 'orders') }}
/* Changed the statement from raw.jaffle_shop.orders to dbt-tutorial.jaffle_shop.orders
Since the project raw is not enables in BigQuery*/