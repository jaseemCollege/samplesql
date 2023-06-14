show databases;

create database KeysConstrains;

use KeysConstrains;

create table project(
	proId int primary key,
    projectName varchar(20) Unique,
	budget int not null
);

insert into project value(1,"Gooloo",23410),
						(2,"Mappo",23221),
                        (3,"LagoSumo",33212),
                        (4,"RoyalTRee",32131);
                        
select * from project;

create table team(
	TeamId int primary key,
    TeamName varchar(20) Unique,
	proId int not null,
    foreign key(proId) references project(proId)
);
insert into team value(1,"Team Anandu",4),
						(2,"Team Lala",2),
                        (3,"Team Sumo",1),
                        (4,"Team Rahan",3);

select * from team;

