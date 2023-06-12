SHOW databases;
use student;
show tables;

create table department(id int,dptName varchar(20),locationId int);
describe department;
insert into department values(1,"MCA",101),
							 (2,"EEE",103),
                             (3,"CS",104),
							 (4,"Mech",107),
							 (5,"Civil",109);
select * from department;

alter table department add constraint dept_pk primary key(id);
alter table dpt add constraint dept_pi primary key(id);

describe department;

select * from department;
select * from dpt;

SELECT name FROM dpt
UNION
SELECT id FROM student;
alter table department add forId int after id;

alter table department add CONSTRAINT FK_dpt FOREIGN KEY (forId) REFERENCES dpt(id);

describe department;
select * from department;
insert into department values(6,1,"MCA",101);
insert into department values(7,8,"MCA",105);
insert into department values(7,2,"MCA",1011);
							 