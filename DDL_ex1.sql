create database dbms_lab;
use dbms_lab;

create table CLIENT_MASTER(ClientNO varchar(6), NAME varchar(20), CITY varchar(15), PINCODE integer, STATE varchar(15), BALDUE decimal (10,2));

create table PRODUCT_MASTER(PRODUCTNO varchar(6), DESCRIPTION Varchar(15), PROFITPERCENT Decimal (4,2) ,UNITMEASURE Varchar (10),QTYONHAND Integer,REORDERL_VL Integer,SELLPRICE Decimal(8,2),COSTPRICE Decimal(8,2));

create table SALESMAN_MASTER(SALESMANNO Varchar(6), SALESMANNAME Varchar(20),ADDRESS1 Varchar(30),ADDRESS2 Varchar(30) , CITY Varchar(20) , PINCODE Integer ,STATE Varchar(20) , SALAMT Real, TGTTOGET Decimal , YTDSALES Double(6,2) , REMARKS Varchar(60));

insert into CLIENT_MASTER values 
("C00001","Ivan bayross" , "Mumbai", 400054," Maharashtra", 15000),
("C00002"," Mamta muzumdar" , "Madras", 780001," Tamil nadu", 0),
("C00003","Chhaya bankar" , "Mumbai", 400057," Maharashtra", 5000),
("C00004","Ashwini joshi" , "Bangalore ",560001 ," Karnataka", 0),
("C00005","Hansel colaco" , "Mumbai", 400060," Maharashtra", 2000),
("C00006","Deepak sharma" , "Mangalore", 560050," Karnataka", 0);

insert into PRODUCT_MASTER values
("P00001","T-Shirt" , 5 , "Piece" , 200 , 50 , 350 , 250),
("P0345","Shirt" , 6 , "Piece" , 150 , 50 , 500 , 350),
("P06734","Cotton jeans" , 5 , "Piece" , 100 , 20 , 600 , 450),
("P07865","Jeans" , 5 , "Piece" , 100 , 20 , 750 , 500),
("P07868","Trousers" , 2 , "Piece" , 150 , 50 , 850 , 550),
("P07885","Pull Overs" , 2.5 , "Piece" , 80 , 30 , 350*2 , 450),
("P07965","Denim jeans" , 4 , "Piece" , 100 , 40 , 350 , 250),
("P07975","Lycra tops" , 5 , "Piece" , 70 , 30 , 300 , 175),
("P08865","Skirts" , 5 , "Piece" , 75 , 30 , 450 , 300);

insert into SALESMAN_MASTER values 
("S00001","Aman", "A/14", "Worli", "Mumbai", 400002,"Maharashtra",3000,100,50,"Good"),
("S00002","Omkar", "65", "Nariman", "Mumbai", 400001,"Maharashtra",3000,200,100,"Good"),
("S00003","Raj", "P-7", "Bandra", "Mumbai", 400032,"Maharashtra",3000,200,100,"Good"),
("S00004","Ashish", "A/5", "Jihu", "Mumbai", 400044,"Maharashtra",3500,200,150,"Good");

select * from CLIENT_MASTER;
select * from PRODUCT_MASTER;
select * from SALESMAN_MASTER;