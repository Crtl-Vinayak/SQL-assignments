DROP TABLE student;
SELECT * FROM student;

CREATE TABLE student (
	studentnr VARCHAR(5),
	roepnaam VARCHAR(10),
	voorletters VARCHAR(10),
	tussenvoegsels VARCHAR(8) ,
	achternaam VARCHAR(25),
	adres VARCHAR(25),
	postcode VARCHAR(7),
	woonplaats VARCHAR(25),
	geslacht CHAR(5),
	telefoon VARCHAR(11),
	geboortedatum DATE,
	uitgeschreven DATE,
	schoolgeld DECIMAL(6,2),
	betaald DECIMAL(6,2),
	PRIMARY KEY(studentnr)
) engine = innodb;

INSERT INTO student(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode, woonplaats, geslacht, telefoon, geboortedatum, uitgeschreven, schoolgeld, betaald) VALUES
('1111', 'Piet', 'P.', NULL, 'Pietersen', 'Pietstraat 2', '1111 PP', 'Almere', 'man', '036-1234567', '1995-2-20', NULL, 500.0, 500.0);
INSERT INTO student(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode, woonplaats, geslacht, telefoon, geboortedatum, uitgeschreven, schoolgeld, betaald) VALUES
('2222', 'Jan', 'J.', NULL, 'Jansen', 'Janstraat 34', '2222 JJ', 'Almere', 'man', '036-987543', '1995-11-20', NULL, 500.0, 500.0);
INSERT INTO student(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode, woonplaats, geslacht, telefoon, geboortedatum, uitgeschreven, schoolgeld, betaald) VALUES
('6666', 'Angelique', NULL, NULL, 'A de Hoed', 'Hoedentraat 12', '1663 LW', 'Lelystad', 'vrouw', '0320-654378', '1995-6-6', NULL, 200.0, 100.0);
INSERT INTO student(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode, woonplaats, geslacht, telefoon, geboortedatum, uitgeschreven, schoolgeld, betaald) VALUES
('3333', 'Willem', 'W.', NULL, 'Willemsen', 'Willemstraat 45', '3333 WW', 'Almere', NULL, NULL, '1998-10-2', NULL, 200.0, 200.0);
INSERT INTO student(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode, woonplaats, geslacht, telefoon, geboortedatum, uitgeschreven, schoolgeld, betaald) VALUES
('4444', 'Berend', 'B.', NULL, 'van der Tol', 'Tolweg 10', '4444 WE', 'Lelystad', 'man', NULL, '1994-4-3', NULL, 500.0, 0.0);
INSERT INTO student(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode, woonplaats, geslacht, telefoon, geboortedatum, uitgeschreven, schoolgeld, betaald) VALUES
('5555', 'Cynthia', NULL, NULL, 'C de Bruin', 'Almerestraat 10', '1553 CW', 'Zeewolde', 'vrouw', '06-65789431', '1996-5-5', NULL, 500.0, 300.0);

