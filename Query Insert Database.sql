--YANG TABLE STAFF tinggal tambahin positionID dan StaffSalary (IKUTIN TABLE STAFFPOSITION)


INSERT INTO StaffPosition VALUES
--PositionID, PositionName, PositionGrade,Salary
('SP001', 'Chairman', 10, 20000000),
('SP002', 'Finance Manager', 9, 15000000),
('SP003', 'Marketing Manager',8, 10000000),
('SP004', 'Marketing Division Head', 7, 8000000),
('SP005', 'Finance Division Head', 6, 6000000),
('SP006', 'Marketing Supervisor', 5, 5000000),
('SP007', 'Finance Supervisor', 4, 4000000),
('SP008', 'Senior Staff', 3, 2000000),
('SP009', 'Junior Staff',2, 1500000),
('SP010', 'Cashier', 1, 1000000)

INSERT INTO Staff VALUES
--StaffID, PositionID, StaffName, StaffEmail, StaffPhone, StaffDOB, StaffGender, StaffSalry
('ST001', 'SP001','Joni Sinaga', 'sinaga@gmail.com', '085208257747', '1984-06-14', 'Male', 20000000),
('ST002', 'SP002', 'Sendy Fajar', 'sendy@yahoo.com', '085783637728', '1985-02-09', 'Female',15000000),
('ST003', 'SP003','Amethyst Nalendra', 'amethyst@gmail.com', '085273839289', '1995-07-01', 'Female', 10000000),
('ST004', 'SP004', 'Iqbal Ramadhan', 'iqbal@yahoo.com', '085379273918', '1995-10-26', 'Male', 8000000),
('ST005', 'SP005','Mochamad Syaukani', 'syaukan@gmail.com', '085897254298', '1996-01-01', 'Male', 6000000),
('ST006', 'SP006','Afhandary', 'fhandry@yahoo.com', '085638393292', '1996-02-01', 'Female', 5000000),
('ST007', 'SP007','Palka Polar', 'alka77@gmail.com', '085634582906', '1986-02-20', 'Male', 4000000),
('ST008', 'SP008','Alfredo Antonius', 'fredtonius@yahoo.com', '085376289156', '1997-02-14', 'Male', 2000000),
('ST009', 'SP009', 'Andrew Parluhutan', 'parluhutan@gmail.com', '085987256371', '1990-10-28', 'Female', 1500000),
('ST010', 'SP010','Sutarjo Setiabudi', 'piana@yahoo.com', '085738393837', '1980-02-19', 'Female', 1000000)


INSERT INTO Customer VALUES
--CustomerID, CustomerName, CustomerPhone, CustomerAddress, CustomerGender, CustomerEmail, CustomerDOB
('CS001', 'Zainun Malik', '089823456781', 'Berlin Street no 114', 'Female', 'ZainunMalik@gmail.com' , '1993-01-12'),
('CS002', 'Dimas Putra', '085276189234', 'London Street no 23', 'Male', 'DimasPutra@yahoo.com' , '1993-11-13'),
('CS003', 'aisya nabila', '086763281278', 'Chapel Street no 114', 'Female', 'aisyanabila@gmail.com' , '1993-01-12'),
('CS004', 'ahmad fauzan', '085277812345', 'Berlin Street no 12', 'Male', 'ahmadfauzan@yahoo.com' , '1991-12-24'),
('CS005', 'Al ikhlas', '083526712345', 'Gangnam Street no 17', 'Female', 'Alikhlas@gmail.com', '1991-03-08'),
('CS006', 'albert jaya', '084563178632', 'Cheongnam Street no 667', 'Male', 'albertjaya@yahoo.com', '1994-03-22'),
('CS007', 'aldi somamang', '082426176243', 'Myeongdeong Street no 86', 'Male', 'aldisomamang@gmail.com', '1995-08-09'),
('CS008', 'tasya siti', '089862513415', 'Myeongdeong Street no 01', 'Female', 'tasyasiti@yahoo.com', '1995-08-25'),
('CS009', 'aulia chanda', '085627893412', 'Gangnam Street no 13', 'Male', 'auliachanda@gmail.com', '1996-05-27'),
('CS010', 'chandra jonevi', '085621789653', 'Cheongnam Street no 778', 'Male', 'chandrajonevi@yahoo.com', '1996-12-10')

INSERT INTO Vendor VALUES
--VendorID, VendorName, VendorPhone, VendorAddress, VendorEmail
('VN001', 'angel tesa', '085289736456', 'Beijing Street no 01', 'angeltesa@gmail.com'),
('VN002', 'christy valen', '0857638927634', 'Dihua Street no 33', 'christyvalen@yahoo.com'),
('VN003', 'vania intan', '082678197356', 'Nanjing Street no 77', 'vaniaintan@gmail.com'),
('VN004', 'Justin bernandes', '088923678907', 'Pingxi Street no 99', 'Justinbernandes@yahoo.com'),
('VN005', 'annisa arsila', '089835673876', 'Dihua Street no 55', 'annisaarsila@gmail.com'),
('VN006', 'annisa arsila', '088873908765', 'Beijing Street no 54', 'annisaarsila@yahoo.com'),
('VN007', 'anindito pur', '083467892087', 'Nanjing Street no 43', 'aninditopur@gmail.com'),
('VN008', 'muhammad handryan', '087489429479', 'Dihua Street no 79', 'muhammadhandryan@yahoo.com'),
('VN009', 'antoni anto', '083849498939', 'Beijing Street no 32', 'antonianto@gmail.com'),
('VN010', 'rendi anggara', '080490920942', 'NanjingStreet no 95', 'rendianggara@yahoo.com')
 
INSERT INTO WatchType VALUES 
--TypeID, TypeName
('WT001', 'Analog Watch '),
('WT002', 'Digital Watch'),
('WT003', 'Automatic Watch'),
('WT004', 'Chronograph Watch'),
('WT005', 'Diving Watch'),
('WT006', 'Dress Watch'),
('WT007', 'Quartz Watch'),
('WT008', 'Mechanical Watch'),
('WT009', 'Pilot Watch'),
('WT010', 'Field')
 
INSERT INTO Watch VALUES
--WatchID, WatchName, TypeID, WatchSellPrice, WatchPurchasePrice
('WH001', 'G-Shock ', 'WT001', 18000000000, 17000000000),
('WH002', 'Casio', 'WT002', 12000000000, 11000000000),
('WH003', 'Fossil', 'WT003', 14000000000, 13000000000),
('WH004', 'Daniel Wellington', 'WT004', 20000000000, 19000000000),
('WH005', 'Citizen', 'WT005', 12500000000, 1200000000),
('WH006', 'Victorinox Swiss Army', 'WT006', 16000000000, 1500000000),
('WH007', 'Starter', 'WT007', 17500000000, 1700000000),
('WH008', 'Alexandre Christie', 'WT008', 1400000000, 1300000000),
('WH009',  'Nixon', 'WT009', 1500000000, 1400000000),
('WH010', 'Focaccia', 'WT010', 1500000000, 1300000000),
('WH011', 'Timex', 'WT001', 1000000000, 900000000),
('WH012', 'Pumpernickel', 'WT002', 1005000000, 1400000000),
('WH013', 'Seiko', 'WT003', 1500000000, 1400000000),
('WH014', 'Police', 'WT004', 1500000000, 1300000000),
('WH015', 'Expedition', 'WT005', 1250000000, 1200000000)




INSERT INTO PurchaseTransaction VALUES
--PurchaseTransactionID, StaffID, VendorID, PurchaseDate
('PH001', 'ST001', 'VN005', '2018-01-03'),
('PH002', 'ST007', 'VN008', '2018-01-11'),
('PH003', 'ST008', 'VN007', '2018-01-16'),
('PH004', 'ST009', 'VN003', '2018-06-18'),
('PH005', 'ST002', 'VN005', '2018-06-20'),
('PH006', 'ST002', 'VN007', '2018-07-17'),
('PH007', 'ST003', 'VN009', '2018-07-19'),
('PH008', 'ST004', 'VN002', '2018-07-20'),
('PH009', 'ST006', 'VN004', '2018-07-23'),
('PH010', 'ST009', 'VN008', '2018-08-02'),
('PH011', 'ST005', 'VN001', '2018-08-05'),
('PH012', 'ST010', 'VN009', '2018-08-08'),
('PH013', 'ST007', 'VN010', '2018-08-09'),
('PH014', 'ST008', 'VN001', '2018-09-11'),
('PH015', 'ST010', 'VN003', '2018-09-15'),
('PH016', 'ST002', 'VN003', '2018-09-18'),
('PH017', 'ST003', 'VN009', '2018-09-20'),
('PH018', 'ST004', 'VN006', '2018-09-23'),
('PH019', 'ST005', 'VN003', '2018-09-25'),
('PH020', 'ST006', 'VN003', '2018-09-26'),
('PH021', 'ST007', 'VN007', '2018-09-29'),
('PH022', 'ST008', 'VN003', '2018-10-01'),
('PH023', 'ST008', 'VN002', '2018-10-06'),
('PH024', 'ST009', 'VN003', '2018-10-10'),
('PH025', 'ST010', 'VN010', '2018-10-15')


INSERT INTO SalesTransaction VALUES
--SalesTransactionID, StaffID, CustomerID, SalesDate
('SH001', 'ST001', 'CS003', '2018-01-10'),
('SH002', 'ST002', 'CS005', '2018-01-12'),
('SH003', 'ST004', 'CS006', '2018-01-15'),
('SH004', 'ST007', 'CS007', '2018-04-19'),
('SH005', 'ST009', 'CS008', '2018-05-23'),
('SH006', 'ST001', 'CS009', '2018-05-24'),
('SH007', 'ST008', 'CS002', '2018-05-27'),
('SH008', 'ST003', 'CS002', '2018-05-29'),
('SH009', 'ST004', 'CS001', '2018-06-05'),
('SH010', 'ST007', 'CS003', '2018-06-07'),
('SH011', 'ST008', 'CS007', '2018-06-12'),
('SH012', 'ST009', 'CS005', '2018-06-17'),
('SH013', 'ST003', 'CS001', '2018-07-13'),
('SH014', 'ST005', 'CS010', '2018-07-17'),
('SH015', 'ST006', 'CS005', '2018-07-20'),
('SH016', 'ST002', 'CS003', '2018-09-18'),
('SH017', 'ST003', 'CS003', '2018-09-20'),
('SH018', 'ST004', 'CS008', '2018-09-23'),
('SH019', 'ST005', 'CS009', '2018-09-25'),
('SH020', 'ST006', 'CS001', '2018-09-26'),
('SH021', 'ST007', 'CS004', '2018-09-29'),
('SH022', 'ST008', 'CS006', '2018-10-01'),
('SH023', 'ST008', 'CS005', '2018-10-06'),
('SH024', 'ST009', 'CS007', '2018-10-10'),
('SH025', 'ST010', 'CS004', '2018-10-15')

INSERT INTO DetailSalesTransaction VALUES
--SalesTransactionID, WatchID, Quantity
('SH001', 'WH004', '1'),
('SH002', 'WH013', '7'),
('SH003', 'WH002', '5'),
('SH004', 'WH011', '1'),
('SH005', 'WH008', '1'),
('SH006', 'WH015', '2'),
('SH007', 'WH008', '9'),
('SH008', 'WH007', '1'),
('SH009', 'WH014', '5'),
('SH010', 'WH015', '1'),
('SH011', 'WH015', '4'),
('SH012', 'WH001', '2'),
('SH013', 'WH014', '8'),
('SH014', 'WH013', '6'),
('SH015', 'WH011', '8'),
('SH016', 'WH002', '9'),
('SH017', 'WH005', '2'),
('SH018', 'WH007', '1'),
('SH019', 'WH010', '4'),
('SH020', 'WH011', '6'),
('SH021', 'WH009', '3'),
('SH022', 'WH003', '8'),
('SH023', 'WH005', '2'),
('SH024', 'WH002', '1'),
('SH025', 'WH006', '7')

INSERT INTO DetailPurchaseTransaction VALUES
--PurchaseTransactionID, WatchID, Quantity
('PH001', 'WH001', '2'),
('PH002', 'WH002', '10'),
('PH003', 'WH011', '6'),
('PH004', 'WH004', '17'),
('PH011', 'WH006', '14'),
('PH005', 'WH007', '15'),
('PH006', 'WH009', '12'),
('PH007', 'WH012', '7'),
('PH008', 'WH015', '2'),
('PH009', 'WH009', '16'),
('PH010', 'WH007', '3'),
('PH012', 'WH008', '7'),
('PH013', 'WH004', '1'),
('PH014', 'WH003', '9'),
('PH015', 'WH002', '2'),
('PH016', 'WH001', '8'),
('PH017', 'WH012', '7'),
('PH018', 'WH013', '4'),
('PH019', 'WH014', '8'),
('PH020', 'WH010', '10'),
('PH021', 'WH003', '6'),
('PH022', 'WH003', '46'),
('PH023', 'WH003', '17'),
('PH024', 'WH003', '11'),
('PH025', 'WH004', '14')