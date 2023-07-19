create table contact(
id int primary key,
Email varchar(70) not null,
fname varchar(50) not null,
lname varchar(50) not null,
company varchar(30),
Active_flag int,
opt_out int);

insert into contact values(123,"a@.com","Kian","Seth","ABC",1,1);
insert into contact values(133,"b@.com","Neha","Seth","ABC",1,0);
insert into contact values(234,"c@.com","Puru","Malik","CDF",0,0);
insert into contact values(342,"d@.com","Sid","Maan","TEG",1,0);
select *from contact;
select * from contact where Active_flag=1;
delete from contact where opt_out=1;
delete from contact where company="ABC";
insert into contact values(658,"mili@gmail.com",'mili',' ','DGH',1,1);
select distinct(company) from contact;
update contact set fname="niti" where fname="mili";