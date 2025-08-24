
  create or replace   view MOVIELENS.DEV.src_genome_tags
  
   as (
    With raw_genome_tags as (
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_TAGS
)
SELECT
    tagId as tag_id,
    tag
FROM raw_genome_tags
  );

