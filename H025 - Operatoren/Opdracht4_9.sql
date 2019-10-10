SELECT * FROM student WHERE (achternaam LIKE '______') OR (achternaam LIKE '_____') OR (achternaam LIKE '____') OR (achternaam LIKE '___') OR (achternaam LIKE '__')  OR (achternaam LIKE '_');

INSERT INTO student(studentnr, roepnaam, voorletters, achternaam, adres, postcode, woonplaats, geboortedatum, schoolgeld, betaald) VALUES
('7777', 'Henry', 'H.', 'Pet', 'Henrystraat 91', '7789 HP', 'Lelystad', '1991-12-17', 1500, 550);

SELECT * FROM student;

UPDATE `school`.`student` SET `tussenvoegsels`='van' WHERE `studentnr`='7777';