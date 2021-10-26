#USE dswork;
#creates tables

CREATE TABLE Students
(
	sno CHAR(8),
	firstname VARCHAR(12) ,
	lastname VARCHAR(15) ,
	phoneno CHAR(10)
);
CREATE TABLE Units
(
	unitIndex CHAR(8) ,
	dept CHAR(10) ,
	unitName VARCHAR(40)
);

CREATE TABLE Enrolments
(
	unit CHAR(8),
	student CHAR(8) ,
	year CHAR(4) ,
	mark INT(3) ,
	grade CHAR(1)
);