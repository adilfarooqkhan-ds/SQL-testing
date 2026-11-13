create database mydb1
use mydb1
create database mydb2

---

--This is single line comment

/*
this is 
multiline
coment
*/

--Data type is a cconcept which tell us what type of data a particular variable store
/*
--int :- stores numerical value
char (30) :- stores textual data
varchar(30) :- stores textual data
Datetime 
float
*/



/*
DDL --Data defination Language

Create 
Alter
Truncate
drop

*/

use mydb1

use mydb1




create table employe
(
id int,
name varchar(30),
Adress varchar(30)
)


alter table employ
add  roll_no int

select * from employ


alter table employ
drop column adress


truncate table employ

/*
Data Manipulation  Language(DDL)
1. insert -- 
2. Select -- retreives data from table
3. update -- modify existing data
4 . delete 
*/


/*insert employ(id,name,roll_no)
values(1,'wasiq',12),
(2,'umer',13)*/



select * from employ



/*
Clause 
In SQL Server, a clause is a built-in keyword used to structure,
filter, group, or organize data within a query
1. select
2. from
3.where
4.Having
5.group by
6. order by
7.Distinct
8. Top
*/


update employ
set name ='Athar'
where id = 2


delete employ
where id =1


select * from employ


use mydb1


select * from employ


alter table employ
add age int


delete employ
where id = 2




insert into employ(id,name,salary,age)
values(1,'eshaan',50000,21),
(2,'Wasiq',250000,32),
(3,'Khan',5000,26),
(4,'Athar',150000,22),
(5,'Madeeha',25000,29)



select * from employ


select * from employ
order by salary


select * from employ
order by salary desc


select top 1 * from employ



select top 2 * from employ
order by salary desc









/*
constraint are rules that are applied to a table
1. Primary key --- uniquely idenfies each row
2. not null -- null are not allowes
3. Default --- pre defined
4. check ---apply condtion
5. unique -- duplicate value are not allowed
6. foreign key -- establish relationship netween two tables

*/


drop table employ




create table employ
(
id int Primary key,
Name varchar(50) not null,
Email varchar(50) unique not null,
Adress varchar(100) default 'Srinagr',
age int check(age>=18),
salary int


)


select * from employ



insert into employ(id,Name,Email,age, salary)
values(1,'Wasiq','w@gmail', 29,10000)



insert into employ(id,Name,Email,Adress,age, salary)
values(2,'Ubaid','u@gmail', 'BLR',17,10000)


insert into employ(id,Name,Email,Adress, age,salary)
values(2,'Ubair','t@gmail', 'BLR',20,10000)


insert into employ(id,Name,Adress,age, salary)
values(3,'Ubaid', 'BLR',34,10000)



insert into employ(id,Email,Adress,age, salary)
values(4,'m@gmail','BLR',34,10000)

SELECT * FROM EMPLOY





use mydb1


truncate table employ
select * from employ





INSERT INTO employ (id, Name, Email, Adress, age, salary)
VALUES
(1, 'Ayaan', 'ayaan@gmail.com', 'Srinagar', 22, 25000),
(2, 'Rahul', 'rahul@gmail.com', 'Delhi', 25, 30000),
(3, 'Amit', 'amit@gmail.com', 'Mumbai', 24, 28000),
(4, 'Priya', 'priya@gmail.com', 'Jammu', 23, 32000),
(5, 'Sara', 'sara@gmail.com', 'Srinagar', 26, 35000),
(6, 'Arjun', 'arjun@gmail.com', 'Chandigarh', 28, 40000),
(7, 'Neha', 'neha@gmail.com', 'Delhi', 21, 22000),
(8, 'Rohan', 'rohan@gmail.com', 'Pune', 27, 38000),
(9, 'Zoya', 'zoya@gmail.com', 'Srinagar', 24, 31000),
(10, 'Adil', 'adil@gmail.com', 'Anantnag', 29, 45000),
(11, 'Karan', 'karan@gmail.com', 'Mumbai', 30, 50000),
(12, 'Isha', 'isha@gmail.com', 'Jammu', 22, 26000),
(13, 'Vikas', 'vikas@gmail.com', 'Delhi', 31, 55000),
(14, 'Anaya', 'anaya@gmail.com', 'Pune', 25, 36000),
(15, 'Kabir', 'kabir@gmail.com', 'Srinagar', 28, 42000),
(16, 'Meera', 'meera@gmail.com', 'Jammu', 23, 29000),
(17, 'Farhan', 'farhan@gmail.com', 'Baramulla', 27, 39000),
(18, 'Simran', 'simran@gmail.com', 'Chandigarh', 26, 34000),
(19, 'Danish', 'danish@gmail.com', 'Anantnag', 32, 60000),
(20, 'Ayesha', 'ayesha@gmail.com', 'Srinagar', 24, 33000)




select * from employ


--Aaggergate--
select max(salary) as highest_sal from employ


select min(salary) from employ

select avg(age) from employ


select  count(*) from employ

select sum(salary) from employ


select * from employ



select * from employ
where salary>20000 and Adress = 'Srinagar'



select * from employ
where salary>20000 or Adress = 'Srinagr'



select * from employ
where salary between 20000 and 40000


select * from employ
where salary >20000 and salary<=40000


select * from employ
where name like '%a'



select * from employ
where name like 'ay%'



select sum(salary) from employ
where adress = 'Srinagar'


use mydb1



--Group by--

--group by is a clause that organizes row with same value into groups
select adress, count(*) from employ
group by adress


select adress, COUNT(*) as no_employ from employ
group by adress
order by no_employ desc


select adress, max(salary) from employ
group by adress



select adress , avg(salary)from employ
group by adress

select adress, COUNT(*) from employ
group by adress
having COUNT(*)>3

select adress, AVG(salary) from employ
group by adress
having avg(salary)>30000


select adress, sum(salary) from employ
group by adress
having sum(salary) >50000


select adress, avg(age) from employ
group by adress
having AVG(age)>25



select * from employ


use mydb1

select * from employ


select adress, count(*) from employ
group by Adress



select  count(*) from employ
where adress = 'Srinagar'


select adress, count(*) from employ
group by Adress



select adress, count(*) as no_employ from employ
group by adress
order by no_employ desc


select adress, max(salary) from employ
group by adress


select adress , COUNT(*) from employ
group by adress
having COUNT(*)>3



select  AVG(salary) from employ
where Adress = 'Delhi'


--Adresses earning average more than 35k
select adress, AVG(salary) from employ
group by adress
having AVG(salary)>35000





select adress, sum(salary) from employ
group by adress
having sum(salary)>100000



select AVG(age) from employ
where Adress = 'delhi'


select adress, avg(age) from employ
group by adress
having AVG(age)>25


drop table employ



create table department
(
deptid int primary key,
deptname varchar(30),
deptlocation varchar(30)
)


create table employ
(
empid int primary key,
name varchar(40),
salary int,
age int,
deptid int,
foreign key(deptid) references department(deptid)

)

insert into department(deptid,deptname,deptlocation)
values(100,'HR','BLR'),(101,'SALES','SXR'),(102,'CS','DEL')



select * from department


create table employ
INSERT INTO employ (empid, name, salary, age, deptid)
VALUES
(1, 'Amit', 35000, 25, 100),
(2, 'Priya', 42000, 28, 101),
(3, 'Rahul', 50000, 30, 102),
(4, 'Sneha', 38000, 26, 100),
(5, 'Vikas', 45000, 32, 101),
(6, 'Neha', 55000, 29, 102),
(7, 'Arjun', 30000, 24, 100),
(8, 'Pooja', 48000, 31, 101),
(9, 'Karan', 60000, 35, 102),
(10, 'Anjali', 40000, 27, 100),
(11, 'Rohit', 52000, 33, 101),
(12, 'Simran', 65000, 36, 102),
(13, 'Deepak', 32000, 23, 100),
(14, 'Kavita', 47000, 29, 101),
(15, 'Manish', 58000, 34, 102),
(16, 'Riya', 36000, 25, 100),
(17, 'Sahil', 44000, 28, 101),
(18, 'Divya', 70000, 38, 102),
(19, 'Varun', 39000, 26, 100),
(20, 'Meena', 51000, 32, 101),
(21, 'Akash', 62000, 35, 102),
(22, 'Nisha', 34000, 24, 100),
(23, 'Tarun', 46000, 30, 101),
(24, 'Isha', 75000, 40, 102),
(25, 'Mohit', 41000, 27, 100),
(26, 'Kiran', 53000, 33, 101),
(27, 'Sonia', 68000, 37, 102),
(28, 'Ajay', 37000, 25, 100),
(29, 'Komal', 49000, 31, 101),
(30, 'Ramesh', 80000, 42, 102)






select * from employ
select * from department





select max(salary) from employ
where salary<(select max(salary) from employ)


--department of rahul

select deptname from department
where deptid = 
(
select deptid from employ
where name = 'Rahul'

)

--- highest sal in each dapt
select * from employ e
where salary=
(
select max (salary) from employ
where deptid= e.deptid
)

--- employes which have dept location SXR
select * from employ
where deptid in 
(
select deptid from department
where deptlocation ='SXR'
)

--- third higest slaray

select max(salary) as thirdhsal from employ
where salary <(select max(salary) from employ
where salary <(select max(salary) from employ)
)


--- 30 QUESTION sql  subquery 

create database Datascience
USE Datascience
GO



-- 1. Departments table
CREATE TABLE dbo.SQ_Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
)

-- 2. Employees table
CREATE TABLE dbo.SQ_Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    manager_id INT NULL,
    city VARCHAR(50),
    FOREIGN KEY (dept_id)
        REFERENCES dbo.SQ_Departments(dept_id)
)

-- 3. Projects table
CREATE TABLE dbo.SQ_Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    budget DECIMAL(12,2)
)

-- 4. Employee-Projects table
CREATE TABLE dbo.SQ_EmployeeProjects (
    emp_id INT,
    project_id INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id)
        REFERENCES dbo.SQ_Employees(emp_id),
    FOREIGN KEY (project_id)
        REFERENCES dbo.SQ_Projects(project_id)
)

-- Insert departments
INSERT INTO dbo.SQ_Departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Sales')

-- Insert employees
INSERT INTO dbo.SQ_Employees
(emp_id, emp_name, salary, dept_id, manager_id, city)
VALUES
(101, 'Aman',   60000, 1, NULL, 'Srinagar'),
(102, 'Sara',   75000, 1, 101,  'Delhi'),
(103, 'Rahul',  45000, 2, NULL, 'Srinagar'),
(104, 'Priya',  80000, 3, NULL, 'Mumbai'),
(105, 'Zoya',   55000, 2, 103,  'Delhi'),
(106, 'Arjun',  90000, 3, 104,  'Srinagar'),
(107, 'Neha',   50000, 4, NULL, 'Mumbai'),
(108, 'Kabir',  70000, 1, 101,  'Srinagar'),
(109, 'Isha',   65000, 5, NULL, 'Delhi'),
(110, 'Rohan',  40000, 4, 107,  'Srinagar'),
(111, 'Mehak',  85000, 5, 109,  'Mumbai'),
(112, 'Farhan', 52000, 2, 103,  'Srinagar')

-- Insert projects
INSERT INTO dbo.SQ_Projects VALUES
(201, 'Website Development', 150000),
(202, 'Data Analytics',       200000),
(203, 'Payroll System',       100000),
(204, 'Marketing Campaign',    80000),
(205, 'Sales Dashboard',      120000)

-- Assign employees to projects
INSERT INTO dbo.SQ_EmployeeProjects VALUES
(101, 201),
(102, 201),
(102, 202),
(104, 203),
(106, 203),
(107, 204),
(109, 205),
(111, 205),
(108, 202),
(103, 203),
(105, 201)

-- Check the tables
SELECT * FROM dbo.SQ_Departments
SELECT * FROM dbo.SQ_Employees
SELECT * FROM dbo.SQ_Projects
SELECT * FROM dbo.SQ_EmployeeProjects



-- Q1. Find employees earning more than the average salary.
SELECT emp_name, salary
FROM dbo.SQ_Employees
WHERE salary > (SELECT AVG(salary) FROM dbo.SQ_Employees)

-- Q2. Find the highest-paid employee.
SELECT emp_name, salary
FROM dbo.SQ_Employees
WHERE salary = (SELECT MAX(salary) FROM dbo.SQ_Employees)

-- Q3. Find employees working in the IT department.
SELECT emp_name
FROM dbo.SQ_Employees
WHERE dept_id = (
    SELECT dept_id FROM dbo.SQ_Departments
    WHERE dept_name = 'IT'
)

-- Q4. Find employees earning less than the highest salary.
SELECT emp_name, salary
FROM dbo.SQ_Employees
WHERE salary < (SELECT MAX(salary) FROM dbo.SQ_Employees)

-- Q5. Find employees earning the lowest salary.
SELECT emp_name, salary
FROM dbo.SQ_Employees
WHERE salary = (SELECT MIN(salary) FROM dbo.SQ_Employees)

-- Q6. Find employees in the same department as Aman.
SELECT emp_name, dept_id
FROM dbo.SQ_Employees
WHERE dept_id = (
    SELECT dept_id FROM dbo.SQ_Employees
    WHERE emp_name = 'Aman'
)

-- Q7. Find employees earning more than 60000 using a scalar subquery.
SELECT emp_name, salary
FROM dbo.SQ_Employees
WHERE salary > (SELECT 60000)

-- Q8. Find employees working in HR.
SELECT emp_name
FROM dbo.SQ_Employees
WHERE dept_id IN (
    SELECT dept_id FROM dbo.SQ_Departments
    WHERE dept_name = 'HR'
)

-- Q9. Find employees earning more than Rahul.
SELECT emp_name, salary
FROM dbo.SQ_Employees
WHERE salary > (
    SELECT salary FROM dbo.SQ_Employees
    WHERE emp_name = 'Rahul'
)

-- Q10. Find employees living in the same city as Priya.
SELECT emp_name, city
FROM dbo.SQ_Employees
WHERE city = (
    SELECT city FROM dbo.SQ_Employees
    WHERE emp_name = 'Priya'
)

-- Q11. Find employees in departments with an average salary above 60000.
SELECT emp_name, salary, dept_id
FROM dbo.SQ_Employees
WHERE dept_id IN (
    SELECT dept_id
    FROM dbo.SQ_Employees
    GROUP BY dept_id
    HAVING AVG(salary) > 60000
)

-- Q12. Find employees not assigned to any project.
SELECT emp_name
FROM dbo.SQ_Employees
WHERE emp_id NOT IN (
    SELECT emp_id FROM dbo.SQ_EmployeeProjects
)

-- Q13. Find projects assigned to IT department employees.
SELECT project_name
FROM dbo.SQ_Projects
WHERE project_id IN (
    SELECT project_id
    FROM dbo.SQ_EmployeeProjects
    WHERE emp_id IN (
        SELECT emp_id
        FROM dbo.SQ_Employees
        WHERE dept_id = (
            SELECT dept_id FROM dbo.SQ_Departments
            WHERE dept_name = 'IT'
        )
    )
)

-- Q14. Find departments having at least one employee.
SELECT dept_name
FROM dbo.SQ_Departments d
WHERE EXISTS (
    SELECT 1
    FROM dbo.SQ_Employees e
    WHERE e.dept_id = d.dept_id
)

-- Q15. Find departments with no employees.
SELECT dept_name
FROM dbo.SQ_Departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.SQ_Employees e
    WHERE e.dept_id = d.dept_id
)

-- Q16. Find employees earning more than their department average.
SELECT emp_name, salary, dept_id
FROM dbo.SQ_Employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM dbo.SQ_Employees
    WHERE dept_id = e.dept_id
);

-- Q17. Find the highest-paid employee(s) in each department.
SELECT emp_name, salary, dept_id
FROM dbo.SQ_Employees e
WHERE salary = (
    SELECT MAX(salary)
    FROM dbo.SQ_Employees
    WHERE dept_id = e.dept_id
)

-- Q18. Find employees earning more than every HR employee.
SELECT emp_name, salary
FROM dbo.SQ_Employees
WHERE salary > ALL (
    SELECT salary
    FROM dbo.SQ_Employees
    WHERE dept_id = (
        SELECT dept_id FROM dbo.SQ_Departments
        WHERE dept_name = 'HR'
    )
)

-- Q19. Find employees earning less than at least one Finance employee.
SELECT emp_name, salary
FROM dbo.SQ_Employees
WHERE salary < ANY (
    SELECT salary
    FROM dbo.SQ_Employees
    WHERE dept_id = (
        SELECT dept_id FROM dbo.SQ_Departments
        WHERE dept_name = 'Finance'
    )
)

-- Q20. Find departments with an average salary above the company average.
SELECT dept_id, AVG(salary) AS avg_salary
FROM dbo.SQ_Employees
GROUP BY dept_id
HAVING AVG(salary) > (
    SELECT AVG(salary) FROM dbo.SQ_Employees
)

-- Q21. Find employees working in departments with more than two employees.
SELECT emp_name, dept_id
FROM dbo.SQ_Employees
WHERE dept_id IN (
    SELECT dept_id
    FROM dbo.SQ_Employees
    GROUP BY dept_id
    HAVING COUNT(*) > 2
);

-- Q22. Find employees who manage at least one employee.
SELECT emp_name
FROM dbo.SQ_Employees
WHERE emp_id IN (
    SELECT manager_id
    FROM dbo.SQ_Employees
    WHERE manager_id IS NOT NULL
)

-- Q23. Find employees assigned to the Data Analytics project.
SELECT emp_name
FROM dbo.SQ_Employees
WHERE emp_id IN (
    SELECT emp_id
    FROM dbo.SQ_EmployeeProjects
    WHERE project_id = (
        SELECT project_id FROM dbo.SQ_Projects
        WHERE project_name = 'Data Analytics'
    )
)

-- Q24. Find projects with no employees assigned.
SELECT project_name
FROM dbo.SQ_Projects p
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.SQ_EmployeeProjects ep
    WHERE ep.project_id = p.project_id
)

-- Q25. Find the second-highest distinct salary.
SELECT MAX(salary) AS second_highest_salary
FROM dbo.SQ_Employees
WHERE salary < (
    SELECT MAX(salary) FROM dbo.SQ_Employees
)

-- Q26. Find employees earning more than their managers.
SELECT e.emp_name, e.salary
FROM dbo.SQ_Employees e
WHERE e.salary > (
    SELECT m.salary
    FROM dbo.SQ_Employees m
    WHERE m.emp_id = e.manager_id
)

-- Q27. Find the highest-paid employee(s) in each department with department names.
SELECT e.emp_name, e.salary, d.dept_name
FROM dbo.SQ_Employees e
JOIN dbo.SQ_Departments d
    ON e.dept_id = d.dept_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM dbo.SQ_Employees e2
    WHERE e2.dept_id = e.dept_id
)

-- Q28. Find employees earning above their department average using a derived table.
SELECT e.emp_name, e.salary, a.avg_salary
FROM dbo.SQ_Employees e
JOIN (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM dbo.SQ_Employees
    GROUP BY dept_id
) a ON e.dept_id = a.dept_id
WHERE e.salary > a.avg_salary

-- Q29. Find employees earning more than the average salary
-- of employees in all other departments.
SELECT e.emp_name, e.salary, e.dept_id
FROM dbo.SQ_Employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM dbo.SQ_Employees e2
    WHERE e2.dept_id <> e.dept_id
)

-- Q30. Find projects above the average budget that have employees assigned.
SELECT p.project_name, p.budget
FROM dbo.SQ_Projects p
WHERE p.budget > (
    SELECT AVG(budget) FROM dbo.SQ_Projects
)
AND EXISTS (
    SELECT 1
    FROM dbo.SQ_EmployeeProjects ep
    WHERE ep.project_id = p.project_id
)


select * from employ
select * from department



--inner join means retreiving data from two diffrent table based on condition
select e.name , d.deptname from employ e join department d
on e.deptid = d.deptid


--left join keyword returns all the rows from the left side of the table , along matching rows from
--the right side of the table
select e.name, e.salary , d.deptname from employ e  left join department d
on e.deptid = d.deptid

--right join keyword returns all the rows from the right side of the table , along matching rows from
--the left side of the table

select e.name, e.salary , d.deptname from employ e  right join department d
on e.deptid = d.deptid


--full outer join returns all the rows from the both table wether match exists or not

select e.name, e.salary , d.deptname from employ e full outer join department d
on e.deptid = d.deptid


insert into employ(empid,name, salary, age)
values(33,'uabid',40000,21)




select e.name, e.salary, d.deptname from employ e join department d
on e.deptid = d.deptid
where e.salary =
(

select max(salary) from employ
where salary<(select max(salary) from employ)

)
--find the employes who earn more than average salary with their names

select e.name , e.salary, d.deptname from employ e  join department d
on e.deptid = d.deptid
where e.salary>
(

select AVG(salary) from employ
)

--find employ who works in same department as rohit and earn more than rohit

select e.name , e.salary, d.deptname
from employ e join department d on e.deptid = d.deptid

where e.deptid = 
(
select deptid from employ
where name = 'Rohit' --100
)
And e.salary>
(

select salary from employ
where name = 'Rohit'
)


--Common table expression(Cte) are the view that dont get store in database


select e.name , d.deptname from employ e join department d
on e.deptid = d.deptid




with op as
(
select e.name , d.deptname from employ e join department d
on e.deptid = d.deptid

)
select * from op


create view alldet as
(

select e.name, e.salary, d.deptname from employ e join department d
on e.deptid = d.deptid



)

alter view alldet as 
(


select e.name, e.salary,e.age, d.deptname from employ e join department d
on e.deptid = d.deptid


)

select * from alldet



/*A stored procedure is a prepared collection of sql statements that
you save in your database so that you can reuse the code over and over again
*/

create procedure  getemploybyid
@id int
as
begin 
select * from employ
where empid =@id 
end 

getemploybyid @id =3

create procedure getemploybyname
@name varchar(30)
as
begin 
select * from employ
where name =@name 
end
getemploybyname @name ='Rahul'

DROP PROCEDURE IF EXISTS getemploybyname;
GO

alter procedure getemploybyname
@id int,
@name varchar(30)
as 
begin 
select * from employ 
where name = @name and empid =@id 
end



EXEC getemploybyname 3, 'rahul'

create procedure  getemploybyage
@age int
as
begin 
select * from employ
where age =@age
end 

getemploybyage @age =30

create procedure  getemploybydeptid
@deptid int
as
begin 
select * from employ
where deptid =@deptid
end 

getemploybydeptid @deptid =100

create procedure  employbydeptid
@deptid int = 100
as
begin 
select * from employ
where deptid =@deptid
end 

employbydeptid @deptid =101






create procedure getempbysalary
@minsalary int,
@maxsalary int 
as 
begin 
select * from employ
where salary between @minsalary and @maxsalary 
end
getempbysalary 40000, 50000

--- sql server have its own stored inbuild procedure (SP)
sp_help 'employ'
sp_tables
sp_columns 'employ'
sp_spaceused 'employ'
---sp_rename 'employ' , 'employee' to change the name of table
---sp_rename 'employee.empname','name' , 'column' to chane the name of any column
---(alter table employee
---drop column age ) *** delt column from table 
---(alter table employee
---drop constraint (name of constraint) *** delt constraint then column from table


/*Windows function is sql perfrom calculation acreoss a set of rows related to the current row 
without collapsing the result into in single row 

*/
---it gives me unique row number to each row 
select *, ROW_NUMBER() OVER(ORDER BY SALARY DESC) AS RN 
from employ
---rank gives here rank to each row,but skipping iteration 
select *, Rank() OVER(ORDER BY SALARY DESC) AS RN 
from employ
---same value , same rank but dont skipp iteration
select *,dense_rank() OVER(ORDER BY SALARY DESC) AS RN 
from employ
---partition by clause is a logical tool used inside analytical window functions 
select name, salary, deptid,
sum(salary) over(partition by deptid ) as totalsal,
avg(salary) over(partition by deptid) as avgsal
from employ

select name, salary, deptid,
min(salary) over(partition by deptid ) as higestsal
from employ

select name, salary, deptid,
max(salary) over(partition by deptid ) as higestsal
from employ

select name, salary, deptid,
AVG(salary) over(partition by deptid ) as avgsal
salary-avg(salary) over(partition by deptid ) as saldifference
from employ

select name,salary,
count(*) over(partition by deptid ) as salarycount
from employ


--lag shows previous value, lead shows next value(based on order)


select empid, name , deptid , salary,
lag(salary ,1) over(partition by deptid order by salary desc) as previous_salary
from employ



select empid, name , deptid , salary,
lead(salary ,1) over(partition by deptid order by salary desc) as next_salary
from employ

/*An SQL transation is a single logical unit of work that groups one or more SQL Queries
together to ensure they either all succeed or all fail as pack.
two pillers
1.Commit used to save data permanantly in database
2.Rollback is a cmd that restores the database to last commit state

*/

create table account
(
accid int,
holdername varchar(50),
accbalance int
) 

insert into account values(1,'wasiq',1000),(2,'Madeeha',5000)

select * from account

begin transaction 
begin try


update account 
set accbalance=accbalance-300 
where accid = 1
--
---
--
---
---
---
update account
set accbalance = accbalance+300
where accid = 2
commit
end try
begin catch
rollback
end catch

select * from account


/*
ACID
In SQL Server, ACID stands for Atomicity, Consistency, Isolation, and Durability. 
These four fundamental properties guarantee that database transactions are processed reliably, 
maintaining data integrity even during system failures, crashes, or concurrent user activity

1. A--Atomicity (All or nothing)
2. C-- Consistency (Valid State to Valid State)
3. I--Isolation (Independent Execution)
4. D--Durability (Permanence)


In SqL Servertigger in sql
Trigger in SQL Server
A trigger is a special type of stored procedure that automatically runs when an event happens on a table, such as:

INSERT
UPDATE
DELETE
You don't execute a trigger manually. SQL Server fires it automatically.
*/

create trigger upd_tgr
on employ
after update 
as begin 
print('Your data updated sucessfully!')
end

alter trigger upd_trg
on employ
after delete
as begin
print('Your row deleted sucessfully!')
end



update employ
set name = 'aaddil'
where empid = 1



create trigger tg_del
on employ
after delete
as begin
print('Your data deleted sucessfully!')
end


drop trigger tg_del




delete from employ
where empid = 30


--An index in SQL Server is a specialized, on-disk data structure associated with a table or view that speeds up data retrieval.


sp_helpindex 'employ'

create nonclustered index idx_name
on employ(name)

drop index idx_name on employ
---