

With raw_ratings as (
    SELECT * FROM MOVIELENS.RAW.RAW_RATINGS
)
SELECT
    userId as user_id,
    movieId as movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp
FROM raw_ratings