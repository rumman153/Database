create database university
use university
GO
create table department
(
dept_name char(10),
building char(20),
budget int,
primary key (dept_name)
)

create table classroom
(
building char(20),
room_no int,
capacity int,
primary key (building, room_no)
)


create table time_slot
(
time_slot_id int,
day char(20),
start_time int,
end_time int,
primary key (time_slot_id, day, start_time, end_time)
)

create table student
(
ID int,
name char(50),
dept_name char(10) foreign key references department(dept_name),
tot_cred int,
primary key (ID)
)

create table instructor
(
ID int,
name char(50),
dept_name char(10) foreign key references department(dept_name),
salary numeric(6,0),
primary key (ID),


)

create table advisor
(
s_id int foreign key references student(ID),
i_id int foreign key references instructor(ID),
primary key (s_id)
)

create table course
(
course_id varchar(20),
title char(50),
dept_name char(10) foreign key references department(dept_name),
credits float(2),
primary key (course_id)
)

create table prereq
(
course_id varchar(20) foreign key references course(course_id),
prereq_id varchar(20) foreign key references course(course_id),
primary key (course_id, prereq_id),

)

create table section
(
course_id varchar(20) foreign key references course(course_id),
sec_id int,
semester varchar(20),
year int,
building char(20) foreign key references classroom(building),
room_no int,
time_slot_id int,
primary key(course_id, sec_id, semester, year)
)

create table teaches
(
ID int foreign key references instructor(ID),
course_id varchar(20),
sec_id int,
semester varchar(20),
year int,
primary key (ID, course_id, sec_id, semester, year),
foreign key ( course_id, sec_id, semester, year) references section (course_id, sec_id, semester, year)
)


create table takes
(
ID int foreign key references student (ID),
course_id varchar(20),
sec_id int,
semester varchar(20),
year int,
grade float(2),
primary key (ID, course_id, sec_id, semester, year),
foreign key (course_id, sec_id, semester) references section (course_id, sec_id, semester),
)

select *from[dbo].[advisor]
select *from[dbo].[classroom]
select *from[dbo].[course]
select *from[dbo].[department]
select *from[dbo].[instructor]
select *from[dbo].[prereq]
select *from[dbo].[section]
select *from[dbo].[takes]
select *from[dbo].[teaches]
select *from[dbo].[time_slot]
select *from[dbo].[student]