select
    mts.movie_id,
    mc.movie_title,
    mc.genre,
    mc.studio,
    mts.month,
    mts.location,
    inv.rental_cost,
    mts.tickets_sold,
    mts.revenue
from {{ ref('int_monthly_ticket_sales') }} mts
left join {{ ref('stg_invoices') }} inv
    on mts.movie_id = inv.movie_id
   and mts.location = inv.location
   and mts.month = inv.month
left join {{ ref('stg_movie_catalogue') }} mc
    on mts.movie_id = mc.movie_id
