# Capgemini
CREATE TABLE Employeeinfo
(
EmpID int primary key,
EmpFname varchar(255),
EmpLname varchar(255),
Department varchar(255),
Project varchar(255),
Address varchar(255),
DOB int,
Gender varchar(255)
);

INSERT INTO Employeeinfo VALUES(1,'sanjay','mehar','HR','p1','Hyderabad(HYD)','01/12/1976','M ');
INSERT INTO Employeeinfo VALUES(2,'Ananya','Mishra','Admin','P2','Delhi(DEL)','02/05/1968','F');
INSERT INTO Employeeinfo VALUES(3,'Rohan','Diwan','Account','P3','Mumbai(BOM)','01/01/1980','M');
INSERT INTO Employeeinfo VALUES(4,'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','02/05/1992','F');
INSERT INTO Employeeinfo VALUES(5,'Ankit','Kapoor','Admin','P2','Delhi(DEL)','03/07/1994','M');

SELECT * FROM EmployeeInfo WHERE EmpFname LIKE 'S%';

CREATE TABLE Employeeposition(
EmpID int,
EmpPosition text not null,
DateOfJoining int,
Salary int
);

INSERT INTO Employeeposition VALUES(1,'Manager','01/05/2022','500000');
INSERT INTO Employeeposition VALUES(2,'Executive','02/05/2022','75000');
INSERT INTO Employeeposition VALUES(3,'Manager','01/05/2022','90000');
INSERT INTO Employeeposition VALUES(2,'Lead','02/05/2022','85000');
INSERT INTO Employeeposition VALUES(1,'Executive','01/05/2022','300000');

SELECT * FROM EmployeePosition WHERE Salary BETWEEN '50000' AND '100000';
