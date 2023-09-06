/*
creating a database
*/
create database ABC_CorpDB;

use ABC_CorpDB; 

create table Employee(
EmpID int auto_increment primary key,  
EmpName varchar(50) NOT NULL,
EmpSalary float,
EmpQualification varchar(100),
EmpTel int,
EmpStatus varchar(10) DEFAULT 'Active',
DeptID int DEFAULT 20177,
constraint chkEmpSalary check (EmpSalary >=3000 or EmpSalary >= 10000),
constraint chkQualification check(EmpQualification = "BSC" or EmpQualification = "MSC" or EmpQualification = "MPHIL" or EmpQualification = "PHD"),
constraint unqEmpTel unique key (EmpTel),
constraint fkDeptID foreign key(DeptID) references Department(DeptID)
);

insert into Employee(EmpName, EmpSalary, EmpQualification, EmpTel)
values("Nana Adu", 5000, "BSC", 000-1234-144),
("Andy Brew", 8000, "BSC", 007-1934-124),
("Fin Aloh", 9000, "MSC", 002-4214-904),
("Maame Greene", 4000, "PHD", 040-1100-194),
("Robert Crew", 3000, "MSC", 024-3390-123),
("Patricia Wright", 3500, "BSC", 054-1614-104),
("Messi Blue", 9000, "MPHIL", 057-1148-120),
("Bless Kint", 3000, "MSC", 026-1939-194),
("Nadia May", 9000, "MPHIL", 055-1499-949),
("Jane Adu", 5500, "BSC", 020-1436-166),
("Chris Red", 3900, "MSC", 055-1134-277),
("Duke Oaks", 7800, "PHD", 002-1100-000),
("Nuella Evans", 9900, "BSC", 057-2221-177),
("Rihanna Bless", 8800, "PHD", 030-9994-000),
("Millet Yolly", 3900, "BSC", 025-3420-097),
("Adolley Kinks", 6900, "PHD", 090-1334-124),
("Lasmid Euguene", 10000, "MPHIL", 023-1190-567),
("Forgive Adu", 9700, "PHD", 035-1005-180),
("Suzzzy Oduro", 4800, "BSC", 024-2240-109),
("Grace Danquah", 7000, "MSC", 024-0000-660);


#this table is the department table thus the second table

create table Department(
DeptID int primary key,
DeptName varchar(150),
DeptHead varchar(50) NOT NULL,

constraint unqDeptName unique key (DeptName)
);

insert into Department(DeptID, DeptName, DeptHead)
values(20180, "Human Resource Department", "Philip Agbozo"),
(20177,"Research Department", "Patricia Agboo"),
(20171, "Creative and Innovative Department", "Patience Nyanasa"),
(20179, "Marketing Department", "Patrick Yawson"),
(20178, "Public Relations Department", "Derrick Jones"),
(20176, "Advertising Department", "Doreen Bruce"),
(20175, "Record Keeping Department", "Christel Polly"),
(20174, "Finance Department", "James Naah"),
(20172, "Management and Record Keeping Department", "Juliana Ayam"),
(20173, "The Unofficial Department", "Fred Donkor");









