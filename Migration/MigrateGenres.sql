INSERT INTO genres (Genre)
SELECT genres FROM
(
    SELECT GENRE1 AS genres FROM otitles 
    UNION 
    SELECT GENRE2 AS genres FROM otitles 
    UNION 
    SELECT GENRE3 AS genres FROM  otitles
) A;