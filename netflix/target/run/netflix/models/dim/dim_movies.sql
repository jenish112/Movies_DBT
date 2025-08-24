
  
    

        create or replace transient table MOVIELENS.DEV.dim_movies
         as
        (WITH src_movies AS (
    SELECT * FROM MOVIELENS.DEV.src_movies
)
SELECT
    movie_id,
    INITCAP(TRIM(title)) as movie_title,
    SPLIT(genres, '|') as genre_array,
    genres
FROM src_movies
        );
      
  