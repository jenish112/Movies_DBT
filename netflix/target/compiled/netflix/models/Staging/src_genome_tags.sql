With raw_genome_tags as (
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_TAGS
)
SELECT
    tagId as tag_id,
    tag
FROM raw_genome_tags