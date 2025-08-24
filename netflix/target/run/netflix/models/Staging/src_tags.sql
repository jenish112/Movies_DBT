
  
    

        create or replace transient table MOVIELENS.DEV.src_tags
         as
        (

With raw_tags as (
    SELECT * FROM MOVIELENS.RAW.RAW_TAGS
)

SELECT
    userId as user_id,
    movieId as movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
FROM raw_tags
        );
      
  