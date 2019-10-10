SELECT * FROM studentopleiding;

INSERT INTO studentopleiding (studentnr, opleidingscode, startdatum, einddatum)
VALUES
('1111', 'NB', '2015-02-30', NULL);

-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails 
-- (`school`.`studentopleiding`, CONSTRAINT `studentopleiding_ibfk_2` FOREIGN KEY (`opleidingscode`) REFERENCES `opleiding` (`opleidingscode`) ON DELETE NO ACTION ON UPDATE NO ACTION)
