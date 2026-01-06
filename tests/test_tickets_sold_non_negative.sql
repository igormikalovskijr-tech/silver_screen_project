select *
from {{ ref('fct_movie_monthly_performance') }}
where tickets_sold < 0
