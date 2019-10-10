CREATE DATABASE school;
USE school;

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

UPDATE `school`.`student` SET `tussenvoegsels`='van der', `achternaam`='Tol' WHERE `studentnr`='4444';
UPDATE `school`.`student` SET `tussenvoegsels`='C de', `achternaam`='Bruin' WHERE `studentnr`='5555';
UPDATE `school`.`student` SET `tussenvoegsels`='A de ', `achternaam`='Hoed' WHERE `studentnr`='6666';

INSERT INTO school.student
(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode,
woonplaats, geslacht, telefoon, geboortedatum, schoolgeld, betaald) 
VALUES
('2121', 'Ton', 'A.', 'van', 'Zetten', 'Revestraat 44', '2121 VR', 'Almere', 'm', '036-
7654321', '1995-12-2', 500, 500);

UPDATE `school`.`student` SET `geslacht`='man' WHERE `studentnr`='2121';

INSERT INTO school.student
(studentnr, roepnaam, voorletters, achternaam, adres, postcode,
woonplaats, geslacht, telefoon, geboortedatum, schoolgeld, betaald) 
VALUES
('1313', 'Janneke', 'J.', 'Simonsen', 'Revestraat 2', '2222 VR', 'Almere', 'vrouw', '036-5467890',
 '1995-4-10', 500, 200);

INSERT INTO school.student
(studentnr, roepnaam, voorletters, achternaam, adres, postcode,
woonplaats, geslacht, telefoon, geboortedatum, schoolgeld, betaald) 
VALUES
('3232', 'Annemarieke', 'A.', 'de Groot', 'Janstraat 33', '1533 JJ', 'Zeewolde', 'vrouw', '036-8912765',
 '1995-10-3', 500, 500);
UPDATE school.student SET adres = 'Lotstraat 5', postcode = '4455 BT' WHERE studentnr = '4444';

UPDATE school.student SET schoolgeld = 0 WHERE studentnr = '5555';

UPDATE school.student 
SET woonplaats = 'Almere', adres = 'Januaristraat 15', postcode = '1335 RT' 
WHERE studentnr = '3232';

UPDATE student
SET uitgeschreven = '2015-9-6'
WHERE studentnr = '4444';

UPDATE student
SET uitgeschreven = '2015-9-6'
WHERE studentnr = '4444';

UPDATE student
SET uitgeschreven = '2015-9-7'
WHERE studentnr = '2222';

INSERT INTO student(studentnr, roepnaam, voorletters, tussenvoegsels, achternaam, adres, postcode, woonplaats, geslacht, telefoon, geboortedatum, uitgeschreven, schoolgeld, betaald) VALUES
('7777', 'Mariken', 'M.', NULL, 'Mathijsen', 'Nijghstraat 12', '1314 NM', 'Lelystad', 'vrouw', '036-9876540', '1997-10-10', NULL, 500.0, 300.0);

UPDATE school.student SET telefoon = '06-1357890' WHERE studentnr = '7777';

UPDATE school.student SET uitgeschreven = NOW() WHERE studentnr = '7777';

CREATE TABLE opleiding (
	opleidingscode VARCHAR(3),
	naam VARCHAR(30),
    niveau CHAR(1),
    PRIMARY KEY(opleidingscode)
    )
    engine = InnoDB;
    
INSERT INTO opleiding(opleidingscode, naam, niveau)
VALUES ('AO', 'ApplicatieOntwikkeling', '4');

INSERT INTO opleiding(opleidingscode, naam, niveau)
VALUES ('MBI', 'Medewerker Beheer ICT', '3');

INSERT INTO opleiding(opleidingscode, naam, niveau)
VALUES ('MV', 'MediaVormgeving', '4');

INSERT INTO opleiding(opleidingscode, naam, niveau)
VALUES ('DT3', 'DeskTopPublishing', '3');

INSERT INTO opleiding(opleidingscode, naam, niveau)
VALUES ('DT2', 'DeskTopPublishing', '2');

INSERT INTO opleiding(opleidingscode, naam, niveau)
VALUES ('IB', 'ICT Beheerder', '4');

CREATE TABLE studentopleiding (
	studentnr VARCHAR(5),
    opleidingscode VARCHAR(3),
    startdatum DATE,
    einddatum DATE,
    diploma TINYINT(1) DEFAULT 0,
    CONSTRAINT FOREIGN KEY(studentnr) REFERENCES student(studentnr)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT FOREIGN KEY(opleidingscode) REFERENCES opleiding(opleidingscode)
    ON DELETE NO ACTION
    ON UPDATE NO action
    )
    ENGINE = InnoDB;
    
INSERT INTO studentopleiding (studentnr, opleidingscode, startdatum) VALUES 
('1111', 'AO', '2015-08-01');
INSERT INTO studentopleiding (studentnr, opleidingscode, startdatum) VALUES 
('2222', 'MV', '2015-08-01');
INSERT INTO studentopleiding (studentnr, opleidingscode, startdatum) VALUES 
('3333', 'DT3', '2015-08-01');
INSERT INTO studentopleiding (studentnr, opleidingscode, startdatum) VALUES 
('4444', 'DT2', '2015-08-01');
INSERT INTO studentopleiding (studentnr, opleidingscode, startdatum) VALUES 
('5555', 'MBI', '2015-08-01');
INSERT INTO studentopleiding (studentnr, opleidingscode, startdatum) VALUES 
('6666', 'IB', '2015-08-01');

INSERT INTO studentopleiding (studentnr, opleidingscode, startdatum) VALUES 
('7777', 'DT3', '2015-09-01');

SELECT * FROM school.student;
SELECT * FROM school.opleiding;
SELECT * FROM school.studentopleiding;