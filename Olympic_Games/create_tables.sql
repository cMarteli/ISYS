
/* queries.sql: SQL file for table creation in Assignment Olympics games */
-- create Country table
DROP DATABASE Olympics;
CREATE DATABASE Olympics;
USE Olympics;
CREATE TABLE Country(
	countryID VARCHAR(60) NOT NULL,
	ranking SMALLINT,
	totalMedals SMALLINT,
	PRIMARY KEY(countryID)
);
-- create Olympics table
CREATE TABLE Olympics(
	olympicsID CHAR(10) NOT NULL,
	yearHeld YEAR,
	city VARCHAR(50),
	season CHAR(2), -- can be Summer or Winter
	isPara BOOLEAN, -- true for Paralympics and false for not
	countryID VARCHAR(60),
	PRIMARY KEY(olympicsID),
	FOREIGN KEY(countryID) REFERENCES Country(countryID)
);

-- create Athlete table
CREATE TABLE Athlete(
	athleteID CHAR(6) NOT NULL,
	surname VARCHAR(12) NOT NULL,
	fullName VARCHAR(90) NOT NULL,
	discipline VARCHAR(60),
	country VARCHAR(60),
	PRIMARY KEY(athleteID),
	FOREIGN KEY(country) REFERENCES Country(countryID)
);

-- create Coach table
CREATE TABLE Coach(
	coachID  CHAR(6) NOT NULL,
	firstName VARCHAR(12),
	lastName VARCHAR(15) NOT NULL,
	country VARCHAR(60),
	PRIMARY KEY(coachID),
	FOREIGN KEY(country) REFERENCES Country(countryID)
);

-- create Event table
CREATE TABLE Event(
	eventID  CHAR(6) NOT NULL,
	eventDate DATE,
	eventTime TIME,
	gender CHAR(2),
	PRIMARY KEY(eventID)
);

-- create Medal table
CREATE TABLE Medal(
	medalID  CHAR(6) NOT NULL,
	denom CHAR(2),
	eventID  CHAR(6),
	country VARCHAR(60),
	PRIMARY KEY(medalID),
	FOREIGN KEY(eventID) REFERENCES Event(eventID)
);