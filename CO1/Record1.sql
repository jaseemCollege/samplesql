show databases;

create database McaRecord;
use McaRecord;
create table Student(id int , Name varchar(20),Address varchar(20),Maths int,Physics int,CS int,Total int);

insert into Student(id,Name,Address,Maths,Physics,CS) values (1,"Varun","Kozhikode",100,95,96);
insert into Student(id,Name,Address,Maths,Physics,CS) values (2,"Sarang","Kozhikode",94,86,90);
insert into Student(id,Name,Address,Maths,Physics,CS) values (3,"Rima","Malappuram",40,30,20);
insert into Student(id,Name,Address,Maths,Physics,CS) values (4,"Jim","Korea",100,100,100);
insert into Student(id,Name,Address,Maths,Physics,CS) values (5,"Jamina","Korea",100,100,100);
insert into Student(id,Name,Address,Maths,Physics,CS) values (6,"Anu","Kochi",96,98,99);
insert into Student(id,Name,Address,Maths,Physics,CS) values (7,"Kiran","Wayanad",36,44,50);
insert into Student(id,Name,Address,Maths,Physics,CS) values (8,"Akhash","Thrissur",56,77,67);
insert into Student(id,Name,Address,Maths,Physics,CS) values (9,"Adwaith","Palakkad",10,20,30);
insert into Student(id,Name,Address,Maths,Physics,CS) values (10,"Manu","Kannur",50,60,30);

select * from Student;

update Student set Total = Maths+Physics+CS;

select id,Name from Student;

select id,Name from Student where Total>250;

select * from Student where Address="Kozhikode";

update Student set Total = 250 where Name = "Varun";

select * from Student where Name="Varun";

delete from Student where Name= "Sarang";

select * from Student;

update Student set Total = null where Name = "Rima";

select Total,Name from Student where Name="Rima" and Total is null;

select * from Student where Address="Kozhikode" or Address="Korea";

alter table Student add Department varchar(50) After Total;

update Student set Department ="MCA" where id = 1;
update Student set Department ="Civil Eng" where id = 3;
update Student set Department ="Electrical Eng" where id = 4;
update Student set Department ="Electrical Eng" where id = 5;
update Student set Department ="MCA" where id = 6;
update Student set Department ="MCA" where id = 7;
update Student set Department ="MCA" where id = 8;
update Student set Department ="MCA" where id = 9;
update Student set Department ="MCA" where id = 10;

select * from Student;

select Name,Department from Student order by Name desc;

select Name,Address from Student where Address is null;

select max(Total) from Student;

select min(Total) from Student;

select avg(CS) from Student;

select sum(Physics) from Student;

select Name from Student where Name like "A%";

select Department from Student where Department like "%g";

update Student set Total = Maths+Physics+CS;

select * from Student;

alter table Student add Age int after Name;

alter table Student add constraint Age_check check(Age>=18); 

update Student set Age = 22 where id = 1;
update Student set Age = 20 where id = 3;
update Student set Age = 19 where id = 4;
update Student set Age = 18 where id = 5;
update Student set Age = 23 where id = 6;
update Student set Age = 24 where id = 7;
update Student set Age = 25 where id = 8;
update Student set Age = 26 where id = 9;
update Student set Age = 27 where id = 10;

select * from Student;

update Student set Age=17 where id=10;

alter table Student drop constraint Age_check;

update Student set Age=17 where id=4;

select * from Student;

create view student_details as select id,Name,Total from Student where Department="Electrical Eng";

select * from student_details;

drop view student_details;

delete from Student where Age = 25;
commit;
select * from Student;

start transaction;

delete from Student where id = 10;
select * from Student;

rollback;

select * from Student;

start transaction;

savepoint sp;

update Student set Age = 20 where id = 1;

select * from Student;

rollback to sp;

select * from Student;

release savepoint sp;

select * from Student;

select * from Student where Total=(select max(Total) from Student);

alter table Student add Adno int;

update Student set Adno=1001 where id=1;
update Student set Adno=1003 where id=3;
update Student set Adno=1004 where id=4;
update Student set Adno=1005 where id=5;
update Student set Adno=1006 where id=6;
update Student set Adno=1007 where id=7;
update Student set Adno=1008 where id=8;
update Student set Adno=1009 where id=9;
update Student set Adno=1010 where id=10; 

select * from Student;

alter table Student modify column Name varchar(30) not null;

alter table Student modify column Adno int not null;

desc Student;

alter table Student add Email varchar(80);

update Student set Email="a1@gmail.com" where id=1;
update Student set Email="a3@gmail.com" where id=3;
update Student set Email="a4@gmail.com" where id=4;
update Student set Email="a5@gmail.com" where id=5;
update Student set Email="a6@gmail.com" where id=6;
update Student set Email="a7@gmail.com" where id=7;
update Student set Email="a8@gmail.com" where id=8;
update Student set Email="a9@gmail.com" where id=9;
update Student set Email="a10@gmail.com" where id=10;

select * from Student;

alter table Student add constraint unique_email unique(Email);

desc Student;

create table Department(Drpt_id int,Dept_name varchar(50),location_id int);

insert into Department value(1,"Electrical Eng",321),(2,"MCA",322),(3,"Electronic Eng",323),(4,"CS",324);

select * from Department;

alter table Department add constraint Dept_id_pk primary key(Drpt_id);

desc Department;

SELECT Department FROM Student UNION SELECT Drpt_id FROM Department;


SELECT Drpt_id, Dept_name FROM Department;


select distinct Department from Student;