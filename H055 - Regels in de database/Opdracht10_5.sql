/*
SELECT * FROM student;
SELECT * FROM opleiding;
SELECT * FROM studentopleiding;
*/

SELECT studentnr, geslacht, opleiding.naam FROM student
LEFT JOIN studentopleiding USING(studentnr)
LEFT JOIN opleiding USING (opleidingscode)
WHERE geslacht = 'vrouw'
ORDER BY studentnr DESC
LIMIT 1;