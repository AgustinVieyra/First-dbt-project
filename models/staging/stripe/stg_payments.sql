select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- the macro cents_to_dollars gets the name of the column, with the number of digits it is rounded to
    {{ cents_to_dollars('amount', 4) }} as amount,
        -- Note: Since Jinja is a template language, we pass 'amount' as a string to use it for the SQL once it is compiled.
    created as created_at

from {{ source('stripe', 'payment') }}
/* Changed the statement from raw.stripe.payment to dbt-tutorial.stripe.payment
Since the project raw is not enables in BigQuery*/
