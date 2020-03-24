INSERT INTO title(titleid, title,released, runtime, AverageRating, NumVotes)
SELECT DISTINCT title_id, title, released, runtime, Averagerating, numvotes 
FROM oTITLEs;