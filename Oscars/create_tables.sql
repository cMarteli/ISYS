/* create_tables.sql: SQL file for table creation in Assignment Oscars */
/*Author: C Marteli 19598552 Created: 15/12/2021*/

#turns on page scrolling
pager less -SFX
# Creates DB
DROP DATABASE IF EXISTS Oscars;
CREATE DATABASE Oscars;
USE Oscars;

# Creates tables

-- Oscar table
CREATE TABLE Ceremony(
	oscarID  SMALLINT,	
	oscarYear YEAR NOT NULL,
	venue VARCHAR(30),
	PRIMARY KEY(oscarID)
);

-- Category table
CREATE TABLE Category(
	catID VARCHAR(60),	
	subtype VARCHAR(30),
	PRIMARY KEY(catID)
);
-- Film table
CREATE TABLE Film(
	filmName  VARCHAR(60),
	filmYear YEAR,
	oscarID  SMALLINT,
	CONSTRAINT filmID PRIMARY KEY(filmName, filmYear),
	FOREIGN KEY(oscarID) REFERENCES Ceremony(oscarID) ON DELETE CASCADE
);

-- Nominee table
CREATE TABLE Nominee(
	id CHAR(8),
	firstName VARCHAR(20),
	lastName VARCHAR(20) NOT NULL,
	dob DATE,
	PRIMARY KEY(id)
);

-- Nominations table
CREATE TABLE Nominations(
	id SMALLINT AUTO_INCREMENT,
	nomID CHAR(8),	
	filmName VARCHAR(60) NOT NULL,
	catID VARCHAR(60),		
	isWinner BOOLEAN NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(nomID) REFERENCES Nominee(id) ON DELETE CASCADE,
	FOREIGN KEY(catID) REFERENCES Category(catID) ON DELETE CASCADE
);