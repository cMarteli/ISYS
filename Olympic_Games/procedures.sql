#**********************************
# Author: Caio Marteli 19598552
# sql Script to load procedures
#**********************************

# THIS SECTION IS INCOMPLETE

#Create procedure to describe
CREATE PROCEDURE DCALL
AS
SELECT *
from Athlete;
DESC Country;
DESC Athlete;
DESC Coach;
DESC Discipline;
FROM Olympcs;


#Create procedure to describe
DROP PROCEDURE IF EXISTS showAll;
CREATE PROCEDURE showAll
BEGIN
	SELECT * FROM Country;
	SELECT * FROM Athlete;
	SELECT * FROM Coach;
	SELECT * FROM Discipline;	
END

DROP PROCEDURE IF EXISTS showAll;
CREATE PROCEDURE showAll
BEGIN
	SELECT *;
END


--- Used left outer join to display all students even with no hours
# [5]
SELECT Athlete.stuNo as "Student ID", s.firstName, s.lastName, sum(c.hours) as "TotalHrs", count(activityNo) as "Activity Count"
FROM Student as s
LEFT OUTER JOIN CommWork as c
ON s.stuNo = c.stuNo
GROUP BY 1,2,3;