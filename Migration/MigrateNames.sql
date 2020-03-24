INSERT INTO name(name_id, Name, BirthYEar, DeathYear)
SELECT DISTINCT name_id, Name, birthyear, deathyear 
FROM oNames