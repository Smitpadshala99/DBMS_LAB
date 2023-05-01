-- EX-3 24/1/2023 --
use dbms_lab;

create table CLIENT_MASTER_1(CLIENTNO varchar(6) primary key,check(CLIENTNO like "C%"), NAME varchar(20) NOT NULL,ADDRESS_1 varchar(30),ADDRESS_2 varchar(30),CITY varchar(15),PINCODE int(8),STATE varchar(15),BALDUE decimal(10,2));

insert into  CLIENT_MASTER_1 VALUES
('C00001','Ivan bayross',null,null,'MUMBAI',400054,'MAHARASHTRA',15000),
('C00002','MAMTA MAZUMDAR',NULL,NULL,'MADRAS',780001,'TAMIL NADU',0),
('C00003','CHHAYA BANKAR',null,null,'MUMBAI',400057,'MAHARASHTRA',5000),
('C00004','ASHWINI JOSHI',null,null,'BANGALORE',560001,'KARNATAKA',0),
('C00005','HANSEL COLACO',null,NULL,'MUMBAI',400060,'MAHARASHTRA',2000),
('C00006','DEEPAK SHARMA',NULL,NULL,'MANGALORE',560050,'KARNATAKA',0);
select * from CLIENT_MASTER_1;

create TABLE PRODUCT_MASTER_1(PRODUCTNO varchar(6) PRIMARY KEY, check(PRODUCTNO like "P%"),DESCRIPTION varchar(15) NOT NULL,PROFITPERCENT DECIMAL(4,2) NOT NULL,UNIT_MEASURE varchar(10) not null,qtyonhand int(8) not null,reorderl_vl int(8) not null,sell_price decimal(8,2) not null,cost_price decimal(8,2) not null);
insert into PRODUCT_MASTER_1 values
('P00001','TSHIRT',5,'PIECE',200,50,350,250),
('P0345','SHIRTS',6,'PIECE',150,50,500,350),
('P06734','COTTON JEANS',5,'PIECE',100,20,600,450),
('P07865','JEANS',5,'PIECE',100,20,750,500),
('P07868','TROUSERS',2,'PIECE',150,50,850,550),
('P07885','PULL OVERS',2.5,'PIECE',80,30,700,450),
('P07965','DENIM JEANS',4,'PIECE',100,40,350,250),
('P07975','LYCRA TOPS',5,'PIECE',70,30,300,175),
('P08865','SKIRTS',5,'PIECE',75,30,450,300);

select * from PRODUCT_MASTER_1;

create table SALESMAN_MASTER_1(SALESMANNO varchar(6) primary key, check (SALESMANNO like "S%"),SALESMANNAME varchar(20) NOT NULL,ADDRESS_1 varchar(20) not null,ADDRESS_2 varchar(30),CITY varchar(20),PINCODE int(8),STATE varchar(20),SALAMT real(8,2) check(SALAMT>0),TGTTOGET decimal(6,2) not null check(TGTTOGET>=0),YTDSALES double(6,2) not null,REMARKS varchar(60));
insert into SALESMAN_MASTER_1 values 
("S00001","Aman", "A/14", "Worli", "Mumbai", 400002,"Maharashtra",3000,100,50,"Good"),
("S00002","Omkar", "65", "Nariman", "Mumbai", 400001,"Maharashtra",3000,200,100,"Good"),
("S00003","Raj", "P-7", "Bandra", "Mumbai", 400032,"Maharashtra",3000,200,100,"Good"),
("S00004","Ashish", "A/5", "Jihu", "Mumbai", 400044,"Maharashtra",3500,200,150,"Good");

select * from SALESMAN_MASTER_1;

drop table CLIENT_MASTER_1;
drop table PRODUCT_MASTER_1;
drop table SALESMAN_MASTER_1;