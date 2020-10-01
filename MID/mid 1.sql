create database mama
use mama

create table department(
Dname char(50),
Dnumber int primary key,
Mgr_ssn int,
Mgr_start_date char(20)
);

create table Dept_Location(
Dnumber int,
Dlocation char(50)
primary key(Dnumber,Dlocation),
foreign key (Dnumber) references department
);

create table employee(
Fname char(50),
Mint char (30),
Lname char(50),
ESSn   char (20) primary key,
Bdate char (20),
Address char(50),
Sex char(20),
Salary int,
Super_ssn char(50),
Dno int foreign key references department
);


create table Dependent(
Essn char (20),
Dependent_name char(50),
sex char(20),
Bdate char (20),
Relationship char(50),
primary key (Essn,Dependent_name),
foreign key (ESSn) references employee
);

create table project(
Pname char(50),
Pnumber int primary key,
plocation char(50),
Dnum int foreign key references Department(Dnumber)
);


create table Works_on(
ESSn char (20),
Pno int,
Hours decimal(3,1),
primary key (ESSn,Pno),
foreign key (ESSn) references Employee,
foreign key (Pno)references project,  
);
select * from [dbo].[department]
select * from[dbo].[employee]
select * from [dbo].[project]


select Bdate,Address
from employee
where Fname like '%John%'select distinct Fname,Addressfrom employee,departmentwhere Dname='Research'select distinct Pnumber,Dnum,Lname,Address,Bdatefrom employee,projectwhere plocation='Stafford'select Fnamefrom employeewhere Dno=5