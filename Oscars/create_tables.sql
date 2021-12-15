/* queries.sql: SQL file for table creation in Assignment Oscars */

# Creates DB
#pager less -SFX
DROP DATABASE IF EXISTS Oscars;
CREATE DATABASE Oscars;
USE Oscars;

# Creates tables

-- Oscar table
CREATE TABLE Ceremony(
	oscarID  CHAR(6),	
	oscarYear YEAR NOT NULL,
	venue VARCHAR(30),
	PRIMARY KEY(oscarID)
);
-- Film table
CREATE TABLE Film(
	filmName  VARCHAR(60),
	filmYear YEAR,
	CONSTRAINT filmID PRIMARY KEY(filmName, filmYear)
);

-- Nominee table auto adds id
CREATE TABLE Nominee(
	nomID INT AUTO_INCREMENT,
	surname VARCHAR(30),
	givenNames VARCHAR(150),
	dob DATE,
	PRIMARY KEY(nomID)
);

-- Nominations table need to add FKs
CREATE TABLE Nominations(
	oscarID  CHAR(6),
	nomID INT,
	category VARCHAR(60) NOT NULL,
	isWinner BOOLEAN NOT NULL,
	PRIMARY KEY(nomID, oscarID),
	FOREIGN KEY(nomID) REFERENCES Nominee(nomID) ON DELETE CASCADE,
	FOREIGN KEY(oscarID) REFERENCES Ceremony(oscarID) ON DELETE CASCADE
);

-- Fills ceremony table with data of the past 10 years
INSERT INTO Ceremony VALUES("84", 2012, "Dolby Theatre");
INSERT INTO Ceremony VALUES("85", 2013, "Dolby Theatre");
INSERT INTO Ceremony VALUES("86", 2014, "Dolby Theatre");
INSERT INTO Ceremony VALUES("87", 2015, "Dolby Theatre");
INSERT INTO Ceremony VALUES("88", 2016, "Dolby Theatre");
INSERT INTO Ceremony VALUES("89", 2017, "Dolby Theatre");
INSERT INTO Ceremony VALUES("90", 2018, "Dolby Theatre");
INSERT INTO Ceremony VALUES("91", 2019, "Dolby Theatre");
INSERT INTO Ceremony VALUES("92", 2020, "Dolby Theatre");
INSERT INTO Ceremony VALUES("93", 2021, "Dolby Theatre/Union Station");


INSERT INTO Film VALUES("A Better Life", 2011);