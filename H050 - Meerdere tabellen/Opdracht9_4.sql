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

SELECT * FROM studentopleiding;