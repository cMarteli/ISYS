
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