CREATE DATABASE MyJoinsDB;

USE MyJoinsDB;

CREATE TABLE Employees

  (EmployeeID int NOT NULL,
   FName nvarchar(15) NOT NULL,
   LName nvarchar(15) NOT NULL,
   phone  nvarchar(15) NOT NULL
   );
   
   ALTER TABLE Employees ADD 
	CONSTRAINT PK_Employees PRIMARY KEY(EmployeeID) ;

   
  CREATE TABLE Positions

  (EmployeeID int NOT NULL,
   WTitle varchar(60) NOT NULL,
   salary int NOT NULL
   ); 
   
   ALTER TABLE Positions ADD 
	CONSTRAINT PK_Positions PRIMARY KEY(EmployeeID) ;
   
   
    CREATE TABLE Personal

  (EmployeeID int NOT NULL,
  Family_status varchar(25) NOT NULL,
   Birthday date NOT NULL,
   Address nvarchar(45) NOT NULL
   ); 
   
   ALTER TABLE Personal ADD 
	CONSTRAINT PK_Personal PRIMARY KEY(EmployeeID) ;
   
   
   INSERT Employees
(EmployeeID, FName,  LName,  phone )
VALUES
(1, 'Самойлов', 'Петро', '09945635475'),
(2,'Иван', 'Иванович',   '0998764523'),
(3,'Петр', 'Григорьевич',  '0986764312'),
(4,'Светлана', 'Олеговна', '0967658743'),
(5,'Светлана', 'Олеговна', '0967658743'),
(6,'Светлана', 'Олеговна', '0967658743');

Insert Positions 
(EmployeeID, WTitle, salary)
values
(1, 'Головний Директор', 45000),
(2, 'Менеджер', 32000 ),
(3, 'Менеджер', 28000),
(4, 'Робочий 1', 12000),
(5, 'Робочий 2', 12000),
(6, 'Робочий 3', 10000);


Insert Personal
(EmployeeID, Family_status, Birthday,  Address )
VALUES
(1, 'Married', '1978-09-01', 'Big Sr., 11'),
(2, 'Married', '1989-02-23', 'Mogdig Sr., 18/45'),
(3, 'Not Married', '1993-12-27', 'WillDale Sr., 1/87'),
(4, 'Married', '1992-12-14', 'Noterda Sr., 18/45'),
(5, 'Married', '1989-02-23', 'Bodgr Sr., 18/45'),
(6, 'Not Married', '1995-05-29', 'Winnie Sr., 18/45');



SELECT Employees.phone, Personal.Address from Employees
INNER JOIN Personal on Employees.EmployeeID = Personal.EmployeeID;

SELECT Personal.Family_status, Employees.phone from Personal
inner join Employees on Personal.EmployeeID = Employees.EmployeeID
where Family_status in (SELECT Family_status from Personal where Family_status =   'Not Married');

SELECT Positions.WTitle, Personal.Birthday, Employees.phone from Positions
INNER JOIN Personal on Positions.EmployeeID = Personal.EmployeeID
Inner join Employees on Personal.EmployeeID = Positions.EmployeeID
where WTitle in (SELECT WTitle from Positions  where  WTitle = 'Менеджер' );


select address from Personal;


SELECT * FROM Employees;
SELECT * FROM Positions ;
SELECT * FROM Personal;

   
Drop table  Employees;
Drop table  Positions ;
Drop table Personal;
   
   
   