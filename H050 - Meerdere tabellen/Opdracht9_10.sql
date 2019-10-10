/*
SELECT * FROM opleiding;
SELECT * FROM student;

SELECT studentnr, roepnaam, tussenvoegsels, achternaam, opleiding.naam, opleiding.niveau FROM student
LEFT JOIN studentopleiding USING(studentnr)
LEFT JOIN opleiding USING (opleidingscode);
*/

SELECT COUNT('studentnr'), opleiding.niveau FROM student
LEFT JOIN studentopleiding USING(studentnr)
LEFT JOIN opleiding USING (opleidingscode)
WHERE niveau IS NOT NULL
GROUP BY opleiding.niveau;