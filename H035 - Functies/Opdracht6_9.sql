SELECT woonplaats, SUM(betaald) 
FROM school.student
GROUP BY woonplaats;