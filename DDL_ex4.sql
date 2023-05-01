-- EXP-4 31/01/2023
use dbms_lab;
create table AUTHOR(Author_ID varchar(5) primary key, Lastname text(15) NOT NULL, Firstname text(15) NOT NULL, Email text(40), City text(15), Country varchar(15));

create table BOOK(Book_ID varchar(5) primary key , check(Book_ID like 'B%'), Book_Title text NOT NULL, Copies int(2));

create table AUTHOR_LIST(Author_ID varchar(5) references AUTHOR(Author_ID), Book_ID varchar(5) references BOOK(Book_ID), Role text(15));

insert into AUTHOR values
("A01","Sarah", "Buchman", "sarahbuchman7@gmail.com","Bronx","USA"),
("A2","Hallie","Hull","hallie@gmail.com","San Francisco","USA"),
("A3","Srushti","Deshmukh","srushtijd7@gmail.com","Bopal","India"),
("A4","Morgan","Housel","morgan00@gmail.com","Alexandria","USA");

insert into BOOK values
("B01","Book1","5"),
("B02","Book2","9"),
("B03","Book3","3"),
("B04","Book4","10");

insert into AUTHOR_LIST values
("A01","B01","Author"),
("A02","B02","Co-Author"),
("A03","B03","Author(IAS)"),
("A04","B04","Reviewer");

insert into AUTHOR_LIST value("A04","B06","Reviewer");

alter table AUTHOR_LIST add column publisher text(30);
select * from AUTHOR;
select * from BOOK;
select * from AUTHOR_LIST;