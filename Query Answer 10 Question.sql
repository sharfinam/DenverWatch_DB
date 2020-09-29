--1
SELECT	StaffName,
		PositionName,		
		[Total Sales] = CAST(COUNT(SalesTransactionID) AS VARCHAR) + 'Transaction(s)'

FROM	Staff s JOIN StaffPosition sp ON s.PositionID = sp.PositionID 
		JOIN SalesTransaction st ON s.StaffID = st.StaffID

WHERE	PositionName LIKE '%Marketing%' AND
		PositionGrade BETWEEN 1 AND 10
GROUP BY
	StaffName, 
	PositionName

--2 
SELECT	[SalesID] = st.SalesTransactionID,
		SalesDate,
		WatchName,
		[Total Price] = 'IDR' + CAST(SUM(WatchSellPrice * Quantity) AS VARCHAR)

FROM	SalesTransaction st JOIN DetailSalesTransaction dst ON st.SalesTransactionID=dst.SalesTransactionID
		JOIN Watch w ON dst.WatchID=w.WatchID

WHERE	st.SalesTransactionID LIKE ('SH004') AND
		WatchName LIKE '% % %' 
GROUP BY
	st.SalesTransactionID,
	SalesDate,
	WatchName

--3
SELECT	StaffName,
		[SalesID] =st.SalesTransactionID,
		[Transaction Date] = CONVERT(VARCHAR,SalesDate,107),
		[Variance of Watch] = SUM(Quantity)

FROM	Staff s JOIN SalesTransaction st ON s.StaffID=st.StaffID
		JOIN DetailSalesTransaction dst ON st.SalesTransactionID=dst.SalesTransactionID

WHERE	Quantity>2 AND
		LEN(StaffName)>1

GROUP BY
	StaffName,
	st.SalesTransactionID,
	SalesDate

--4
SELECT	VendorName,
		[PurchaseId]=pt.PurchaseTransactionID,
		[Total Transaction] = COUNT(pt.PurchaseTransactionID),
		[Transaction Date] = CONVERT(VARCHAR,PurchaseDate,106)

FROM	Vendor v JOIN PurchaseTransaction pt ON v.VendorID=pt.VendorID
		JOIN DetailPurchaseTransaction dpt ON pt.PurchaseTransactionID=dpt.PurchaseTransactionID
		JOIN Watch w ON dpt.WatchID=w.WatchID

WHERE	(WatchPurchasePrice * Quantity) > 15000000000 AND
		YEAR(PurchaseDate) =2018
GROUP BY
	VendorName,
	pt.PurchaseTransactionID,
	PurchaseDate

--5
SELECT	[SalesId] = 'Transaction no.' + RIGHT(SalesTransactionID,3),
		StaffName,
		PositionName

FROM	SalesTransaction st JOIN Staff s ON st.StaffID=s.StaffID
		JOIN StaffPosition sp ON s.PositionID=sp.PositionID,
		(
		SELECT
			[AVG] = AVG(StaffSalary)
		FROM
			Staff
		WHERE
			YEAR(StaffDOB) <= 1990
		) AS AVERAGE

WHERE	StaffSalary>AVERAGE.AVG
GROUP BY
	SalesTransactionID,
	StaffName,
	PositionName

--6
SELECT	StaffName,
		[Staff Phone] = '+12-'+SUBSTRING(StaffPhone, 3, LEN(StaffPhone)),
		[Purchase Date] = CONVERT(VARCHAR,PurchaseDate,107) 

FROM	Staff s JOIN PurchaseTransaction pt ON s.StaffID=pt.StaffID
		JOIN DetailPurchaseTransaction dpt ON pt.PurchaseTransactionID=dpt.PurchaseTransactionID,
		(
		SELECT
			[MIN]=MIN(Quantity)
		FROM
			DetailPurchaseTransaction dpt JOIN PurchaseTransaction pt 
			ON dpt.PurchaseTransactionID=pt.PurchaseTransactionID
		WHERE
			MONTH(PurchaseDate) = 1
		) AS MINIMAL

WHERE	Quantity>MINIMAL.min

--7
SELECT
	pt.PurchaseTransactionID,
	[Staff First Name] = SUBSTRING(StaffName,1,CHARINDEX(' ',StaffName,1)),
	[Total Quantity] = SUM(Quantity)
FROM
	PurchaseTransaction pt JOIN Staff s ON pt.StaffID=s.StaffID
	JOIN DetailPurchaseTransaction dpt ON pt.PurchaseTransactionID=dpt.PurchaseTransactionID
	JOIN Watch w ON dpt.WatchID=w.WatchID,
	(
		SELECT
			[AVG]=AVG(WatchPurchasePrice)
		FROM
			Watch
	) AS AVERAGE
WHERE
	WatchPurchasePrice<AVERAGE.AVG AND
	Quantity BETWEEN 10 AND 30
GROUP BY
	pt.PurchaseTransactionID,
	StaffName

--8
SELECT
	[Customer Name] = UPPER(CustomerName),
	[Customer Phone] = '+62'+SUBSTRING(CustomerPhone, 3, LEN(CustomerPhone)),
	[Total Price] = 'IDR' + CAST(SUM(Quantity * WatchSellPrice) AS VARCHAR)
FROM
	Customer c JOIN SalesTransaction st ON c.CustomerID=st.CustomerID
	JOIN DetailSalesTransaction dst ON st.SalesTransactionID=dst.SalesTransactionID 
	JOIN Watch w ON dst.WatchID=w.WatchID,
	(
		SELECT
			[AVG]=AVG(WatchSellPrice)
		FROM
			Watch
	) AS AVERAGE
WHERE
	WatchSellPrice>AVERAGE.avg AND
	LEN(CustomerName)>=3
GROUP BY
	CustomerName,
	CustomerPhone

--9
CREATE VIEW CustomerQuantityViewer AS
SELECT	[CustomerId] = REPLACE(c.CustomerId,LEFT(c.CustomerId,2),'Customer'),
		[Customer Name] = CustomerName,
		CustomerEmail,
		[Maximum Quantity] = MAX(Quantity),
		[Minimum Quantity] = MIN(Quantity)

FROM	Customer c JOIN SalesTransaction st ON c.CustomerID=st.CustomerID
		JOIN DetailSalesTransaction dst ON st.SalesTransactionID=dst.SalesTransactionID

WHERE	CustomerGender LIKE 'Male'
GROUP BY
	c.CustomerID,
	CustomerName,
	CustomerEmail

HAVING
	MIN(Quantity)>2

--10
CREATE VIEW VendorPurchaseViewer AS
SELECT	v.VendorID,
		[Vendor Name] = UPPER(VendorName),
		[Total Purchase] = 'IDR' + CAST(SUM(Quantity * WatchPurchasePrice) AS VARCHAR),
		[Total Transaction] = COUNT(pt.PurchaseTransactionID)	
FROM	Vendor v JOIN PurchaseTransaction pt ON v.VendorID=pt.VendorID
		JOIN DetailPurchaseTransaction dpt ON pt.PurchaseTransactionID=dpt.PurchaseTransactionID
		JOIN Watch w ON dpt.WatchID=w.WatchID
	
GROUP BY VendorName, v.VendorID
HAVING
	SUM(Quantity * WatchPurchasePrice) > 50000000000 AND
	COUNT(pt.PurchaseTransactionID)>1

	Use Vendor