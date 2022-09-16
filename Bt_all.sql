CREATE DATABASE QuanLyBanHang;

USE QuanLyBanHang;

CREATE TABLE Customer (
    cId INT AUTO_INCREMENT PRIMARY KEY,
    cName VARCHAR(25),
    cAge TINYINT
);

CREATE TABLE Oder (
    oId INT AUTO_INCREMENT PRIMARY KEY,
    cId INT,
    oDate DATETIME,
    oTotalPrice INT,
    FOREIGN KEY (cId) REFERENCES Customer(cId)
);

CREATE TABLE Product (
    pId INT AUTO_INCREMENT PRIMARY KEY,
    pName VARCHAR(25),
    pPrice INT
);

CREATE TABLE OrderDetail (
    oId INT,
    pId INT,
    odQTY INT,
    FOREIGN KEY (oID) REFERENCES Oder(oID),
    FOREIGN KEY (pID) REFERENCES Product(pID)
);

INSERT INTO Customer (cName, cAge)
			   VALUE ('Minh Quan', 10),
					 ('Ngoc Oanh', 20),
					 ('Hong Ha', 50);
                     
INSERT INTO Oder (cID, oDate)
		   VALUE (1, '2006-03-21'),
				 (2, '2006-03-23'),
				 (1, '2006-03-16');
                 
INSERT INTO Product (pName, pPrice)
			  VALUE ('May Giat', 3),
					('Tu Lanh', 5),
					('Dieu Hoa', 7),
					('Quat', 1),
					('Bep Dien', 2);
                    
INSERT INTO OrderDetail (oId, pId, odQTY)
				  VALUE (1, 1, 3),
						(1, 3, 7),
						(1, 4, 2),
						(2, 1, 1),
						(3, 1, 8),
						(2, 5, 4),
						(2, 3, 3);
                        
SELECT oId, oDate, oTotalPrice FROM Oder;

SELECT C.cName, P.pPrice
FROM Customer C join Product P on C.cId = P.cID join OrderDetail OD on C.cId = OD.cID;