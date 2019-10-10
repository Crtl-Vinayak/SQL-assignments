/*
SELECT * FROM student;
SELECT * FROM opleiding;
SELECT * FROM studentopleiding;
*/

SELECT COUNT(studentnr), opleiding.niveau FROM student
LEFT JOIN studentopleiding USING(studentnr)
LEFT JOIN opleiding USING (opleidingscode)
WHERE opleiding.niveau = '3'
GROUP BY opleiding.niveau;