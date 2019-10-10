SELECT achternaam, schoolgeld - betaald, schoolgeld FROM school.student WHERE betaald <> 0;

INSERT INTO student(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode, woonplaats, geboortedatum, schoolgeld, betaald) VALUES
('8888', 'Hennie', 'H.', 'de', 'Zeepaard', 'Hennystraat 01', '8822 HP', 'Zeewolde', '1982-04-05', 150, 500);

SELECT * FROM student;