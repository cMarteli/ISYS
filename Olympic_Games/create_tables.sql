
/* queries.sql: SQL file for table creation in Assignment Olympics games */
-- create Country table
#pager less -SFX
DROP DATABASE IF EXISTS Olympics;
CREATE DATABASE Olympics;
USE Olympics;
CREATE TABLE Country(
	countryID VARCHAR(60) NOT NULL,
	ranking SMALLINT,
	gold SMALLINT,
	silver SMALLINT,
	bronze SMALLINT,
	PRIMARY KEY(countryID)
);

-- create Discipline table
CREATE TABLE Discipline(
	disciplineID  VARCHAR(60) NOT NULL,
	maleCount SMALLINT,
	femaleCount SMALLINT,
	genderOrType VARCHAR(20),
	PRIMARY KEY(disciplineID)
);

-- create Athlete table
CREATE TABLE Athlete(
	athleteID CHAR(6) NOT NULL,
	surname VARCHAR(30) NOT NULL,
	givenNames VARCHAR(150),
	discipline VARCHAR(60),
	country VARCHAR(60) NOT NULL,
	PRIMARY KEY(athleteID),
	FOREIGN KEY(discipline) REFERENCES Discipline(disciplineID),
	FOREIGN KEY(country) REFERENCES Country(countryID)
);

-- create Coach table
CREATE TABLE Coach(
	coachID  CHAR(6) NOT NULL,
	surname VARCHAR(30) NOT NULL,
	givenNames VARCHAR(150),
	discipline VARCHAR(60),
	country VARCHAR(60) NOT NULL,
	PRIMARY KEY(coachID),
	FOREIGN KEY(discipline) REFERENCES Discipline(disciplineID),
	FOREIGN KEY(country) REFERENCES Country(countryID)
);

DROP PROCEDURE IF EXISTS show;
DELIMITER $$
CREATE PROCEDURE CopyTable(IN _mytable VARCHAR(64), _table_name VARCHAR(64))
BEGIN
    SET FOREIGN_KEY_CHECKS=0;
    SET @stmt = CONCAT('DROP TABLE IF EXISTS ',_table_name);
    PREPARE stmt1 FROM @stmt;
    EXECUTE stmt1;
    SET FOREIGN_KEY_CHECKS=1;
    SET @stmt = CONCAT('CREATE TABLE ',_table_name,' as select * from ', _mytable);
    PREPARE stmt1 FROM @stmt;
    EXECUTE stmt1;
    DEALLOCATE PREPARE stmt1;
END$$
DELIMITER ;

