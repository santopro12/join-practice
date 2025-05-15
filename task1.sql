#inner join , left join, right join, full join
create database SCHOOL;
use SCHOOL;
create table students(
student_id int primary key, 
name varchar(15));
select* from students;
insert into students
(student_id,name)
values
(1, "Alice"),(2, "Bob"),
(3,"charlie"),(4,"diana");
create table marks(
student_id int primary key,
subject varchar(23),marks int );
select * from marks;
insert into marks
(student_id,subject,marks)
values
(1,"math",85),(2,"math",85),
(4,"math",70),(5,"math",60);
select* from students inner join marks on students.student_id = marks.student_id;
select* from students left join marks on students.student_id = marks.student_id;
select* from students right join marks on students.student_id = marks.student_id;
select* from students left join marks on students.student_id = marks.student_id
union
select* from students right join marks on students.student_id = marks.student_id;

