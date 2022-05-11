select
    id as customer_id,
    first_name,
    last_name

from dbt-tutorial.jaffle_shop.customers
/* Changed the statement from raw.jaffle_shop.customers to dbt-tutorial.jaffle_shop.customers
Since the project raw is not enables in BigQuery*/