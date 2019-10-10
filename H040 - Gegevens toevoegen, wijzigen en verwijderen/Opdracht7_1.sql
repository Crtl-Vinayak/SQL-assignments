SELECT * FROM school.student;

INSERT INTO school.student
(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode,
woonplaats, geslacht, telefoon, geboortedatum, schoolgeld, betaald) 
VALUES
('2121', 'Ton', 'A.', 'van', 'Zetten', 'Revestraat 44', '2121 VR', 'Almere', 'm', '036-
7654321', '1995-12-2', 500, 500);

UPDATE `school`.`student` SET `geslacht`='man' WHERE `studentnr`='2121';
