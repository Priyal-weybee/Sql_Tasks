use sqlTask1;

create table Author 
(
Author_ID varchar(500) not null primary key,
Author_Name varchar(500)
);

insert into Author values
(1,'John'),
(2,'Albert');


create table Books 
(
Book_ID varchar(500) not null primary key,
Book_Name varchar(500),
Author_ID varchar(500)  Foreign key references Author(Author_ID),
Price int,
Publisher_ID varchar(500)  Foreign key references Publisher(Publisher_ID)

);
insert into Books values
(1,'Fire',1,500,101),
(2,'Albert',2,1000,102);


create table Customer (
Customer_ID varchar(500) not null primary key,
Customer_Name varchar(500),
Street_Address varchar(500),
City varchar(500),
Phone_Number varchar(500),
Credit_Card_Number varchar(500) foreign key references Credit_Card_Details(Credit_Card_Number)
);
insert into Customer values
(1,'Farjaad','Rajkot-India','Rajkot','972726637','1ABCD'),
(2,'Umeed','Ahemd-India','Ahemdabad','972368637','2EFGH');

create table Credit_Card_Details(
Credit_Card_Number varchar(500) not null primary key,
Credit_Card_Type varchar(500) ,
Expiry_Date Date

);
insert into Credit_Card_Details values
('1ABCD','Debit','2025-10-12'),
('2EFGH','Albert','2031-12-20');



create table Order_Details(
Order_Id int not null primary key,
Customer_ID varchar(500) foreign key references Customer(Customer_ID),
Shipping_Type varchar(500)  foreign key references Shipping_Type(Shipping_Type),
Date_of_Purchase date,
Shopping_Cart_Id int foreign key references Shopping_Cart(Shopping_Cart_Id)
);
insert into Order_Details values
(1111,1,'free','2024-05-12',),
(1122)

create table Publisher 
(
Publisher_ID varchar(500) not null primary key,
Publisher_Name varchar(500)
);
insert into Publisher values
(101,'Smith'),
(102,'Tow');

create table Purchase_History(
Customer_ID varchar(500) foreign key references Customer(Customer_ID),
Order_Id int foreign key references Order_Details(Order_Id)
);
insert into Purchase_History values
(1,1111),
(2,1122);


create table Shipping_type 
(
Shipping_Type varchar(500) not null primary key,
Shipping_Price int
);
insert into Shopping_Cart
(22,1,500,'2024-06-12',2),
(23,2,1000,'2024-06-12',3);


create table Shopping_Cart 
(
	Shopping_Cart_ID int not null primary key,
	Book_ID varchar(500) foreign key references Books(Book_ID),
	Price int ,
	Date  date,
	Quantity int
);
insert into Shopping_Cart
(22,1,500,'2024-06-12',2),
(23,2,1000,'2024-06-12',3);

use sqlTask1;


select * from Author;
select * from Books;
select * from Credit_Card_Details;
select * from Order_Details;
select * from Customer;
select * from Publisher;
select * from Purchase_History;
select * from Shipping_type;
select * from Shopping_Cart;

sp_help Purchase_History;

insert into shipping_type values
('overseas',5000),
('in house',3000);

insert into Shopping_Cart values
(1001,1,5000,'2024-01-16',2),
(1002,2,1000,'2024-01-17',1);


insert into Order_Details values

(10011,1,'in house','2024-01-16',1001),
(10022,2,'overseas','2024-01-17',1002);

insert into Purchase_History values
(1,10011),
(2,10022);

/**Create the view for the Customer_Details. View should include the columns: Customer Name, Customer Address and details of the order placed by customer.
**/
create view Customer_Details as
select Customer_Name, Street_Address,Order_Id,Shipping_Type,Date_Of_Purchase,Shopping_Cart_Id
from Customer join Order_Details on Customer.Customer_Id=Order_Details.Customer_Id;

select * from Customer_Details;


/*** multiple joins- all tables together**//

select * from  Author a join books b on a.Author_ID=b.Author_ID 
inner join Publisher Pb on Pb.Publisher_ID=b.Publisher_ID 
inner join Shopping_Cart Sc on b.Book_ID=Sc.Book_ID 
inner join Order_Details Od on Sc.Shopping_Cart_ID=Od.Shopping_Cart_ID
inner join Customer c on Od.Customer_Id= c.Customer_Id
inner join Credit_Card_Details ccd on ccd.Credit_Card_Number= c.Credit_Card_Number
inner join Purchase_History ph on ph.Customer_Id= c.Customer_Id
inner join Shipping_type St on St.Shipping_Type= Od.Shipping_Type;

/**Create a report that contains each customer's history of purchasing books.
Be sure to include the cusotmer name, customer ID, book ID, DOP and shopping card ID.**//
select  c.Customer_Name,c.Customer_ID,b.Book_ID,Od.Date_of_Purchase as'DOP',Sc.Shopping_Cart_ID from Customer c
inner join Order_Details Od on  c.Customer_ID=Od.Customer_ID
inner join Shopping_Cart Sc on Sc.Shopping_Cart_ID=Od.Shopping_Cart_ID
inner join Books b  on  b.Book_ID=Sc.Book_ID;




