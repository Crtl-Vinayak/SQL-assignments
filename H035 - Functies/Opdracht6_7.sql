SELECT * FROM student;

UPDATE `school`.`student` SET `tussenvoegsels`='van der', `achternaam`='Tol' WHERE `studentnr`='4444';
UPDATE `school`.`student` SET `tussenvoegsels`='C de', `achternaam`='Bruin' WHERE `studentnr`='5555';
UPDATE `school`.`student` SET `tussenvoegsels`='A de ', `achternaam`='Hoed' WHERE `studentnr`='6666';

SELECT tussenvoegsels FROM student WHERE tussenvoegsels IS NOT NULL;