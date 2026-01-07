select
    movie_id,
    date,
    location,
    tickets_sold,
    revenue
from {{ ref('stg_nj_001') }}

union all

select
    movie_id,
    date,
    location,
    tickets_sold,
    revenue
from {{ ref('stg_nj_002') }}

union all

select
    movie_id,
    date,
    location,
    tickets_sold,
    revenue
from {{ ref('stg_nj_003') }}

