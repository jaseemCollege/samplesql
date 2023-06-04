-- Creation of a database using DDL commands including integrity constraints. (K6)

CREATE DATABASE DDL;

USE DDL;

CREATE TABLE student(
    ID int,
    Name varchar(30),
    Address varchar(30),
    CS int,
    Phy int,
    Maths int,
    TotalMark int,
    Dept varchar(35),
    Age int,
    PRIMARY KEY(ID),
    CHECK(CS>=0 AND CS<=100),
    CHECK(Phy>=0 AND Phy<=100),
    CHECK(Maths>=0 AND Maths<=100),
    CHECK(TotalMark>=0 AND TotalMark<=300),
    CHECK(Age>=0 AND Age<=100)
);

INSERT INTO student VALUES(1,"Sreerag","America",60,70,80,210,"MCA",20);
INSERT INTO student VALUES(2,"Yaswanth","Japan",90,90,80,260,"MECH",21);
INSERT INTO student VALUES(3,"Adil","Kozhikode",90,90,90,270,"EEE",22);
INSERT INTO student VALUES(4,"Arjun","Korea",90,90,70,250,"Civil",23);

SELECT*FROM student;

SELECT*FROM student WHERE Address="Kozhikode" OR Address="Korea";

ALTER TABLE student ADD College varchar(100)  AFTER Dept;

INSERT INTO student VALUES(5,"Raju","America",60,70,80,210,"MCA",20,"MIT");
INSERT INTO student VALUES(6,"Rahul","Japan",90,90,80,260,"MECH",21,"III");
INSERT INTO student VALUES(7,"Raj","Kozhikode",90,90,90,270,"EEE",22,"NIT");
