select
    details as movie_id,
    cast(timestamp as date) as date,
    'NJ_003' as location,
    amount as tickets_sold,
    total_value as revenue
from {{ source('silverscreen', 'nj_003') }}
where product_type = 'ticket'
