SELECT woonplaats, COUNT(*) 
FROM school.student 
GROUP BY woonplaats 
HAVING COUNT(*) > 2;