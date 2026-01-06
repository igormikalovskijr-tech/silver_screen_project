select
    movie_id,
    cast(month as date) as month,
    location_id as location,
    total_invoice_sum as rental_cost
from {{ source('silverscreen', 'invoices') }}
