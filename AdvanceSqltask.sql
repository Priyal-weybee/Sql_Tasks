use AdvanceSQLFinal
GO
/****** Object:  Table [dbo].[departments]    Script Date: 12-01-2024 11:35:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[department_id] [int] NULL,
	[department_name] [varchar](20) NULL,
	[manager_id] [int] NULL,
	[location_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 12-01-2024 11:35:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [int] NOT NULL,
	[first_name] [varchar](20) NULL,
	[last_name] [varchar](25) NULL,
	[email] [varchar](25) NULL,
	[phone_number] [varchar](20) NULL,
	[hire_date] [date] NULL,
	[job_id] [varchar](10) NULL,
	[salary] [int] NULL,
	[commission_pct] [int] NULL,
	[manager_id] [int] NULL,
	[department_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 12-01-2024 11:35:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs](
	[job_id] [varchar](20) NULL,
	[job_title] [varchar](20) NULL,
	[min_salary] [int] NULL,
	[max_salary] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (10, N'Administration', 200, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (20, N'Marketing', 201, 1800)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (30, N'Purchasing', 114, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (40, N'Human Resources', 203, 2400)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (50, N'Shipping', 121, 1500)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (60, N'IT', 103, 1400)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (70, N'Public Relations', 204, 2700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (80, N'Sales', 145, 2500)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (90, N'Executive', 100, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (100, N'Finance', 108, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (110, N'Accounting', 205, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (120, N'Treasury', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (130, N'Corporate Tax', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (140, N'Control And Credit', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (150, N'Shareholder Services', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (160, N'Benefits', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (170, N'Manufacturing', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (180, N'Construction', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (190, N'Contracting', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (200, N'Operations', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (210, N'IT Support', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (220, N'NOC', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (230, N'IT Helpdesk', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (240, N'Government Sales', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (250, N'Retail Sales', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (260, N'Recruiting', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (270, N'Payroll', NULL, 1700)
GO
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (100, N'Steven', N'King', N'SKING', N'515.123.4567', CAST(N'2003-06-17' AS Date), N'AD_PRES', 24000, 0, 0, 90)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (101, N'Neena', N'Kochhar', N'NKOCHHAR', N'515.123.4568', CAST(N'2005-09-21' AS Date), N'AD_VP', 17000, 0, 100, 90)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (102, N'Lex', N'De Haan', N'LDEHAAN', N'515.123.4569', CAST(N'2001-01-13' AS Date), N'AD_VP', 17000, 0, 100, 90)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (103, N'Alexander', N'Hunold', N'AHUNOLD', N'590.423.4567', CAST(N'2006-01-03' AS Date), N'IT_PROG', 9000, 0, 102, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (104, N'Bruce', N'Ernst', N'BERNST', N'590.423.4568', CAST(N'2007-05-21' AS Date), N'IT_PROG', 6000, 0, 103, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (105, N'David', N'Austin', N'DAUSTIN', N'590.423.4569', CAST(N'2005-06-25' AS Date), N'IT_PROG', 4800, 0, 103, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (106, N'Valli', N'Pataballa', N'VPATABAL', N'590.423.4560', CAST(N'2006-02-05' AS Date), N'IT_PROG', 4800, 0, 103, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (107, N'Diana', N'Lorentz', N'DLORENTZ', N'590.423.5567', CAST(N'2007-02-07' AS Date), N'IT_PROG', 4200, 0, 103, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (108, N'Nancy', N'Greenberg', N'NGREENBE', N'515.124.4569', CAST(N'2002-08-17' AS Date), N'FI_MGR', 12000, 0, 101, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (109, N'Daniel', N'Faviet', N'DFAVIET', N'515.124.4169', CAST(N'2002-08-16' AS Date), N'FI_ACCOUNT', 9000, 0, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (110, N'John', N'Chen', N'JCHEN', N'515.124.4269', CAST(N'2005-09-28' AS Date), N'FI_ACCOUNT', 8200, 0, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (111, N'Ismael', N'Sciarra', N'ISCIARRA', N'515.124.4369', CAST(N'2005-09-30' AS Date), N'FI_ACCOUNT', 7700, 0, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (112, N'Jose Manuel', N'Urman', N'JMURMAN', N'515.124.4469', CAST(N'2006-03-07' AS Date), N'FI_ACCOUNT', 7800, 0, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (113, N'Luis', N'Popp', N'LPOPP', N'515.124.4567', CAST(N'2007-12-07' AS Date), N'FI_ACCOUNT', 6900, 0, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (114, N'Den', N'Raphaely', N'DRAPHEAL', N'515.127.4561', CAST(N'2002-12-07' AS Date), N'PU_MAN', 11000, 0, 100, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (115, N'Alexander', N'Khoo', N'AKHOO', N'515.127.4562', CAST(N'2003-05-18' AS Date), N'PU_CLERK', 3100, 0, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (116, N'Shelli', N'Baida', N'SBAIDA', N'515.127.4563', CAST(N'2005-12-24' AS Date), N'PU_CLERK', 2900, 0, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (117, N'Sigal', N'Tobias', N'STOBIAS', N'515.127.4564', CAST(N'2005-07-24' AS Date), N'PU_CLERK', 2800, 0, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (118, N'Guy', N'Himuro', N'GHIMURO', N'515.127.4565', CAST(N'2006-11-15' AS Date), N'PU_CLERK', 2600, 0, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (119, N'Karen', N'Colmenares', N'KCOLMENA', N'515.127.4566', CAST(N'2007-08-10' AS Date), N'PU_CLERK', 2500, 0, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (120, N'Matthew', N'Weiss', N'MWEISS', N'650.123.1234', CAST(N'2004-07-18' AS Date), N'ST_MAN', 8000, 0, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (121, N'Adam', N'Fripp', N'AFRIPP', N'650.123.2234', CAST(N'2005-04-10' AS Date), N'ST_MAN', 8200, 0, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (122, N'Payam', N'Kaufling', N'PKAUFLIN', N'650.123.3234', CAST(N'2003-05-01' AS Date), N'ST_MAN', 7900, 0, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (123, N'Shanta', N'Vollman', N'SVOLLMAN', N'650.123.4234', CAST(N'2005-10-10' AS Date), N'ST_MAN', 6500, 0, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (124, N'Kevin', N'Mourgos', N'KMOURGOS', N'650.123.5234', CAST(N'2007-11-16' AS Date), N'ST_MAN', 5800, 0, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (125, N'Julia', N'Nayer', N'JNAYER', N'650.124.1214', CAST(N'2005-07-16' AS Date), N'ST_CLERK', 3200, 0, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (126, N'Irene', N'Mikkilineni', N'IMIKKILI', N'650.124.1224', CAST(N'2006-09-28' AS Date), N'ST_CLERK', 2700, 0, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (127, N'James', N'Landry', N'JLANDRY', N'650.124.1334', CAST(N'2007-01-14' AS Date), N'ST_CLERK', 2400, 0, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (128, N'Steven', N'Markle', N'SMARKLE', N'650.124.1434', CAST(N'2008-03-08' AS Date), N'ST_CLERK', 2200, 0, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (129, N'Laura', N'Bissot', N'LBISSOT', N'650.124.5234', CAST(N'2005-08-20' AS Date), N'ST_CLERK', 3300, 0, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (130, N'Mozhe', N'Atkinson', N'MATKINSO', N'650.124.6234', CAST(N'2005-10-30' AS Date), N'ST_CLERK', 2800, 0, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (131, N'James', N'Marlow', N'JAMRLOW', N'650.124.7234', CAST(N'2005-02-16' AS Date), N'ST_CLERK', 2500, 0, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (132, N'TJ', N'Olson', N'TJOLSON', N'650.124.8234', CAST(N'2007-04-10' AS Date), N'ST_CLERK', 2100, 0, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (133, N'Jason', N'Mallin', N'JMALLIN', N'650.127.1934', CAST(N'2004-06-14' AS Date), N'ST_CLERK', 3300, 0, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (134, N'Michael', N'Rogers', N'MROGERS', N'650.127.1834', CAST(N'2006-08-26' AS Date), N'ST_CLERK', 2900, 0, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (135, N'Ki', N'Gee', N'KGEE', N'650.127.1734', CAST(N'2007-12-12' AS Date), N'ST_CLERK', 2400, 0, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (136, N'Hazel', N'Philtanker', N'HPHILTAN', N'650.127.1634', CAST(N'2008-02-06' AS Date), N'ST_CLERK', 2200, 0, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (137, N'Renske', N'Ladwig', N'RLADWIG', N'650.121.1234', CAST(N'2003-07-14' AS Date), N'ST_CLERK', 3600, 0, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (138, N'Stephen', N'Stiles', N'SSTILES', N'650.121.2034', CAST(N'2005-10-26' AS Date), N'ST_CLERK', 3200, 0, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (139, N'John', N'Seo', N'JSEO', N'650.121.2019', CAST(N'2006-02-12' AS Date), N'ST_CLERK', 2700, 0, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (140, N'Joshua', N'Patel', N'JPATEL', N'650.121.1834', CAST(N'2006-04-06' AS Date), N'ST_CLERK', 2500, 0, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (141, N'Trenna', N'Rajs', N'TRAJS', N'650.121.8009', CAST(N'2003-10-17' AS Date), N'ST_CLERK', 3500, 0, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (142, N'Curtis', N'Davies', N'CDAVIES', N'650.121.2994', CAST(N'2005-01-29' AS Date), N'ST_CLERK', 3100, 0, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (143, N'Randall', N'Matos', N'RMATOS', N'650.121.2874', CAST(N'2006-03-15' AS Date), N'ST_CLERK', 2600, 0, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (144, N'Peter', N'Vargas', N'PVARGAS', N'650.121.2004', CAST(N'2006-07-09' AS Date), N'ST_CLERK', 2500, 0, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (145, N'John', N'Russell', N'JRUSSEL', N'011.44.1344.429268', CAST(N'2004-01-01' AS Date), N'SA_MAN', 14000, 0, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (146, N'Karen', N'Partners', N'KPARTNER', N'011.44.1344.467268', CAST(N'2005-01-05' AS Date), N'SA_MAN', 13500, 0, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (147, N'Alberto', N'Errazuriz', N'AERRAZUR', N'011.44.1344.429278', CAST(N'2005-03-10' AS Date), N'SA_MAN', 12000, 0, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (148, N'Gerald', N'Cambrault', N'GCAMBRAU', N'011.44.1344.619268', CAST(N'2007-10-15' AS Date), N'SA_MAN', 11000, 0, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (149, N'Eleni', N'Zlotkey', N'EZLOTKEY', N'011.44.1344.429018', CAST(N'2008-01-29' AS Date), N'SA_MAN', 10500, 0, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (150, N'Peter', N'Tucker', N'PTUCKER', N'011.44.1344.129268', CAST(N'2005-01-30' AS Date), N'SA_REP', 10000, 0, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (151, N'David', N'Bernstein', N'DBERNSTE', N'011.44.1344.345268', CAST(N'2005-03-24' AS Date), N'SA_REP', 9500, 0, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (152, N'Peter', N'Hall', N'PHALL', N'011.44.1344.478968', CAST(N'2005-08-20' AS Date), N'SA_REP', 9000, 0, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (153, N'Christopher', N'Olsen', N'COLSEN', N'011.44.1344.498718', CAST(N'2006-03-30' AS Date), N'SA_REP', 8000, 0, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (154, N'Nanette', N'Cambrault', N'NCAMBRAU', N'011.44.1344.987668', CAST(N'2006-12-09' AS Date), N'SA_REP', 7500, 0, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (155, N'Oliver', N'Tuvault', N'OTUVAULT', N'011.44.1344.486508', CAST(N'2007-11-23' AS Date), N'SA_REP', 7000, 0, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (156, N'Janette', N'King', N'JKING', N'011.44.1345.429268', CAST(N'2004-01-30' AS Date), N'SA_REP', 10000, 0, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (157, N'Patrick', N'Sully', N'PSULLY', N'011.44.1345.929268', CAST(N'2004-03-04' AS Date), N'SA_REP', 9500, 0, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (158, N'Allan', N'McEwen', N'AMCEWEN', N'011.44.1345.829268', CAST(N'2004-08-01' AS Date), N'SA_REP', 9000, 0, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (159, N'Lindsey', N'Smith', N'LSMITH', N'011.44.1345.729268', CAST(N'2005-03-10' AS Date), N'SA_REP', 8000, 0, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (160, N'Louise', N'Doran', N'LDORAN', N'011.44.1345.629268', CAST(N'2005-12-15' AS Date), N'SA_REP', 7500, 0, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (161, N'Sarath', N'Sewall', N'SSEWALL', N'011.44.1345.529268', CAST(N'2006-11-03' AS Date), N'SA_REP', 7000, 0, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (162, N'Clara', N'Vishney', N'CVISHNEY', N'011.44.1346.129268', CAST(N'2005-11-11' AS Date), N'SA_REP', 10500, 0, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (163, N'Danielle', N'Greene', N'DGREENE', N'011.44.1346.229268', CAST(N'2007-03-19' AS Date), N'SA_REP', 9500, 0, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (164, N'Mattea', N'Marvins', N'MMARVINS', N'011.44.1346.329268', CAST(N'2008-01-24' AS Date), N'SA_REP', 7200, 0, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (165, N'David', N'Lee', N'DLEE', N'011.44.1346.529268', CAST(N'2008-02-23' AS Date), N'SA_REP', 6800, 0, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (166, N'Sundar', N'Ande', N'SANDE', N'011.44.1346.629268', CAST(N'2008-03-24' AS Date), N'SA_REP', 6400, 0, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (167, N'Amit', N'Banda', N'ABANDA', N'011.44.1346.729268', CAST(N'2008-04-21' AS Date), N'SA_REP', 6200, 0, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (168, N'Lisa', N'Ozer', N'LOZER', N'011.44.1343.929268', CAST(N'2005-03-11' AS Date), N'SA_REP', 11500, 0, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (169, N'Harrison', N'Bloom', N'HBLOOM', N'011.44.1343.829268', CAST(N'2006-03-23' AS Date), N'SA_REP', 10000, 0, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (170, N'Tayler', N'Fox', N'TFOX', N'011.44.1343.729268', CAST(N'2006-01-24' AS Date), N'SA_REP', 9600, 0, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (171, N'William', N'Smith', N'WSMITH', N'011.44.1343.629268', CAST(N'2007-02-23' AS Date), N'SA_REP', 7400, 0, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (172, N'Elizabeth', N'Bates', N'EBATES', N'011.44.1343.529268', CAST(N'2007-03-24' AS Date), N'SA_REP', 7300, 0, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (173, N'Sundita', N'Kumar', N'SKUMAR', N'011.44.1343.329268', CAST(N'2008-04-21' AS Date), N'SA_REP', 6100, 0, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (174, N'Ellen', N'Abel', N'EABEL', N'011.44.1644.429267', CAST(N'2004-05-11' AS Date), N'SA_REP', 11000, 0, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (175, N'Alyssa', N'Hutton', N'AHUTTON', N'011.44.1644.429266', CAST(N'2005-03-19' AS Date), N'SA_REP', 8800, 0, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (176, N'Jonathon', N'Taylor', N'JTAYLOR', N'011.44.1644.429265', CAST(N'2006-03-24' AS Date), N'SA_REP', 8600, 0, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (177, N'Jack', N'Livingston', N'JLIVINGS', N'011.44.1644.429264', CAST(N'2006-04-23' AS Date), N'SA_REP', 8400, 0, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (178, N'Kimberely', N'Grant', N'KGRANT', N'011.44.1644.429263', CAST(N'2007-05-24' AS Date), N'SA_REP', 7000, 0, 149, 0)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (179, N'Charles', N'Johnson', N'CJOHNSON', N'011.44.1644.429262', CAST(N'2008-01-04' AS Date), N'SA_REP', 6200, 0, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (180, N'Winston', N'Taylor', N'WTAYLOR', N'650.507.9876', CAST(N'2006-01-24' AS Date), N'SH_CLERK', 3200, 0, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (181, N'Jean', N'Fleaur', N'JFLEAUR', N'650.507.9877', CAST(N'2006-02-23' AS Date), N'SH_CLERK', 3100, 0, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (182, N'Martha', N'Sullivan', N'MSULLIVA', N'650.507.9878', CAST(N'2007-06-21' AS Date), N'SH_CLERK', 2500, 0, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (183, N'Girard', N'Geoni', N'GGEONI', N'650.507.9879', CAST(N'2008-02-03' AS Date), N'SH_CLERK', 2800, 0, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (184, N'Nandita', N'Sarchand', N'NSARCHAN', N'650.509.1876', CAST(N'2004-01-27' AS Date), N'SH_CLERK', 4200, 0, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (185, N'Alexis', N'Bull', N'ABULL', N'650.509.2876', CAST(N'2005-02-20' AS Date), N'SH_CLERK', 4100, 0, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (186, N'Julia', N'Dellinger', N'JDELLING', N'650.509.3876', CAST(N'2006-06-24' AS Date), N'SH_CLERK', 3400, 0, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (187, N'Anthony', N'Cabrio', N'ACABRIO', N'650.509.4876', CAST(N'2007-02-07' AS Date), N'SH_CLERK', 3000, 0, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (188, N'Kelly', N'Chung', N'KCHUNG', N'650.505.1876', CAST(N'2005-06-14' AS Date), N'SH_CLERK', 3800, 0, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (189, N'Jennifer', N'Dilly', N'JDILLY', N'650.505.2876', CAST(N'2005-08-13' AS Date), N'SH_CLERK', 3600, 0, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (190, N'Timothy', N'Gates', N'TGATES', N'650.505.3876', CAST(N'2006-07-11' AS Date), N'SH_CLERK', 2900, 0, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (191, N'Randall', N'Perkins', N'RPERKINS', N'650.505.4876', CAST(N'2007-12-19' AS Date), N'SH_CLERK', 2500, 0, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (192, N'Sarah', N'Bell', N'SBELL', N'650.501.1876', CAST(N'2004-02-04' AS Date), N'SH_CLERK', 4000, 0, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (193, N'Britney', N'Everett', N'BEVERETT', N'650.501.2876', CAST(N'2005-03-03' AS Date), N'SH_CLERK', 3900, 0, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (194, N'Samuel', N'McCain', N'SMCCAIN', N'650.501.3876', CAST(N'2006-07-01' AS Date), N'SH_CLERK', 3200, 0, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (195, N'Vance', N'Jones', N'VJONES', N'650.501.4876', CAST(N'2007-03-17' AS Date), N'SH_CLERK', 2800, 0, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (196, N'Alana', N'Walsh', N'AWALSH', N'650.507.9811', CAST(N'2006-04-24' AS Date), N'SH_CLERK', 3100, 0, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (197, N'Kevin', N'Feeney', N'KFEENEY', N'650.507.9822', CAST(N'2006-05-23' AS Date), N'SH_CLERK', 3000, 0, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (198, N'Donald', N'OConnell', N'DOCONNEL', N'650.507.9833', CAST(N'2007-06-21' AS Date), N'SH_CLERK', 2600, 0, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (199, N'Douglas', N'Grant', N'DGRANT', N'650.507.9844', CAST(N'2008-01-13' AS Date), N'SH_CLERK', 2600, 0, 124, 50)
GO
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (200, N'Jennifer', N'Whalen', N'JWHALEN', N'515.123.4444', CAST(N'2003-09-17' AS Date), N'AD_ASST', 4400, 0, 101, 10)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (201, N'Michael', N'Hartstein', N'MHARTSTE', N'515.123.5555', CAST(N'2004-02-17' AS Date), N'MK_MAN', 13000, 0, 100, 20)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (202, N'Pat', N'Fay', N'PFAY', N'603.123.6666', CAST(N'2005-08-17' AS Date), N'MK_REP', 6000, 0, 201, 20)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (203, N'Susan', N'Mavris', N'SMAVRIS', N'515.123.7777', CAST(N'2002-06-07' AS Date), N'HR_REP', 6500, 0, 101, 40)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (204, N'Hermann', N'Baer', N'HBAER', N'515.123.8888', CAST(N'2002-06-07' AS Date), N'PR_REP', 10000, 0, 101, 70)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (205, N'Shelley', N'Higgins', N'SHIGGINS', N'515.123.8080', CAST(N'2002-06-07' AS Date), N'AC_MGR', 12000, 0, 101, 110)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (206, N'William', N'Gietz', N'WGIETZ', N'515.123.8181', CAST(N'2002-06-07' AS Date), N'AC_ACCOUNT', 8300, 0, 205, 110)
GO
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'AD_PRES', N'President', 20000, 40000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'FI_MGR', N'Finance Manager', 8200, 16000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'FI_ACCOUNT', N'Accountant', 4200, 9000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'AC_MGR', N'Accounting Manager', 8200, 16000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'AC_ACCOUNT', N'Public Accountant', 4200, 9000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'SA_MAN', N'Sales Manager', 10000, 20000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'SA_REP', N'Sales Representative', 6000, 12000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'PU_MAN', N'Purchasing Manager', 8000, 15000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'PU_CLERK', N'Purchasing Clerk', 2500, 5500)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'ST_MAN', N'Stock Manager', 5500, 8500)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'ST_CLERK', N'Stock Clerk', 2000, 5000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'SH_CLERK', N'Shipping Clerk', 2500, 5500)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'IT_PROG', N'Programmer', 4000, 10000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'MK_MAN', N'Marketing Manager', 9000, 15000)
GO





--1. Create a scalar function that accepts string as a parameter and return whether the string is correct mail Id or not

Create function [dbo].[fncheckMailId3]
(@mailId varchar(200))
returns bit 
as
begin
declare @flag bit 
	set @mailId=ltrim(@mailId)

	set @flag=case when @mailId like '[a-z,0-9,_,+,-]%@[a-z,0-9,-]%.[a-z][a-z]%' then 1
					else 0
				end
	return @flag;
end;
go

select dbo.fncheckMailId3('priyal@')

--2.Create a tabular function that accepts one parameter as employee department and return the employees working in that department

create function  dbo.inl_employeedept
(@department int)
returns table
as
return(select employee_id,first_name,last_name from employees join departments on employees.department_id=departments.department_id where departments.department_id=@department);


select * from [dbo].[inl_employeedept](100)

--3.Create a function that returns the data of employee records based on the page number passed. Parameters required are PageNumber, PageSize (Hint: use Row_Number, Partition by)

create function paging(@PageNumber int, @PageSize int)
returns table as
return (select * from EMPLOYEES
order by Employee_ID
offset (@pageNumber-1)*@PageSize rows
fetch next @pagesize rows only)


select * from dbo.paging(2,10)

--4.Select EmpId, FirstName, LastName, PhoneNumber, Email from Employees’ check the execution plan for the given query and save it. Now, optimize the query and then check the execution plan and save it.
select  employee_id,first_name,last_name,phone_number,email from employees ;

--5.Create a stored procedure that prints the employee info in the following format: 'employeename' hired on 'hiredate' has a salary package of 'salarypackage'
--Print only for 10 employees
--Implement it using cursor and then with while loop also

DECLARE @name VARCHAR(255);
    DECLARE @joining_date DATE;
    DECLARE @salary int;

    DECLARE employee_cursor CURSOR scroll FOR
        SELECT TOP 10 first_name, hire_date, salary FROM employees;

    OPEN employee_cursor;

    FETCH first FROM employee_cursor INTO @name, @joining_date, @salary;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT CONCAT(@name, ' hired on ', @joining_date, ' has a salary package of ', @salary);

        FETCH NEXT FROM employee_cursor INTO @name, @joining_date, @salary;
    END;

    CLOSE employee_cursor;
    DEALLOCATE employee_cursor;

select * from employees
select * from departments;




