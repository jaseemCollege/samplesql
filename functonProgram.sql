show databases;
use triggers;
create table section(s_id int,s_name varchar(20),strength int);
insert into section values(1,'Computer Science',20);
insert into section values(2,'Portal',45);
insert into section values(3,'geeksforgeeks',60);
insert into section values(4,'geeksforgeeks',60);
DELIMITER //
CREATE FUNCTION totalStrength() 
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE total INT;
  SET total = 0;
  SELECT SUM(strength) INTO total FROM section;
  RETURN total;
END;
//
DELIMITER ;

DELIMITER //
CREATE FUNCTION cs() 
RETURNS VARCHAR(255)
BEGIN
  DECLARE cs VARCHAR(255);
  SET cs = null;
  SELECT s_name INTO cs FROM section WHERE s_name ="Computer Science";
  RETURN cs;
END;
//
DELIMITER ;

DELIMITER //
CREATE FUNCTION geeksforgeeks() 
RETURNS VARCHAR(255)
BEGIN
  DECLARE gg VARCHAR(255);
  SET gg = null;
  SELECT s_name INTO cs FROM section WHERE s_name ="geeksforgeeks";
  RETURN gg;
END;
//
DELIMITER ;
DELIMITER //
CREATE FUNCTION geeksforgeek() 
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE gg INT;
  SET gg = 0;
  SELECT sum(strength) INTO gg  FROM section WHERE s_name ="geeksforgeeks";
  RETURN gg;
END;
//
DELIMITER ;

select totalStrength();
select cs();
select geeksforgeek();
select * from section;

