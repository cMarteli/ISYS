/* Created by: C Marteli ID:19598552 */
/* Date Modified: 22/09/2021 */

--- TASK 1

# [1]
tee PracTest3_workings_19598552.out

# [2]
USE dswork;
\. pracTest3Tables_1.sql
\. pracTest3Values_1.sql

# [3]
SHOW tables;
DESC Faculty;
DESC Student;
DESC Activity;
DESC CommWork;


--- TASK 2
# [1]
SELECT s.firstName, s.lastName, a.activityNo, a.activityName
FROM Student as s
INNER JOIN Activity as a 
ON s.stuNo = a.leader;

# [2]
SELECT f.facultyCode, f.facultyName, a.activityNo, a.activityName
FROM Faculty as f
LEFT OUTER JOIN Activity as a
ON a.facultyCode = f.facultyCode;

# [3]
SELECT s1.stuNo, s1.firstName, s1.lastName, s1.commRate
FROM Student s1 JOIN Student s2 ON s1.commRate>s2.commRate
WHERE s2.firstName LIKE "Heather" AND s2.lastName LIKE "Nicholls";

# [4]
SELECT f.facultyName, sum(a.estCost) as "estCost", AVG(a.estCost) AS "avgCost", count(a.activityNo) as "Activity Count"
FROM Activity as a
NATURAL JOIN Faculty as f
GROUP BY 1
ORDER BY estCost DESC;
--- Used left outer join to display all students even with no hours
# [5]
SELECT s.stuNo as "Student ID", s.firstName, s.lastName, sum(c.hours) as "TotalHrs", count(activityNo) as "Activity Count"
FROM Student as s
LEFT OUTER JOIN CommWork as c
ON s.stuNo = c.stuNo
GROUP BY 1,2,3;