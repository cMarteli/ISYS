#Prac02Commands
#Author: C Marteli 19598552 Created:02/08/2021

#connect
mysql -u me -p
#default password = myUserPassword
USE dswork;
SOURCE Prac02Tables;

#display current columns
SHOW COLUMNS FROM Students;
SHOW COLUMNS FROM Units;
SHOW COLUMNS FROM Enrolments;


#(sno, firstname, lastname, phoneno)
INSERT INTO Students VALUES(12345007, 'James', 'Bond', 0408007007);
INSERT INTO Students VALUES(12345227, 'Felix', 'Leiter', 0408007127);
INSERT INTO Students VALUES(12345117, 'Caio', 'Marteli', 19598552);
INSERT INTO Students VALUES(12345337, 'Lawrence', 'Fishburne', 800740054);
INSERT INTO Students VALUES(12345447, 'Gallileo', 'Gallilei', 0408005681);
INSERT INTO Students VALUES(12345557, 'Joe', 'Rogan', 0408007007);
#shows all tuples in students
SELECT * FROM Students;

INSERT INTO Units VALUES('ISYS1001', 'COMPUTING',  'Database Systems');
INSERT INTO Units VALUES('CNC2001', 'COMPUTING',  'Computer Communications');
INSERT INTO Units VALUES('DSA1001', 'COMPUTING',  'Data Structures and Algorithms');
INSERT INTO Units VALUES('OS2001', 'COMPUTING',  'Operating Systems');

SELECT * FROM Units;

#enrolling bond
INSERT INTO Enrolments VALUES('ISYS1001', '12345007', '2021', NULL, NULL);
INSERT INTO Enrolments VALUES('ISYS1001', '19598552', '2021', '85', 'A');
INSERT INTO Enrolments VALUES('ISYS1001', '12345557', '2021', '65', 'D');

INSERT INTO Enrolments VALUES('ISYS1001', '12345337', '2021', '60', 'C');
INSERT INTO Enrolments VALUES('CNC2001', '19598552', '2021', '75', 'B');
INSERT INTO Enrolments VALUES('DSA1001', '19598552', '2021', '85', 'A');
INSERT INTO Enrolments VALUES('OS2001', '19598552', '2021', '80', 'B');
INSERT INTO Enrolments VALUES('OS2001', '12345557', '2021', '65', 'C');

#modifying tuple
#UPDATE Enrolments SET grade = 'A' WHERE student = 19598552;

SELECT * FROM Enrolments;

#Retrieve first name and tel number from Students
SELECT firstname, phoneno FROM Students;

#Find unit name and department the unit is offered
SELECT unitName, dept FROM Units WHERE unitIndex = 'ISYS1001';

#codes all units
SELECT unitIndex FROM Units;

#Retrieve Units offered by 'COMPUTING'department
SELECT unitName FROM Units WHERE dept = 'COMPUTING';

#find student no, mark and grade WHERE mark>60.
SELECT student, mark FROM Enrolments WHERE mark>60;

SELECT student, mark FROM Enrolments WHERE mark>=66 AND mark<=85;

#modifying columns
UPDATE Units SET unitIndex = 'ISYS1020' WHERE unitName = 'Database Systems';

#remove James Bond
DELETE FROM Students WHERE sno = '12345007';

SELECT * FROM Students;

#remove Database Systems
DELETE FROM Units WHERE unitIndex = 'ISYS1020';
SELECT * FROM Units;
SELECT * FROM Enrolments;
#no effects on enrolments (tuples not linked)