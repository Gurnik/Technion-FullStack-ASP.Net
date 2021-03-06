USE [FactoryManagementDB]
GO
/****** Object:  Table [dbo].[department]    Script Date: 4/14/2021 5:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[manager] [int] NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 4/14/2021 5:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](20) NOT NULL,
	[last_name] [varchar](20) NOT NULL,
	[start_work_year] [int] NOT NULL,
	[departmentID] [int] NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeShift]    Script Date: 4/14/2021 5:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeShift](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[employeeID] [int] NOT NULL,
	[shiftID] [int] NOT NULL,
 CONSTRAINT [PK_employeeShift] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shift]    Script Date: 4/14/2021 5:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shift](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[start_time] [int] NOT NULL,
	[end_time] [int] NOT NULL,
 CONSTRAINT [PK_shift] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 4/14/2021 5:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](20) NOT NULL,
	[user_name] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[num_of_actions] [int] NOT NULL,
	[last_login] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[department] ON 

INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (1, N'QA', 1018)
INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (2, N'RND', 1019)
INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (3, N'Help Desk', 3)
INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (4, N'Automation', 4)
INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (6, N'Finance', 5)
INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (7, N'HR', 7)
INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (8, N'Noc', 16)
INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (9, N'Customer Service', 8)
INSERT [dbo].[department] ([ID], [name], [manager]) VALUES (1016, N'Unassigned Managers', 1024)
SET IDENTITY_INSERT [dbo].[department] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (3, N'Mohammad', N'Omari', 2001, 3)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (4, N'Daniel', N'Kandalaft', 2014, 4)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (5, N'Shadi', N'Sliman', 2012, 6)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (7, N'Adi', N'Lama', 2000, 7)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (8, N'Randa', N'Bouganim', 2002, 9)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (9, N'Gabi', N'Israeli', 2020, 8)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (10, N'Amir', N'Gluzman', 2010, 2)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (11, N'Alon', N'Yair', 2012, 2)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (12, N'Fadi', N'Amr', 2016, 4)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (13, N'Moad', N'Shilaui', 2017, 6)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (14, N'Lareen', N'Mahajna', 2017, 4)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (16, N'Sharbel', N'Aboud', 2015, 8)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (23, N'Amos', N'Moshe', 1999, 1016)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (24, N'Eli', N'Giora', 2019, 1016)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (1018, N'Gilad', N'Tenne', 2015, 1)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (1019, N'Giora', N'Hovav', 2008, 2)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (1021, N'Asi', N'Dahan', 1994, 1016)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (1022, N'Arik', N'Netanyahu', 1977, 1)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (1023, N'Alon', N'Harazi', 1980, 1014)
INSERT [dbo].[employee] ([ID], [first_name], [last_name], [start_work_year], [departmentID]) VALUES (1024, N'Dror', N'Gviazda', 1997, 1016)
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[employeeShift] ON 

INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (12, 3, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (13, 3, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (14, 3, 5)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (15, 3, 7)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (16, 3, 9)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (17, 4, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (18, 4, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (19, 4, 4)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (20, 4, 5)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (21, 5, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (22, 5, 4)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (23, 5, 5)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (24, 5, 6)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (25, 6, 7)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (26, 6, 9)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (27, 7, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (28, 7, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (29, 7, 4)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (30, 7, 5)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (31, 7, 7)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (32, 7, 9)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (33, 8, 9)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (34, 8, 10)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (35, 9, 6)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (36, 9, 8)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (37, 10, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (38, 10, 4)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (39, 10, 6)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (40, 10, 8)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (41, 10, 10)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (42, 11, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (43, 12, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (44, 12, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (45, 13, 6)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (46, 13, 8)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (47, 13, 10)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (50, 14, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (51, 14, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (52, 14, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (53, 16, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (54, 16, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (55, 16, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1058, 23, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1059, 24, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1060, 23, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1061, 24, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1062, 1018, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1063, 1018, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1064, 1018, 5)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1065, 1018, 7)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1066, 1018, 9)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1067, 1019, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1068, 1019, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1069, 1019, 5)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1070, 1019, 7)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1071, 1019, 9)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1072, 24, 5)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1074, 3, 18)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1075, 1023, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1076, 1024, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1077, 1024, 3)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1078, 1024, 5)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1079, 1024, 7)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1080, 1024, 9)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1081, 1021, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1082, 1021, 4)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1083, 1021, 6)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1084, 1021, 8)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1085, 1022, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1086, 1022, 2)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1087, 1022, 4)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1088, 1022, 6)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1089, 1022, 7)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1090, 1023, 1)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1091, 1023, 8)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1092, 1023, 9)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1093, 1023, 10)
INSERT [dbo].[employeeShift] ([ID], [employeeID], [shiftID]) VALUES (1094, 1023, 11)
SET IDENTITY_INSERT [dbo].[employeeShift] OFF
GO
SET IDENTITY_INSERT [dbo].[shift] ON 

INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (1, CAST(N'2021-04-04T09:00:00.000' AS DateTime), 9, 18)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (2, CAST(N'2021-04-04T18:00:00.000' AS DateTime), 18, 24)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (3, CAST(N'2021-04-05T09:00:00.000' AS DateTime), 9, 18)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (4, CAST(N'2021-04-05T18:00:00.000' AS DateTime), 18, 24)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (5, CAST(N'2021-04-06T09:00:00.000' AS DateTime), 9, 18)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (6, CAST(N'2021-04-06T18:00:00.000' AS DateTime), 18, 24)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (7, CAST(N'2021-04-07T09:00:00.000' AS DateTime), 9, 18)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (8, CAST(N'2021-04-07T18:00:00.000' AS DateTime), 18, 24)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (9, CAST(N'2021-04-08T09:00:00.000' AS DateTime), 9, 18)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (10, CAST(N'2021-04-08T18:00:00.000' AS DateTime), 18, 24)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (11, CAST(N'2021-04-09T09:00:00.000' AS DateTime), 9, 18)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (12, CAST(N'2021-04-09T18:00:00.000' AS DateTime), 18, 24)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (13, CAST(N'2021-04-10T09:00:00.000' AS DateTime), 9, 18)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (14, CAST(N'2021-04-10T18:00:00.000' AS DateTime), 18, 24)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (15, CAST(N'2021-04-30T00:00:00.000' AS DateTime), 11, 14)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (16, CAST(N'2021-04-27T00:00:00.000' AS DateTime), 7, 14)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (17, CAST(N'2021-04-28T00:00:00.000' AS DateTime), 5, 6)
INSERT [dbo].[shift] ([ID], [date], [start_time], [end_time]) VALUES (18, CAST(N'2021-04-20T00:00:00.000' AS DateTime), 1, 24)
SET IDENTITY_INSERT [dbo].[shift] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([ID], [full_name], [user_name], [password], [num_of_actions], [last_login]) VALUES (1, N'Daniel Kandalaft', N'daniel.kandalaft', N'danielK', 4, CAST(N'2021-04-14' AS Date))
INSERT [dbo].[user] ([ID], [full_name], [user_name], [password], [num_of_actions], [last_login]) VALUES (2, N'Osher Cohen', N'osher.cohen', N'osherC', 4, CAST(N'2021-04-12' AS Date))
INSERT [dbo].[user] ([ID], [full_name], [user_name], [password], [num_of_actions], [last_login]) VALUES (3, N'Dana Yoval', N'dana.yoval', N'danaY', 2, CAST(N'2021-04-12' AS Date))
INSERT [dbo].[user] ([ID], [full_name], [user_name], [password], [num_of_actions], [last_login]) VALUES (4, N'Mario Haddad', N'mario.haddad', N'marioH', 10, CAST(N'2021-04-12' AS Date))
INSERT [dbo].[user] ([ID], [full_name], [user_name], [password], [num_of_actions], [last_login]) VALUES (5, N'Jeff Gates', N'jeff.gates', N'jeffG', 10, CAST(N'2021-04-12' AS Date))
INSERT [dbo].[user] ([ID], [full_name], [user_name], [password], [num_of_actions], [last_login]) VALUES (6, N'Bill Bezos', N'bill.bezos', N'billB', 4, CAST(N'2021-04-09' AS Date))
SET IDENTITY_INSERT [dbo].[user] OFF
GO
