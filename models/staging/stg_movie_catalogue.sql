select
    movie_id,
    movie_title,
    coalesce(genre, 'Unknown') as genre,
    studio
from {{ source('silverscreen', 'movie_catalogue') }}
