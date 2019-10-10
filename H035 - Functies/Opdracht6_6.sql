SELECT geslacht, COUNT(achternaam) 
FROM school.student 
WHERE geslacht IS NOT NULL AND woonplaats = 'Lelystad'
GROUP BY geslacht;