
/* createtables.sql: MySQL fle for table creation in Practical-3 */

-- create dept table --

 CREATE TABLE Dept
(
    deptno   CHAR(3),
    deptname VARCHAR(36)    NOT NULL,
    mgrno    CHAR(6),
    admrdept CHAR(3)        NOT NULL,
    PRIMARY KEY(deptno)
);

-- create emp table --

 CREATE TABLE Emp
 (
    empno CHAR(6)               NOT NULL,
    firstname VARCHAR(12)       NOT NULL,
    midinit	  CHAR(1) ,
    lastname  VARCHAR(15)       NOT NULL,
    workdept  CHAR(3) ,
    phoneno   CHAR(4) ,
    hiredate  DATE ,
    job	     CHAR(10) ,
    edlevel	  INT ,
    sex       CHAR(1) ,
    birthdate DATE ,
    salary    DECIMAL(8,2) ,
    bonus     DECIMAL(8,2) ,
    comm      DECIMAL(8,2) ,
    PRIMARY KEY(empno),
    CONSTRAINT FK_RealDept #make it so it must match existing dpt in Dept
    FOREIGN KEY (workdept) REFERENCES Dept (deptno)
);