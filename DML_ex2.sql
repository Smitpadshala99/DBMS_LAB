use dbms_lab;

select Name from CLIENT_MASTER;
select * from CLIENT_MASTER;
select Name, CITY , STATE from CLIENT_MASTER;
select DESCRIPTION as Products from PRODUCT_MASTER;
select Name from  CLIENT_MASTER where CITY= "Mumbai";
select SALESMANNAME from SALESMAN_MASTER where SALAMT=3000;

update CLIENT_MASTER set CITY="Bangalore" where ClientNO ="C00005";
update CLIENT_MASTER set BALDUE=1000 where ClientNO ="C00001";
update PRODUCT_MASTER set CostPrice=1000 where DESCRIPTION ="Trousers";
update SALESMAN_MASTER set CITY="Pune";

delete from SALESMAN_MASTER where SALAMT=3500;
delete from PRODUCT_MASTER where QTYONHAND=100;
delete from CLIENT_MASTER where STATE="Tamil nadu";

alter table CLIENT_MASTER add column Telephone int(10);
alter table PRODUCT_MASTER MODIFY COLUMN SELLPRICE decimal (10,2);

select * from CLIENT_MASTER;
drop table  CLIENT_MASTER;

alter table SALESMAN_MASTER rename sman_mast;
show tables;
select * from PRODUCT_MASTER;
select * from sman_mast;

