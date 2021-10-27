#Prac03Commands
#Author: C Marteli 19598552 Created:29/08/2021
# tee "FileName" OR \t "FileName" //Creates log file
# \. script.sql  --- runs sql script
# pager less -SFX --- to scroll to side
# DESC tableName; --- describe
# \W --- Toggle Show warnings

# [01]
# Display last name, dept and salary of all with >= 100k a year

SELECT lastname, workdept, salary FROM Emp WHERE salary>=100000.00;

# [02]
# Last name, first name and DOB where salary < 90k

SELECT lastname, firstname, birthdate FROM Emp WHERE salary<90000.00;

# [03]
# Show info from all dept that have managers employee number as NULL
# NOTE! For NULL use "IS" instead of "="

SELECT * FROM Dept WHERE mgrno IS NULL;

# [04]
# employee num, lastname, dpt, MOB of Emp WHERE dpt is between D01 and E01 (inclusive)
# BETWEEN is inclusive in SQL

SELECT empno, lastname, workdept, phoneno FROM Emp WHERE workdept BETWEEN 'D01' AND 'E01';

# [05]
# info from deptname containing string "Service" 

SELECT * FROM Dept WHERE deptname LIKE '%Service%';
SELECT * FROM Dept WHERE deptname LIKE '%service%';

# No difference between the two outputs

# [06]
# emp no, last name and work dept where dpt is d21 and salary under 60k(inclusive)

SELECT empno, lastname, workdept FROM Emp WHERE workdept = 'D21' AND salary<=60000;

# [07]
# For each Emp display name and job. display names under column "name"

SELECT CONCAT(firstname, " ", midinit, " ", lastname) AS 'Name', job 
FROM Emp;

# [08]
# Get names and DOB of all designers

SELECT CONCAT(firstname, " ", midinit, " ", lastname) AS 'Name', 
DATE_FORMAT(birthdate, '%W, %e %M %Y') AS 'Birthday'
FROM Emp WHERE job LIKE '%designer%';

# [09]
# Emp where dpt = B01, C01, D11 and E21 showing lastname, dept and monthly salary 
# (whole dollars only).

SELECT lastname, workdept, ROUND(salary/12) AS 'Salary(Monthly)' 
FROM Emp
WHERE workdept = 'BO1' OR workdept = 'C01' OR workdept = 'D11' OR workdept = 'E21';

# [10]
# Last name, dept and weekly salary(/52.1786, %.2) of emps in depts B01, C01, E21

SELECT lastname, workdept, ROUND(salary/52.1786,2) AS 'Salary(Weekly)'
FROM Emp
WHERE workdept = 'BO1' OR workdept = 'C01' OR workdept = 'E21';

# [11]
# empno, first name, DOB(day numeric, month full) and dpt 
# where dept = B01, C01, D11, E21

SELECT empno, firstname, DATE_FORMAT(birthdate, '%e %M') AS Birthday 
FROM Emp
WHERE workdept = 'BO1' OR workdept = 'C01' OR workdept = 'D11' OR workdept = 'E21';

# [12]
# select empno, firstname, lastname, workdept, total(salary+bonus+comm) AS Total Income
# where dept = B01, C01 and E21

SELECT empno, firstname, lastname, workdept, ROUND(salary+bonus+comm) AS 'Total Income'
FROM Emp
WHERE workdept = 'BO1' OR workdept = 'C01' OR workdept = 'E21';

# [13]
# select lastname, age

SELECT lastname, ROUND(DATEDIFF(SYSDATE(), birthdate)/365.25) AS 'Age'
FROM Emp;

# Extra notes
# Change column name
ALTER TABLE Emp
RENAME COLUMN workdept TO deptno;

# Change key to foreign key
ALTER TABLE Emp
ADD FOREIGN KEY (workdept) REFERENCES Dept (deptno);

# Change key to foreign key w/ constraint
ALTER TABLE Emp
ADD CONSTRAINT FK_constrName FOREIGN KEY (workdept) REFERENCES Dept (deptno);

#add unique constraint, NOTE! A primary key is already unique
ALTER TABLE Dept
ADD UNIQUE (deptname);

# removing duplicates, use DISTINCT
SELECT DISTINCT lastname FROM emp;
