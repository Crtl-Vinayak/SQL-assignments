/*
SELECT * FROM school.student;
SELECT geslacht, COUNT(achternaam) FROM school.student GROUP BY geslacht;
*/

SELECT geslacht, COUNT(achternaam) FROM school.student WHERE geslacht IS NOT NULL GROUP BY geslacht;