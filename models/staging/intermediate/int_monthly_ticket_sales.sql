select
    movie_id,
    date_trunc('month', date) as month,
    location,
    sum(tickets_sold) as tickets_sold,
    sum(revenue) as revenue
from {{ ref('int_all_ticket_sales') }}
group by
    movie_id,
    month,
    location

