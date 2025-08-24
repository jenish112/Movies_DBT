

WITH movies AS (
    SELECT * FROM MOVIELENS.DEV.dim_movies
),
tags AS (
    SELECT * FROM MOVIELENS.DEV.dim_genome_tags
),
scores AS (
    SELECT * FROm MOVIELENS.DEV.fct_genome_scores
)

SELECT
    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_name,
    t.relevance_score
FROM movies m
LEFT JOIN scores s ON m.movie_id = s.movie_id
LEFT JOIN tags t on t.tag_td = s.tag_id