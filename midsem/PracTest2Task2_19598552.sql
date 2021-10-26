/* Created by: C Marteli ID:19598552 LAB: Monday 2PM */
/* Date Modified: 30/08/2021 */
#TASK 2

CREATE TABLE Dept
(
    deptno CHAR(16),
    deptBuilding VARCHAR(36),
    telephone CHAR(10),
    PRIMARY KEY(deptno)
);

CREATE TABLE Emp
(
	empno CHAR(5) NOT NULL,
    empDigit CHAR(1),
    firstName VARCHAR(15),
    lastname VARCHAR(15),
	salary DECIMAL(8,2),
	deptNo CHAR(16),
    PRIMARY KEY(empno),
    CONSTRAINT FK_deptNo FOREIGN KEY (deptNo) REFERENCES Dept (deptno)
);

-- Insert values to Dept table
INSERT INTO Dept VALUES
('A1000','Apple Computers HQ','0406335226');

-- Insert values to Emp table
INSERT INTO Emp VALUES
('00010','C','John','Smith',60750,'A1000');