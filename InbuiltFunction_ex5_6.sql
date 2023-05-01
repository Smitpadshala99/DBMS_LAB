use dbms_lab;
-- ex 5 and 6  07/02/2023

CREATE TABLE Supplier (scode INT PRIMARY KEY, sname VARCHAR(50), scity VARCHAR(50),turnover INT);

CREATE TABLE Part (pcode INT PRIMARY KEY, weight INT, color VARCHAR(50), cost INT, sellingprice INT);

CREATE TABLE Supplier_Part (scode INT, pcode INT, qty INT, FOREIGN KEY (scode) REFERENCES Supplier(scode), FOREIGN KEY (pcode) REFERENCES Part(pcode));

INSERT INTO Supplier (scode, sname, scity, turnover) VALUES
(1, 'Supplier1', 'Ahmedabad', 75000000),
(2, 'Supplier2', 'Surat', 45000000),
(3, 'Supplier3', 'Rajkot', 64200000),
(4, 'Supplier4', 'Ahmedabad', 43000000),
(5, 'Supplier5', 'Gandhinagar', 71000000);

INSERT INTO Part (pcode, weight, color, cost, sellingprice) VALUES
(1, 20, 'Red', 8, 35),
(2, 30, 'Blue', 14, 30),
(3, 40, 'Green', 15, 30),
(4, 25, 'Balck', 7, 30),
(5, 35, 'White', 5, 29);

INSERT INTO Supplier_Part (scode, pcode, qty) VALUES
(1, 1, 548),
(2, 2, 249),
(3, 3, 359),
(4, 4, 410),
(5, 5, 250);

-- 1
select scode, pcode from Supplier_Part order by scode asc;

-- 2
select * from Supplier where scity = 'Bombay' and turnover = 50;
select * from Supplier where scity = 'Surat' and turnover = 45000000;

-- 3
select count(*) from Supplier;

-- 4
select pcode from Part where weight between 25 and 35;

-- 5
select scode from Supplier where turnover is null;
select scode from Supplier where turnover = '75000000';

-- 6
select pcode from Part where cost in (20, 30, 40);
select pcode from Part where cost in (8, 15, 20);

-- 7
select sum(qty) from Supplier_Part where pcode = 2;

-- 8
select Supplier.sname from Supplier_Part inner join Supplier on Supplier_Part.scode = Supplier.scode where Supplier_Part.scode = 2;

-- 9 
select pcode from Part where cost > (select avg(cost) from Part);

-- 10
select scode, turnover from Supplier order by turnover desc;
