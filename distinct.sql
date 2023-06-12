SHOW databases;
use student;
show tables;

select * from student;

create table dpt(id int, name varchar(20), dpmt varchar(20));

describe dpt;

insert into dpt values(1,"Jaseem","MCA"),
						(2,"Sreerag","MCA"),
						(3,"Hasna","M tech"),
                        (4,"Anu","B tech"),
                        (5,"Suhana","BCA");
                        
select distinct dpmt from dpt;

