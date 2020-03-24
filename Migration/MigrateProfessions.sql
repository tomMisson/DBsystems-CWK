INSERT INTO professions (Profession)
SELECT prof FROM
(
    SELECT Profession1 AS prof FROM onames 
    UNION 
    SELECT Profession2 AS prof FROM onames 
    UNION 
    SELECT Profession3 AS prof FROM  onames
) A