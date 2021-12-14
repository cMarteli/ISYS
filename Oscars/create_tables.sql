
/* queries.sql: SQL file for table creation in Assignment Oscars */
-- create Country table
#pager less -SFX
DROP DATABASE IF EXISTS Oscars;
CREATE DATABASE Oscars;
USE Oscars;

-- create Oscar table
CREATE TABLE Ceremony(
	oscarID  CHAR(6),	
	oscarYear YEAR NOT NULL,
	venue VARCHAR(30),
	PRIMARY KEY(oscarID)
);
-- create Film table
CREATE TABLE Film(
	filmName  VARCHAR(60),
	filmYear YEAR,
	CONSTRAINT filmID PRIMARY KEY(filmName, filmYear)
);

-- create Nominee table auto adds id
CREATE TABLE Nominee(
	nomID INT AUTO_INCREMENT,
	surname VARCHAR(30),
	givenNames VARCHAR(150),
	dob DATE,
	PRIMARY KEY(nomID)
);

-- create Nominations table need to add FKs
CREATE TABLE Nominations(
	oscarID  CHAR(6),
	nomID INT,
	category VARCHAR(60) NOT NULL,
	isWinner BOOLEAN NOT NULL,
	PRIMARY KEY(nomID, oscarID),
	FOREIGN KEY(nomID) REFERENCES Nominee(nomID) ON DELETE CASCADE,
	FOREIGN KEY(oscarID) REFERENCES Ceremony(oscarID) ON DELETE CASCADE
);