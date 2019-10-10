CREATE TABLE student (
	studentnr VARCHAR(5),
	roepnaam VARCHAR(10),
	voorletters VARCHAR(10),
	tussenvoegsels VARCHAR(8) ,
	achternaam VARCHAR(25),
	adres VARCHAR(25),
	postcode VARCHAR(7),
	woonplaats VARCHAR(25),
	geslacht CHAR(1),
	telefoon VARCHAR(11),
	geboortedatum DATE,
	uitgeschreven DATE,
	schoolgeld DECIMAL(6,2),
	betaald DECIMAL(6,2),
	PRIMARY KEY(studentnr)
) engine = innodb;

DROP TABLE student;

SELECT * FROM student;