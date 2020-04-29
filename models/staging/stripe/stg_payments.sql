select
    ID as payment_id,
    "orderID" as order_id,
    "paymentMethod" as payment_method,
    AMOUNT / 100 as amount,  --amount in dollars, not cents
    CREATED as created_at
from raw.stripe.payment