With raw_links as (
    SELECT * FROM MOVIELENS.RAW.RAW_links
)

SELECT
    movieId as movie_id,
    imdbId as imdb_id,
    tmdbId as tmdb_id
FROM raw_links