use KeysConstrains;
show tables;

alter table project add ClientName varchar(20) after projectName;

alter table project add exp int after projectName;

alter table project add total int after exp;

desc project;

create trigger addExp before insert on project for each row set  new.total = (new.budget - new.exp);

CREATE TRIGGER addExpUpdate BEFORE UPDATE ON project
FOR EACH ROW
    SET NEW.total = NEW.budget - NEW.exp;

create table expense(
	id int,
    AfterExpBudget int
);

drop table expense;

insert into expense value(1,0);

CREATE TRIGGER aftrExpBudget AFTER INSERT ON project
FOR EACH ROW
    UPDATE expense SET AfterExpBudget = (SELECT SUM(total) FROM project) WHERE id = 1;

    




drop trigger aftrExpBudget;

update project set exp = 2021 where  proId = 1;

INSERT INTO project (proId, projectName, exp, ClientName, budget)
VALUES (10, "ChatApt", 10, "AjkGroup", 320);


desc project;

select * from project;
select * from expense;

