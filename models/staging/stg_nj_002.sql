select
    movie_id,
    cast(date as date) as date,
    'NJ_002' as location,
    ticket_amount as tickets_sold,
    total_earned as revenue
from {{ source('silverscreen', 'nj_002') }}
