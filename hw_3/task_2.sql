CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Employees
	(
		EmployeeID int NOT NULL auto_increment 
			PRIMARY KEY,
		FName nvarchar(15) NOT NULL,
		LName nvarchar(15) NOT NULL,
		MName nvarchar(15) NOT NULL,
		Salary double(7, 2) NOT NULL,
		PriorSalary double(7,2) NOT NULL,
		HireDate date NOT NULL,
		TerminationDate date NULL,
		ManagerEmpID int NULL
	);  
    
    CREATE TABLE Customers
	(
	CustomerNo int NOT NULL auto_increment
		PRIMARY KEY,
	FName nvarchar(15) NOT NULL,
	LName nvarchar(15) NOT NULL,
	MName nvarchar(15) NULL,
	Address1 nvarchar(50) NOT NULL,
	Address2 nvarchar(50) NULL,
	City nchar(10) NOT NULL,
	Phone char(12) NOT NULL UNIQUE,
	DateInSystem date NULL
	); 
    
    
    CREATE TABLE Products
(
	ProductID char(5) NOT NULL PRIMARY KEY,
	Description varchar(15),
	UnitPrice float(5,2) NOT NULL,
	Weight int NULL
);
    
    CREATE TABLE Orders
(
	OrderID int NOT NULL auto_increment PRIMARY KEY,
	OrderDate date NOT NULL,
	CustomerNo int,
	EmployeeID int,

	FOREIGN KEY(CustomerNo) REFERENCES Customers(CustomerNo),
	FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE OrderDetails
(
	OrderID int NOT NULL,
	LineItem int NOT NULL,
	ProductID char(5) NOT NULL,
	Qty int NOT NULL,

    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY(ProductID) REFERENCES Products(ProductID),
	PRIMARY KEY (OrderId, LineItem)
);

