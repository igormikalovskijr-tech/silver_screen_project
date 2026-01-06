select
    movie_id,
    cast(timestamp as date) as date,
    'NJ_001' as location,
    ticket_amount as tickets_sold,
    transaction_total as revenue
from {{ source('silverscreen', 'nj_001') }}
