
  create or replace   view MOVIELENS.DEV.src_movies
  
   as (
    With raw_movies as (
    SELECT * FROM MOVIELENS.RAW.RAW_MOVIES
)
SELECT
    movieID as movie_id,
    title,
    genres
FROM raw_movies
  );

