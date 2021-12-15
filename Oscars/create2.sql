/* queries.sql: SQL file for table creation in Assignment Oscars */

# Creates DB
#pager less -SFX
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
	category VARCHAR(60),	
	subtype VARCHAR(30),
	PRIMARY KEY(category)
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

-- Nominations table need to add FKs
CREATE TABLE Nominations(
	id SMALLINT AUTO_INCREMENT,
	nomID CHAR(8),	
	lastName VARCHAR(20) NOT NULL,
	category VARCHAR(60),		
	isWinner BOOLEAN NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(nomID) REFERENCES Nominee(id),
	FOREIGN KEY(category) REFERENCES Category(category)
);

-- -- -- Fills ceremony table with data of the past 3 years
INSERT INTO Ceremony VALUES(90, 2019, "Dolby Theatre");
INSERT INTO Ceremony VALUES(91, 2020, "Dolby Theatre");
INSERT INTO Ceremony VALUES(92, 2021, "Dolby Theatre/Union Station");

INSERT INTO Category VALUES("ACTOR IN A LEADING ROLE", "Acting");
INSERT INTO Category VALUES("ACTOR IN A SUPPORTING ROLE", "Acting");
INSERT INTO Category VALUES("ACTRESS IN A LEADING ROLE", "Acting");
INSERT INTO Category VALUES("ACTRESS IN A SUPPORTING ROLE", "Acting");
INSERT INTO Category VALUES("DIRECTING", null);
INSERT INTO Category VALUES("FILM EDITING", null);
INSERT INTO Category VALUES("BEST PICTURE", null);

INSERT INTO Film VALUES("Pain and Glory", 2019, 92);
INSERT INTO Film VALUES("Once upon a Time...in Hollywood", 2019, 92);
INSERT INTO Film VALUES("Marriage Story", 2019, 92);
INSERT INTO Film VALUES("Joker", 2019, 92);
INSERT INTO Film VALUES("The Two Popes", 2019, 92);
INSERT INTO Film VALUES("A Beautiful Day in the Neighborhood", 2019, 92);
INSERT INTO Film VALUES("The Irishman", 2019, 92);
INSERT INTO Film VALUES("Harriet", 2019, 92);
INSERT INTO Film VALUES("Little Women", 2019, 92);
INSERT INTO Film VALUES("Bombshell", 2019, 92);
INSERT INTO Film VALUES("Judy", 2019, 92);
INSERT INTO Film VALUES("Richard Jewell", 2019, 92);
INSERT INTO Film VALUES("Jojo Rabbit", 2019, 92);
INSERT INTO Film VALUES("1917", 2019, 92);
INSERT INTO Film VALUES("Parasite", 2019, 92);
INSERT INTO Film VALUES("Ford v Ferrari", 2019, 92);