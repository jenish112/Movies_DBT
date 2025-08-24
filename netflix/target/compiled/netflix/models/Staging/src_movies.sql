With raw_movies as (
    SELECT * FROM MOVIELENS.raw.raw_movies
)
SELECT
    movieID as movie_id,
    title,
    genres
FROM raw_movies