# Created by: C Marteli ID:19598552 LAB: Monday 2PM
# Date Modified: 09/08/2021

# Task 1
# Q1
SHOW DATABASES;

# Q2
USE dswork;

CREATE TABLE Festival (
festivalID CHAR(4),
name VARCHAR(20) ,
location VARCHAR(12) ,
Date DATE ,
Count INT
);

# Q3
SHOW COLUMNS FROM Festival;

# Q4
INSERT INTO Festival VALUES('10', 'Street Arts 2021', NULL, NULL, NULL);
SELECT * FROM Festival;

# Q5
INSERT INTO Festival VALUES('101', 'NULL', 'Fremantle', '2021-11-12', 250);
SELECT * FROM Festival;

# Q6
INSERT INTO Festival VALUES('222', 'FireFest', 'Perth', '2021-08-16', 500);
SELECT * FROM Festival;

# Q7
UPDATE Festival SET Count = 350 WHERE festivalID = 101;
SELECT * FROM Festival;

# TASK 2

# Q1
# VARCHAR for firstName and secondName as they can vary
# CHAR for mobile numbers as it's not variable and not being used for calculations
# DECIMAL is best for fixed decimal points such as currency

# Q2
CREATE TABLE Artists (
artistCode INT,
firstName VARCHAR(20) ,
secondName VARCHAR(20) ,
telephone CHAR(10) ,
rate DECIMAL(5,2)
);

SHOW COLUMNS FROM Artists;

# Q3

INSERT INTO Artists VALUES(65, 'John', 'O''Brien', '0466253469', 500.00);
SELECT * FROM Artists;

# TASK 3

# Q1
SOURCE Venue.txt;
SHOW COLUMNS FROM Venue;
SELECT * FROM Venue;

# Q2
SELECT name, capacity FROM Venue WHERE capacity>250;

# Q3
DELETE FROM Venue WHERE city = 'Sand City';
SELECT * FROM Venue;