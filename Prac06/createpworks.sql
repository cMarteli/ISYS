DROP TABLE IF EXISTS Pworks;
CREATE TABLE Pworks(
empno 		CHAR(6),
projno 		CHAR(6),
hours 		SMALLINT,
PRIMARY KEY(empno,projno),
FOREIGN KEY(empno) REFERENCES Emp(empno) ON DELETE CASCADE,
FOREIGN KEY(projno) REFERENCES Proj(projno) ON DELETE CASCADE);


DROP TABLE IF EXISTS Athlete;
CREATE TABLE Athlete(
fullName VARCHAR(256),
noc VARCHAR(50),
discipline VARCHAR(256);
PRIMARY KEY(fullName);

DROP TABLE IF EXISTS Athlete;
CREATE TABLE Athlete(
    fullName VARCHAR(250)  NOT NULL,
	country   VARCHAR(20), 
	discipline VARCHAR(20),                        
	PRIMARY KEY(fullName)
);

"DROP TABLE IF EXISTS Athlete;"
"CREATE TABLE Athlete("
"fullName VARCHAR(250) NOT NULL,"
"country   VARCHAR(20),"
"discipline VARCHAR(20),"
"PRIMARY KEY(fullName) );"

LOAD DATA INFILE 'Athletes.csv' INTO TABLE Athlete;