# Prac06Commands
# Author: C Marteli 19598552 Created: 22/09/2021
# tee "FileName" OR \t "FileName" //Creates log file
# \. script.sql  --- runs sql script
# pager less -SFX --- to scroll to side
# DESC tableName; --- describe
# \W --- Toggle Show warnings

tee Prac06Workings.out
pager less -SFX

#Q5
CREATE DATABASE company;
USE company;

#Q6
SOURCE rebuild.sql;

#Q7
SHOW TABLES;

DESC Dept;
SELECT * FROM Dept;

DESC Emp;
SELECT * FROM Emp;

DESC Proj;
SELECT * FROM Proj;

DESC Pworks;
SELECT * FROM Pworks;

-- TASK 3
-- SELECT table1.varsToDisplay, table1.varsToDisplay2, etc
-- FROM table1 
-- INNER JOIN table2
-- ON table1.varToUnite = table2.otherVarToUnite;

-- Key words
-- <Relation1> JOIN <Relation2> ON <Condition> (THETA JOIN)
-- INNER JOIN (overlaping only)
-- LEFT OUTER JOIN (nulls on right)
-- RIGHT OUTER JOIN (nulls on left)
-- NATURAL JOIN

#Q2
SELECT e.firstname, e.lastname, e.job, d.mgrno AS "Mngr Dept No.", d.deptname AS "Dept Name"
FROM Emp AS e 
INNER JOIN Dept AS d
ON e.job = "Manager";

#Q3
SELECT d.deptno, d.deptname AS "Dept Name", e.firstname, e.lastname, e.job
FROM Emp AS e 
RIGHT OUTER JOIN Dept AS d
ON e.job = "Manager";

#Q4
-- Use  a  join  query  to  display  the  last  name,  job  and  education  level  of  all 
-- employees who have at least the education level of the employee whose job 
-- description is ‘Pres’. 
SELECT lastname, job, edlevel
FROM Emp
GROUP BY lastname, job, edlevel
HAVING edlevel >= 18
ORDER BY edlevel DESC;

#Q5
--- Show the minimum salary, maximum salary and the number of employees in 
--- the job category for each job. 
SELECT job, MIN(salary) AS "minSal", MAX(salary) AS "maxSal", count(*)
FROM Emp 
GROUP BY job;

#Q6 // HAVING must be AT BOTTOM
SELECT workdept, AVG(salary) AS "avgSal", count(*) AS "NumOfEmps"
FROM Emp
GROUP BY workdept
HAVING COUNT(*) > 5;

#Q7
--- Assuming work week is 
SELECT e.empno, e.lastname, e.salary, 
	ROUND(DATEDIFF(p.prendate, p.prstdate)) AS "TotalHrs"
FROM Emp AS e
INNER JOIN Proj AS p
ON e.empno = p.respemp;

#8 may be wrong
SELECT e.empno, e.lastname, e.salary, 
	ROUND(DATEDIFF(p.prendate, p.prstdate)) AS "TotalHrs", count(*)
FROM Emp AS e
INNER JOIN Proj AS p
ON e.empno = p.respemp
GROUP BY p.projno;