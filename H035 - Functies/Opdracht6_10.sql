SELECT woonplaats
FROM school.student
WHERE betaald > 0
GROUP BY woonplaats;


SELECT * FROM school.student;