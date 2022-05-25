-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.

with payments as (
    select * from {{ ref('stg_payments') }}
)

select
    order_id,
        sum(amount) as total_amount
from {{ ref('stg_payments') }}
group by order_id
having not(total_amount >= 0)

/*To check the actual terms that give the error, I can just paste this SQL query on the scratchpad and look at the results*/