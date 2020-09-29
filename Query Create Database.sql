CREATE DATABASE DenverWatch
USE DenverWatch
DROP DATABASE DenverWatch


--PositionID, PositionName, PositionGrade, Salary
CREATE TABLE StaffPosition(
PositionID CHAR(5) PRIMARY KEY CHECK (PositionId LIKE 'SP[0-9][0-9][0-9]'),
PositionName VARCHAR(50) NOT NULL,
PositionGrade INT NOT NULL,
Salary	NUMERIC(15,2) NOT NULL
)

--CustomerID, CustomerName, CustomerPhone, CustomerAddress, CustomerGender, CustomerEmail, CustomerDOB
CREATE TABLE Customer( 
CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE 'CS[0-9][0-9][0-9]'),
CustomerName VARCHAR(50) NOT NULL,
CustomerPhone VARCHAR(20) NOT NULL,
CustomerAddress VARCHAR(100) NOT NULL,
CustomerGender VARCHAR(10) CHECK(CustomerGender = 'Male' or CustomerGender = 'Female'),
CustomerEmail VARCHAR(50) NOT NULL,
CustomerDOB DATE NOT NULL
)

--VendorID, VendorName, VendorPhone, VendorAddress, VendorEmail
CREATE TABLE Vendor(
VendorID CHAR(5) PRIMARY KEY CHECK(VendorID LIKE 'VN[0-9][0-9][0-9]'),
VendorName VARCHAR(50) NOT NULL,
VendorPhone VARCHAR(13) NOT NULL,
VendorAddress VARCHAR(100) NOT NULL,
VendorEmail VARCHAR(50) NOT NULL
)

--TypeID, TypeName
CREATE TABLE WatchType(
TypeID CHAR(5) PRIMARY KEY CHECK(TypeID LIKE 'WT[0-9][0-9][0-9]'),
TypeName VARCHAR(50) NOT NULL
)

--StaffID, PositionID, StaffName, StaffEmail, StaffPhone, StaffDOB, StaffGender, StaffSalary
CREATE TABLE Staff(
StaffID CHAR(5) PRIMARY KEY CHECK(StaffID LIKE 'ST[0-9][0-9][0-9]'),
PositionID CHAR(5) REFERENCES StaffPosition(PositionID),
StaffName VARCHAR(50) NOT NULL,
StaffEmail VARCHAR(50) NOT NULL,
StaffPhone VARCHAR(20) NOT NULL,
StaffDOB DATE NOT NULL,
StaffGender VARCHAR(10) CHECK(StaffGender = 'Male' or StaffGender = 'Female'),
StaffSalary NUMERIC(15,2) NOT NULL
) 


--WatchID, TypeID, WatchSellPrice, WatchPurchasePrice
CREATE TABLE Watch(
WatchID CHAR(5) PRIMARY KEY CHECK(WatchID LIKE 'WH[0-9][0-9][0-9]'),
WatchName VARCHAR(50) NOT NULL,
TypeID CHAR (5)REFERENCES WatchType(TypeID),
WatchSellPrice NUMERIC(15,2) NOT NULL,
WatchPurchasePrice NUMERIC(15,2) NOT NULL
)

--PurchaseTransactionID, StaffID, VendorID, PurchaseDate
CREATE TABLE PurchaseTransaction(
PurchaseTransactionID CHAR(5) PRIMARY KEY CHECK(PurchaseTransactionID LIKE 'PH[0-9][0-9][0-9]'),
StaffID CHAR(5) REFERENCES Staff(StaffID) NOT NULL,
VendorID CHAR(5) REFERENCES Vendor(VendorID) NOT NULL,
PurchaseDate DATE NOT NULL
)

--SalesTransactionID, StaffID, CustomerID, SalesDate
CREATE TABLE SalesTransaction(
SalesTransactionID CHAR(5) PRIMARY KEY CHECK(SalesTransactionID LIKE 'SH[0-9][0-9][0-9]'),
StaffID CHAR(5) REFERENCES Staff(StaffID) NOT NULL,
CustomerID CHAR(5) REFERENCES Customer(CustomerID) NOT NULL,
SalesDate DATE NOT NULL
)

--PurchaseTransactionID, WatchID, Quantity
CREATE TABLE DetailPurchaseTransaction(
PurchaseTransactionID CHAR(5) REFERENCES PurchaseTransaction(PurchaseTransactionID),
WatchID CHAR(5) REFERENCES Watch(WatchID),
Quantity INT NOT NULL CHECK (Quantity >0)
)

--SalesTransactionID, WatchID, Quantity
CREATE TABLE DetailSalesTransaction(
SalesTransactionID CHAR(5) REFERENCES SalesTransaction(SalesTransactionID),
WatchID CHAR(5) REFERENCES Watch(WatchID) NOT NULL,
Quantity INT NOT NULL CHECK (Quantity >0)
)

