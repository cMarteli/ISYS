/* Created by: C Marteli ID:19598552 LAB: Monday 2PM */
/* Date Modified: 30/08/2021 */

# TASK 1

# [1]
tee PracTest2_workings_19598552.out

# [2]
\. PracTest2Tables_1.sql
\. PracTest2Values_1.sql

# [3]
DESC Students;

# [4]
SELECT stuNo, phoneNo, courseCode
FROM Students WHERE phoneNo IS NULL;

# [5]
SELECT stuNo, CONCAT(address1, ", ", address2, ", ", address3) AS 'StreetAddress'
FROM Students WHERE courseCode NOT IN ('CS5SU', 'EG5DU', 'AG2PG');

# [6]
SELECT stuNo, firstName, lastName, courseCode
FROM Students WHERE courseCode LIKE ('CS%');

# [7]
SELECT firstName, lastName, courseCode, DATE_FORMAT(birthDate, '%W, %e %M %Y') AS 'Birthday'
FROM Students WHERE courseCode LIKE ('CS%');

# [8]
SELECT stuNo, firstName, startDate
FROM Students WHERE (DATEDIFF(SYSDATE(), startDate)/365.25 >= 4);

# [9a]
SELECT firstName, lastName, ROUND(fieldDeposit) AS 'OldDeposit', 
ROUND(fieldDeposit + (fieldDeposit*0.10)) AS 'NewDeposit'
FROM Students;

# [9b]
SELECT firstName, lastName, ROUND(fieldDeposit) AS 'OldDeposit', 
ROUND(fieldDeposit + (fieldDeposit*0.10)) AS 'NewDeposit'
FROM Students WHERE ROUND(fieldDeposit + (fieldDeposit*0.10)) > 2000;