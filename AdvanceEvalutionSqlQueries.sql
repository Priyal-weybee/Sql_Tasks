use AdEval;

create table salesperson 
( id int primary key,
first_name varchar(100),
last_name varchar(100)
);

insert into salesperson values
(1,'Nina','Lee'),
(2,'Carolina','Green'),
(3,'Mick','Johnson')

select * from salesperson

create table sales
( id int not null,
salesperson_id int foreign key references salesperson(id),
monthly_sales  decimal(8,2),
period  nvarchar(100)
);

insert into sales values
(1,1,1200.47,'2021_10'),
(2,2,5487.22,'2021_10'),
(3,3,700.47,'2021_10'),
(4,1,15747.54,'2021_11'),
(5,2,16700.87,'2021_11'),
(5,3,14322.87,'2021_11'),
(6,1,9745.55,'2021_12'),
(7,2,9600.97,'2021_12'),
(8,3,6749.58,'2021_12')

select * from sales
select * from salesperson


 create table Employees
( id int not null primary key,
first_name varchar(200),
last_name varchar(200),
salary decimal(8,2),
department varchar(200)
);
insert into Employees values
--(1,'Tim','Thompson',10524.74,'Sales'),
(2,'Martina','Hrabal',7895.14,'Accounting'),
(3,'Susan','Truman',15478.69,'Sales'),
(4,'Ciro','Conte',8794.41,'Accounting'),
(5,'Jorge','De Lucia',7489.15,'Sales'),
(6,'Carmen','Lopez',10479.15,'Accounting'),
(7,'Catherine','Molnar',8794.89,'Sales'),
(8,'Richard','Buchanan',12487.69,'Accounting'),
(9,'Mark','Wong',9784.19,'Sales'),
(10,'Silvia','Karelias',9748.64,'Accounting')

select * from Employees



 create table Revenue
( id int not null primary key,
actual_revenue decimal(15,2),
period nvarchar(200)
);
insert into Revenue values
(1,8748441.22,'2022_07'),
(2,10487444.59,'2022_08'),
(3,7481457.15,'2022_09'),
(4,7497441.89,'2022_10'),
(5,8697415.36,'2022_11'),
(6,12497441.56,'2022_12');

select * from Revenue




 create table Employees1
( employee_id int not null primary key,
first_name varchar(200),
last_name varchar(200),
manager_id int

);
insert into Employees1 values
(5529,'Jack','Simmons',5125),
(5238,'Maria','Popovich',5329),
(5329,'Dan','Jacobsson',5125),
(5009,'Simone','Gudbois',5329),
(5125,'Albert','Koch',NULL),
(5500,'Jackie','Carlin',5529),
(5118,'Steve','Nicks',5952),
(5012,'Bonnie','Presley',5952),
(5952,'Harry','Raitt',5529),
(5444,'Sean','Elsam',5329)

select * from Employees1


--	Use a Recursive Query to Find all Employees Under a Given Manager.
/*With Recursive cte_name ()
as

 select * from (select employee_id from Employees1 where manager_id is NULL) e 
 Union
 select * from  (select employee_id from Employees1 where manager_id is NULL) e join Employees1 m on  e.employee_id= m.manager_id;
 */

 /*With  cteManager(employee_id,first_name,last_name,manager_id) as
 (
 ((select * from Employees1 where manager_id is NULL)
 UNION
(select * from Employees1 where 
manager_id = (select employee_id from Employees1 where manager_id=employee_id)))*/
 )  
 /*WITH RECURSIVE cte_employee  AS(
 (select employee_id,manager_id,first_name,last_name,first_name,last_name from Employees1 where manager_id is NULL)
 UNION all
 (select e.employee_id as manager,m.employee_id,e.first_name,e.last_name,m.first_name,m.last_name  from Employees1 e, Employees1 m where e.employee_id =m.manager_id )
 SELECT * FROM cte_employee;*/

/* WITH cteManagerEmployee  AS (
    -- Base case
    (SELECT employee_id, employee_name, manager_id
    FROM Employees1
    WHERE manager_id IS NULL)

    UNION all

    -- Recursive case
    (SELECT e.employee_id, e.employee_name, e.manager_id
    FROM Employees1 e
    INNER JOIN employee_hierarchy eh ON e.manager_id = eh.employee_id)
	)
SELECT * FROM cteManagerEmployee;
*/
select * from Employees1

/*--------------------------------------------------------Solutions------------------------------------------*/

/*1.Write a Query to Return Salespersons and Their Monthly Sales Data Above 
Their Personal Sales Average. Use a Correlated Subquery. */
select * from sales
select * from salesperson

select salesperson.id,first_name,last_name,b.avg from (select salesperson_id,avg(monthly_sales) as avg from sales group by salesperson_id)  b join salesperson on b.salesperson_id=salesperson.id ;



--2.Find the Top n Rows in SQL Using a Window Function and a CTE.

select top 5 * from (select *,(ROW_NUMBER() over ( order by id)) as rowscount from Employees) a  where rowscount>8


with ROWCTE(ROWNO,id,first_name,last_name,salary,department) as  
   (  
     SELECT 
  ROW_NUMBER() OVER(ORDER BY id Desc) AS ROWNO,id,first_name,last_name,salary,department
FROM Employees
WHERE id >= 5
    ) 
select * from ROWCTE
select * from Employees

--3 Compute the Difference Between Two Rows (Delta) Using Window Functions
select id,actual_revenue,actual_revenue -LAG(actual_revenue,1) over (order by id) from Revenue


--4.Use a Recursive Query to Find all Employees Under a Given Manager.

with cteManagerEmployee as (
(select manager_id ,employee_id,first_name,last_name
from Employees1
where manager_id is Null )

Union ALL
(select e.manager_id,e.employee_id,e.first_name,e.last_name
from Employees1 e,Employees1 m where e.manager_id=m.employee_id

)
)

select * from cteManagerEmployee