INSERT INTO name(nameid, Name, BirthYEar, DeathYear)
SELECT DISTINCT name_id, Name, birthyear, deathyear 
FROM oNames;