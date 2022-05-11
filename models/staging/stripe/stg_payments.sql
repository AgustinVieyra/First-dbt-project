select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount is stored in cents, convert it to dollars
    amount / 100 as amount,
    created as created_at

from {{ source('stripe', 'payment') }}
/* Changed the statement from raw.stripe.payment to dbt-tutorial.stripe.payment
Since the project raw is not enables in BigQuery*/