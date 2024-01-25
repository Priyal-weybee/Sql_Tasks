use EvalutionTask;
create table EmployeeInfo (
EmpID int Not null primary key,
EmpFname varchar(200) Not null,
EmpLname varchar(200) Not null,
Department varchar(200) Not null,
Poject varchar(200),
Adddress varchar(200) Not null, 
DOB date Not null,
Gender char(2)Not null
);
create table EmployeePosition (
EmpID int Foreign key references EmployeeInfo(EmpID),
EmpPosition varchar(200) Not null,
DateOfJoining date Not null,
Salary int
);

insert into EmployeeInfo values 
(1,'Sanjay','Mehra','HR','P1','Hydrabad(HYD)','01/12/1976','M');
insert into EmployeeInfo values 
(2,'Ananya','Mishra','Admin','P2','Delhi(DEL)','02/05/1968','F');
insert into EmployeeInfo values
(3,'Rohan','Diwan','Account','P3','Mumbai(BOM)','01/01/1980','M');
insert into EmployeeInfo values 
(4,'Sonia','Kulkarni','HR','P1','Hydrabad(HYD)','02/05/1992','F');
insert into EmployeeInfo values 
(5,'Ankit','Kapoor','Admin','P2','Delhi(DEL)','03/07/1994','M');



insert into EmployeePosition values 
(1,'Manager','01/05/2024',500000);
insert into EmployeePosition values 
(2,'Executive','02/05/2024',75000);
insert into EmployeePosition values 
(3,'Manager','01/05/2024',90000);
insert into EmployeePosition values 
(2,'Lead','02/05/2024',85000);
insert into EmployeePosition values 
(1,'Executive','01/05/2024'300000);



--1.Write a  to retrieve two minimum and maximum salaries from the EmployeePosition table
select salary from EmployeePosition where salary =(select max(salary)as secondhighest from EmployeePosition where salary not in (select max(salary) as 'highest salary' from EmployeePosition)) or Salary=(select max(salary) as 'highest salary' from EmployeePosition) 
or Salary= (select min(salary) from EmployeePosition)
or Salary=(select min(salary) from EmployeePosition where Salary not in (select min(salary) from EmployeePosition))
create function MinMaxSalary


-- 2.Write a query to fetch 50% records from the EmployeeInfo table.
select * from EmployeeInfo where EmpId <=  Any(select (count(*)/2) as counting from EmployeeInfo) 

-- 3.Write a query to retrieve the last 3 records from the EmployeeInfo table.
select top 3  * from EmployeeInfo order by  EmpID desc
select * from EmployeeInfo order by  EmpID desc  offset 0 rows 
fetch next 3 rows only

-- 4.Write an SQL query to determine the 3rd highest salary without using the TOP or limit method.
select max(salary) from EmployeePosition where salary not in((select max(salary) from EmployeePosition where salary not in (select max(salary) from EmployeePosition)),(select max(salary) from EmployeePosition));

-- 5.Write an SQL query to clone a new table from another table without information.
select top 0 * into clone_EmployeeInfo1 from EmployeeInfo;
select top 0 * into clone_EmployeePosition from EmployeePosition;
select * from  clone_EmployeePosition
select * from clone_EmployeeInfo1



--6. Write an SQL query to fetch the departments that have less than two people in them.
select Department,count(EmpID) from EmployeeInfo group by Department having count(EmpID) <2;

--7.Write an SQL query to print the names of employees having the highest salary in each department.
select Department,max(Salary) from EmployeeInfo ei join EmployeePosition ep on ei.EmpID=ep.EmpID group by Department
