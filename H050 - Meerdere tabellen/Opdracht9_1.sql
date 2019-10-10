CREATE TABLE opleiding (
	opleidingscode VARCHAR(3),
	naam VARCHAR(30),
    niveau CHAR(1),
    PRIMARY KEY(opleidingscode)
    )
    engine = InnoDB;
    
INSERT INTO opleiding(opleidingscode, naam, niveau)
VALUES ('AO', 'ApplicatieOntwikkeling', '4');

SELECT * FROM opleiding;