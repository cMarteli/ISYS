
/* queries.sql: SQL file for table creation in Assignment Olympics games */

-- create Olympics table
DROP TABLE IF EXISTS Olympics;
 CREATE TABLE Olympics(
	 olympicsID CHAR(10),
	 yearHeld INT,
	 city VARCHAR(50), 
	 season CHAR(2), -- can be Summer or Winter
	 isPara BOOLEAN, -- true for Paralympics and false for not
	 countryID VARCHAR(60) FOREIGN KEY,
	 PRIMARY KEY(olympicsID)
);
-- create Country table
DROP TABLE IF EXISTS Country;
 CREATE TABLE Country(
	countryID VARCHAR(60),
    playerCount INT NOT NULL,
    ranking VARCHAR(15),
	olympicsID | CHAR(6) FOREIGN KEY,
	PRIMARY KEY(countryID)
);

-- create Athlete table
 DROP TABLE IF EXISTS Athlete;
 CREATE TABLE Athlete(
	athleteID CHAR(6),
    firstName VARCHAR(12),
    lastName VARCHAR(15) NOT NULL,	
	gender CHAR(2) NOT NULL,
	birthDate DATE,
	country VARCHAR(56) FOREIGN KEY,
	PRIMARY KEY(athleteID)
);

-- create Coach table
 DROP TABLE IF EXISTS Coach;
 CREATE TABLE Coach(
	coachID  CHAR(6),
    firstName VARCHAR(12),
    lastName VARCHAR(15) NOT NULL,
	country VARCHAR(56) FOREIGN KEY,
	PRIMARY KEY(coachID)
);

-- create Event table
 DROP TABLE IF EXISTS Event;
 CREATE TABLE Event(
	eventID  CHAR(6),
	eventDate DATE,
	eventTime TIME,	
	gender CHAR(2) FOREIGN KEY,
	PRIMARY KEY(eventID)
);

-- create Medal table
 DROP TABLE IF EXISTS Medal;
 CREATE TABLE Medal(
	medalID  CHAR(6),
    denom CHAR(2),	
    eventID  CHAR(6) FOREIGN KEY,
	country VARCHAR(56) FOREIGN KEY,
	PRIMARY KEY(medalID)
);

-- create Wins table possible medal table?
 DROP TABLE IF EXISTS Medals;
 CREATE TABLE Medals(
	medalID  CHAR(6),
    denom CHAR(2),	
    eventID  CHAR(6) FOREIGN KEY,
	country VARCHAR(56) FOREIGN KEY,
	PRIMARY KEY(medalID)
);