USE [RastaHomeTask]
GO
/****** Object:  Schema [Employee]    Script Date: 7/6/2020 2:17:26 PM ******/
CREATE SCHEMA [Employee]
GO
/****** Object:  Schema [Log]    Script Date: 7/6/2020 2:17:26 PM ******/
CREATE SCHEMA [Log]
GO
/****** Object:  Schema [Security]    Script Date: 7/6/2020 2:17:26 PM ******/
CREATE SCHEMA [Security]
GO
/****** Object:  Table [Employee].[Employees]    Script Date: 7/6/2020 2:17:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Employee].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonalCode] [varchar](13) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[PhoneNumber] [varchar](100) NULL,
	[City] [varchar](255) NULL,
	[Company] [varchar](255) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Log].[Exceptions]    Script Date: 7/6/2020 2:17:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Log].[Exceptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [nvarchar](100) NULL,
	[IPAddress] [nvarchar](100) NULL,
	[ExceptionMsg] [nvarchar](100) NULL,
	[ExceptionType] [nvarchar](100) NULL,
	[ExceptionSource] [nvarchar](max) NULL,
	[ExceptionURL] [varchar](200) NULL,
	[Logdate] [datetime] NULL,
 CONSTRAINT [PK_Exceptions] PRIMARY KEY CLUSTERED 
(
	[ID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Security].[Audiences]    Script Date: 7/6/2020 2:17:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Security].[Audiences](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[ClientId] [nvarchar](500) NOT NULL,
	[Base64Secret] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Audiences] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Security].[Roles]    Script Date: 7/6/2020 2:17:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Security].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Security].[UserRoles]    Script Date: 7/6/2020 2:17:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Security].[UserRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Security].[Users]    Script Date: 7/6/2020 2:17:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Security].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[NationalCode] [nvarchar](15) NULL,
	[Mobile] [nvarchar](15) NULL,
	[Email] [nvarchar](500) NULL,
	[Address] [nvarchar](1000) NULL,
	[UserName] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[RegisterDate] [datetime] NOT NULL,
	[InsertUserId] [int] NOT NULL,
	[InsertDateTime] [datetime] NOT NULL,
	[UpdateUserId] [int] NULL,
	[UpdateDateTime] [datetime] NULL,
	[UserType] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Employee].[Employees] ON 
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (1, N'16200109 8710', N'Paki', N'Boyle', N'vel.venenatis@augue.ca', N'213-9388', N'Tubeke Tubize', N'Cras Sed Leo Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (2, N'16000405 7048', N'Hammett', N'Mcclain', N'non.magna@vitae.com', N'375-6391', N'Saint-Remy-Geest', N'Posuere At Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (3, N'16780223 0362', N'Brielle', N'Cook', N'Phasellus@placerataugueSed.co.uk', N'689-7650', N'Lochristi', N'Duis Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (4, N'16160617 7713', N'Nehru', N'Goff', N'ut.erat@libero.net', N'218-1068', N'Boston', N'Nunc Sed Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (5, N'16380130 1643', N'Alexandra', N'Dudley', N'adipiscing@risusDonec.org', N'1-443-491-8417', N'Dabgram', N'Luctus LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (6, N'16870821 9715', N'Linus', N'Dejesus', N'rhoncus.Proin.nisl@atsemmolestie.co.uk', N'1-309-941-7104', N'Guadalajara', N'Montes Nascetur Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (7, N'16960918 9130', N'Kylee', N'Santos', N'tempus@neque.net', N'1-526-956-4970', N'Mexico City', N'Nulla Eget Metus PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (8, N'16100924 6834', N'Vanna', N'Ballard', N'Sed.neque.Sed@nequenonquam.edu', N'341-5327', N'Krasnozavodsk', N'Vel Quam Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (9, N'16630902 2579', N'Unity', N'Strong', N'Proin.dolor.Nulla@Curabiturconsequatlectus.net', N'232-2386', N'Sogliano Cavour', N'Amet Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (10, N'16860127 1359', N'Kai', N'Mercer', N'Proin.nisl.sem@elementumduiquis.net', N'1-114-504-6639', N'Oria', N'Nisi LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (11, N'16641105 3561', N'Dai', N'Faulkner', N'mattis.semper.dui@semsempererat.ca', N'211-3302', N'Joondalup', N'Sit Amet PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (12, N'16310420 8545', N'Fleur', N'Sosa', N'neque@sed.org', N'665-0814', N'Outremont', N'Arcu Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (13, N'16340312 1852', N'Palmer', N'Copeland', N'Aenean.massa@Pellentesquetincidunttempus.org', N'862-4212', N'Sainte-Flavie', N'Ornare Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (14, N'16390220 1767', N'Kaseem', N'Morrison', N'penatibus.et.magnis@duiFusce.org', N'1-437-926-4100', N'Iskenderun', N'Lorem Auctor Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (15, N'16930717 2347', N'Ariel', N'Garrison', N'nec@placerat.ca', N'956-1269', N'Sirsa', N'Tortor Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (16, N'16730915 7449', N'Isaac', N'Holcomb', N'et.nunc@at.com', N'1-727-483-3464', N'Weymouth', N'Mauris Molestie Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (17, N'16110217 3422', N'Blair', N'Serrano', N'mauris.sit@ultricies.edu', N'154-5809', N'Chiusa/Klausen', N'Et Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (18, N'16440912 6499', N'Glenna', N'Bryant', N'sapien.molestie.orci@tellusPhasellus.edu', N'1-152-215-7700', N'Châlons-en-Champagne', N'Faucibus Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (19, N'16120610 4141', N'Michael', N'Winters', N'id.mollis@scelerisque.ca', N'249-2150', N'Trois-Rivi?res', N'Justo Nec Ante Consulting', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (20, N'16841209 1160', N'Nero', N'Mays', N'sit@risus.co.uk', N'1-751-755-2962', N'Banchory', N'Et Libero LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (21, N'16491125 3716', N'Bruno', N'Mcintosh', N'Nam.nulla@CraspellentesqueSed.co.uk', N'1-543-918-0848', N'Koekelberg', N'Vivamus Nibh Dolor Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (22, N'16530226 1390', N'Uta', N'Harrison', N'Donec.at@dapibus.ca', N'437-4015', N'Price', N'Non PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (23, N'16130123 6590', N'Cassidy', N'Collins', N'amet.orci.Ut@nectempus.edu', N'180-6698', N'Maastricht', N'Erat Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (24, N'16390511 0379', N'Camilla', N'Madden', N'venenatis.lacus.Etiam@egetvenenatis.org', N'940-7686', N'Scanzano Jonico', N'Lobortis Tellus Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (25, N'16630515 3782', N'Hayley', N'Daniels', N'Donec.est.Nunc@non.ca', N'1-725-471-5758', N'Sint-Pieters-Woluwe', N'Dictum Eleifend Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (26, N'16830203 9071', N'Walker', N'Branch', N'tincidunt.adipiscing@laoreet.net', N'1-667-971-5017', N'Sloten', N'Est Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (27, N'16181028 7217', N'Arsenio', N'Rivers', N'eget.nisi.dictum@nequesedsem.net', N'236-9817', N'Castelmarte', N'Libero Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (28, N'16760606 8935', N'Damon', N'Snider', N'Nulla@velitSed.org', N'935-7468', N'Shaki', N'Arcu Vestibulum Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (29, N'16971203 9958', N'Kennan', N'Mathews', N'orci@vitaevelitegestas.com', N'1-860-626-1326', N'Emarèse', N'Vel Convallis Corp.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (30, N'16000217 8309', N'Mason', N'Harding', N'pede.ac@semsemper.edu', N'1-376-516-8036', N'Vaux-lez-Rosieres', N'Libero Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (31, N'16750205 7230', N'Vernon', N'Becker', N'bibendum@vehiculaet.net', N'1-311-301-3799', N'Kartaly', N'Hymenaeos Mauris Ut Consulting', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (32, N'16780716 8310', N'Rahim', N'Hood', N'non@maurissagittis.net', N'1-587-496-1943', N'Saint-Malo', N'Duis A Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (33, N'16760530 3291', N'Tatum', N'Callahan', N'netus.et.malesuada@estacfacilisis.edu', N'1-541-809-3233', N'Torre Cajetani', N'Mus Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (34, N'16530621 0203', N'Sacha', N'Curry', N'mi.lorem.vehicula@duiCum.ca', N'1-808-562-7482', N'Denpasar', N'Phasellus Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (35, N'16520723 1357', N'Lysandra', N'Gill', N'tincidunt@molestiein.edu', N'1-131-176-8847', N'BiercŽe', N'Placerat Eget Venenatis LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (36, N'16680109 5925', N'Tanek', N'Kinney', N'nec.mauris.blandit@enim.co.uk', N'872-9284', N'Treglio', N'Cursus Integer Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (37, N'16210103 9663', N'Isaac', N'Finley', N'libero.Proin@ornare.ca', N'1-922-842-6947', N'Rocourt', N'Porttitor Scelerisque Neque Consulting', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (38, N'16051217 3410', N'August', N'Short', N'fermentum.fermentum@nequevitaesemper.edu', N'1-883-123-5391', N'Saguenay', N'Viverra Maecenas Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (39, N'16521222 6004', N'Yeo', N'Alston', N'nec.luctus@nibhdolornonummy.edu', N'215-5503', N'St. Johann in Tirol', N'Magna PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (40, N'16101220 5082', N'TaShya', N'Maddox', N'arcu.Vestibulum.ante@Sedpharetra.edu', N'1-655-382-9266', N'Valley East', N'Sagittis Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (41, N'16680312 1323', N'Sonia', N'Nixon', N'cursus.non@erat.org', N'858-6104', N'Richmond', N'Justo Praesent Luctus Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (42, N'16800602 9899', N'Candice', N'Warner', N'tincidunt.dui.augue@auctornunc.edu', N'765-2414', N'Devizes', N'Congue A Aliquet Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (43, N'16540322 6755', N'Guy', N'Coffey', N'tellus.id.nunc@diamPellentesque.edu', N'1-674-430-4902', N'Camborne', N'Tincidunt Vehicula Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (44, N'16360422 8753', N'Kirk', N'Duncan', N'consequat@Vestibulumaccumsanneque.co.uk', N'1-999-294-5893', N'Hennigsdorf', N'Rutrum Eu Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (45, N'16261013 0847', N'Chanda', N'Woods', N'ipsum@dictumProineget.co.uk', N'257-8570', N'Strathcona County', N'Vivamus Non Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (46, N'16330208 0332', N'Autumn', N'Mcbride', N'ante.blandit.viverra@pretiumet.net', N'126-9677', N'Cheltenham', N'Fringilla Mi Lacinia LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (47, N'16410917 5523', N'Eagan', N'Carroll', N'lacus.Quisque@infaucibus.net', N'397-2198', N'Lombardsijde', N'Facilisis PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (48, N'16260507 6245', N'Lunea', N'Lynn', N'tempor@aliquetmagnaa.com', N'1-989-778-6198', N'Fort Collins', N'At Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (49, N'16440718 7105', N'Violet', N'Albert', N'Duis@anteipsumprimis.com', N'1-826-461-9685', N'Envigado', N'Aliquam Adipiscing Lobortis Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (50, N'16891129 9710', N'Cheryl', N'Graves', N'Duis@ridiculusmusProin.ca', N'643-8572', N'Saint-L?onard', N'Duis Volutpat Nunc Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (51, N'16410914 6607', N'Buckminster', N'Benson', N'magna.Cras@placeratvelit.edu', N'1-956-448-8787', N'Inuvik', N'Proin Vel Arcu Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (52, N'16250620 3658', N'Ferris', N'Coleman', N'Phasellus@lobortisClassaptent.com', N'556-5735', N'Steendorp', N'Euismod Est PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (53, N'16130207 7183', N'Katelyn', N'Brennan', N'molestie.tellus.Aenean@aptenttacitisociosqu.edu', N'1-710-862-6098', N'Beaconsfield', N'Dis Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (54, N'16720509 2237', N'Philip', N'Shelton', N'egestas.Duis.ac@Proin.com', N'1-819-593-4667', N'Plymouth', N'Ut Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (55, N'16540113 2146', N'Chiquita', N'Pennington', N'Etiam@neque.co.uk', N'247-4586', N'Bonnyville', N'Magnis Dis Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (56, N'16050608 4995', N'William', N'Lindsey', N'natoque.penatibus@Donecelementumlorem.com', N'300-6541', N'Wierde', N'Egestas Corp.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (57, N'16870916 5446', N'Hoyt', N'Newman', N'vel@magnanecquam.com', N'1-447-450-0139', N'Puerto Nariño', N'Lacus Etiam Bibendum Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (58, N'16480901 2414', N'Cadman', N'Kaufman', N'iaculis@lectus.com', N'823-5375', N'LiŽge', N'Pharetra Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (59, N'16770709 6017', N'Irene', N'Rios', N'urna@justoPraesent.ca', N'437-3340', N'Town of Yarmouth', N'Sit Amet Consectetuer LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (60, N'16840513 0314', N'Melissa', N'Patrick', N'tempus.lorem.fringilla@dignissim.edu', N'1-847-223-0371', N'Tiarno di Sopra', N'Aliquam Adipiscing Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (61, N'16380804 9500', N'Haley', N'Richard', N'et@utlacusNulla.org', N'515-6934', N'Bazzano', N'Curabitur Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (62, N'16820401 8157', N'Ella', N'Olsen', N'est.Nunc@dictumsapien.com', N'1-762-408-7640', N'Harrisburg', N'Ut Cursus LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (63, N'16540304 0230', N'Libby', N'Gallegos', N'dictum.Proin.eget@ametloremsemper.net', N'695-5342', N'Mapiripana', N'Dictum Augue LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (64, N'16060614 9730', N'Wallace', N'Woodward', N'Curabitur.ut@Crasinterdum.com', N'1-295-916-3737', N'Kincardine', N'Eleifend Cras Sed LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (65, N'16890602 5542', N'Alvin', N'Doyle', N'in.felis.Nulla@orciUt.ca', N'1-171-341-6399', N'Barddhaman', N'Est Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (66, N'16400822 1477', N'Jonah', N'Pacheco', N'egestas.Fusce@cursus.co.uk', N'1-987-426-9013', N'Labrecque', N'Leo Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (67, N'16661123 1314', N'Lacota', N'Copeland', N'non.vestibulum@urna.org', N'1-971-171-8933', N'Acquasanta Terme', N'Morbi Neque Tellus Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (68, N'16880223 1699', N'Randall', N'Klein', N'dui@Praesentinterdum.co.uk', N'385-7039', N'Coalville', N'Vitae LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (69, N'16160422 8906', N'Macon', N'Hurst', N'et.nunc@Morbinon.co.uk', N'225-1514', N'Chattanooga', N'Quis Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (70, N'16370906 2768', N'Nola', N'Christensen', N'nec@nonleo.edu', N'882-5464', N'Quilicura', N'Eu Eros Nam PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (71, N'16160313 9914', N'Clio', N'Davenport', N'ipsum@nonantebibendum.edu', N'1-189-217-8063', N'Houston', N'Eget Mollis Lectus Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (72, N'16241109 3251', N'Madonna', N'Diaz', N'Sed.nunc.est@DonecegestasAliquam.edu', N'551-7145', N'Parrano', N'Sed Et Libero Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (73, N'16861116 5666', N'Yoshi', N'Ramsey', N'ut@eratvitae.edu', N'1-619-221-7848', N'Newton Stewart', N'Elit Fermentum LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (74, N'16890522 7263', N'Giacomo', N'Goodman', N'natoque.penatibus.et@risus.net', N'386-4650', N'Saint-LŽger', N'Nulla Facilisi Sed Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (75, N'16950627 4563', N'Rina', N'Fry', N'pharetra.Quisque@velpedeblandit.org', N'529-2337', N'Valparai', N'Proin Vel Nisl Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (76, N'16160316 5885', N'Lynn', N'Vasquez', N'tellus@rutrum.co.uk', N'1-921-874-0089', N'Cincinnati', N'Justo Faucibus Lectus Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (77, N'16060719 3448', N'Stephanie', N'Reyes', N'Nunc@amet.net', N'545-0191', N'Haripur', N'Sed Tortor Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (78, N'16840330 3574', N'Amir', N'Coleman', N'Morbi.vehicula.Pellentesque@Sednulla.ca', N'1-360-754-7052', N'West Vancouver', N'Bibendum Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (79, N'16211026 7214', N'Martin', N'Huber', N'scelerisque@et.org', N'1-194-311-7590', N'Karlsruhe', N'Purus Sapien Gravida Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (80, N'16391003 3061', N'Tad', N'Johns', N'eu.ultrices@Nunclaoreet.org', N'1-389-539-1460', N'Cardiff', N'Accumsan Sed LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (81, N'16400127 0406', N'Maryam', N'Stein', N'consequat@estvitaesodales.org', N'398-0023', N'Blue Mountains', N'Quis Pede Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (82, N'16201016 5286', N'August', N'Madden', N'Donec.elementum.lorem@telluslorem.co.uk', N'380-1609', N'Madrid', N'Rhoncus Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (83, N'16241220 3263', N'Malik', N'Branch', N'tempor.est@malesuadaiderat.co.uk', N'1-707-744-1976', N'Hornsea', N'Donec Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (84, N'16580508 7573', N'Octavius', N'Bell', N'urna.justo@primisinfaucibus.net', N'122-1870', N'Pedace', N'Ornare Egestas Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (85, N'16510917 2642', N'Kermit', N'Herman', N'in@aliquetlibero.co.uk', N'1-684-246-5565', N'Langenburg', N'Nec LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (86, N'16571113 1408', N'Elizabeth', N'Mayer', N'urna.nec.luctus@lobortisquam.org', N'931-9835', N'Neustrelitz', N'Quis Diam Luctus Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (87, N'16171228 1391', N'Kiara', N'Powell', N'libero.Proin.sed@diamnunc.net', N'506-7967', N'Landeck', N'Mauris Magna Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (88, N'16590418 9106', N'Felix', N'Mooney', N'ut.eros@vellectusCum.net', N'1-938-699-4147', N'l''Escaillre', N'Consequat Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (89, N'16350330 5553', N'Neil', N'Valentine', N'turpis.Aliquam.adipiscing@pedesagittis.com', N'1-931-390-9665', N'Sparwood', N'Est Corp.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (90, N'16911122 2718', N'Athena', N'Winters', N'inceptos.hymenaeos@justoProinnon.co.uk', N'123-4092', N'Cumnock', N'Nec Quam Curabitur Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (91, N'16401013 6416', N'Cleo', N'Ryan', N'nibh@risusQuisquelibero.org', N'872-9913', N'Bath', N'Enim Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (92, N'16620530 8700', N'Madonna', N'Moody', N'interdum@nulla.net', N'1-247-874-3667', N'Biesme-sous-Thuin', N'Vivamus Molestie Dapibus Consulting', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (93, N'16560322 0962', N'Raya', N'Christian', N'facilisis.magna@risusDuis.org', N'1-593-537-3970', N'Baton Rouge', N'Magnis Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (94, N'16381208 2133', N'Honorato', N'Hayes', N'amet.diam.eu@pellentesqueafacilisis.ca', N'1-550-873-4156', N'Zoetermeer', N'Mauris Aliquam Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (95, N'16210213 6450', N'Finn', N'Kaufman', N'non@egetlacusMauris.com', N'464-6491', N'Denny', N'Scelerisque Mollis Phasellus Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (96, N'16181127 0626', N'Carly', N'Lynch', N'dapibus.id@pedeCumsociis.co.uk', N'635-4150', N'Hallaar', N'Bibendum Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (97, N'16731223 9705', N'Bell', N'Hines', N'nisl@pharetra.co.uk', N'1-873-902-1590', N'Siculiana', N'Aliquet Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (98, N'16020324 1252', N'Reece', N'Odom', N'venenatis.lacus.Etiam@magnisdis.org', N'1-628-422-9961', N'Turbo', N'Aliquam Consulting', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (99, N'16170625 4313', N'Kay', N'Banks', N'in@vulputate.ca', N'1-335-241-1619', N'Poucet', N'Proin PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (100, N'16550615 7626', N'Scarlet', N'Cash', N'blandit.congue.In@lorem.net', N'1-269-815-5281', N'Dera Bugti', N'Suspendisse Sed Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (101, N'16870612 8256', N'Carson', N'Aguirre', N'taciti@accumsan.net', N'238-9646', N'Pointe-du-Lac', N'Neque Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (102, N'16361206 1378', N'Alden', N'Craft', N'varius@Aeneanegetmagna.edu', N'1-174-588-2426', N'Salem', N'Sit Corp.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (103, N'16080807 5147', N'Raymond', N'Shannon', N'a.facilisis.non@diamSed.org', N'1-615-554-9731', N'Malang', N'Commodo At Libero Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (104, N'16610414 8652', N'Jack', N'Massey', N'eget.venenatis.a@utdolordapibus.com', N'1-474-753-3462', N'Outrijve', N'At Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (105, N'16890530 5879', N'Nathan', N'Kim', N'a.odio@in.ca', N'1-705-326-0273', N'Peñaflor', N'Et Arcu LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (106, N'16680826 6016', N'Ursula', N'Hays', N'vitae.nibh@maurisIntegersem.org', N'362-1940', N'Güssing', N'Fermentum Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (107, N'16120528 5123', N'Alea', N'Mosley', N'augue.ac.ipsum@diam.ca', N'702-1700', N'Vlimmeren', N'In Hendrerit Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (108, N'16291125 9659', N'Hanna', N'Shaffer', N'placerat.eget.venenatis@et.ca', N'722-0421', N'Mariquina', N'Ac Ipsum Phasellus Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (109, N'16000728 3831', N'Felix', N'Marshall', N'odio.vel.est@sempercursusInteger.org', N'261-0245', N'Solre-sur-Sambre', N'Primis In Faucibus Corp.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (110, N'16600502 9605', N'Helen', N'Christian', N'interdum@Vivamusnibhdolor.net', N'420-0223', N'Saint-Mard', N'Mollis Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (111, N'16570316 5398', N'Janna', N'Shepherd', N'vel@egestasurna.com', N'548-3055', N'Carpignano Salentino', N'Orci Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (112, N'16971030 3489', N'Lars', N'Henderson', N'dignissim@neque.org', N'1-331-980-2073', N'Ollolai', N'Placerat Velit Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (113, N'16160520 8972', N'Ignacia', N'Daniels', N'Cras.dictum@dapibusligulaAliquam.org', N'206-5723', N'Aisén', N'Fermentum Arcu Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (114, N'16490706 4366', N'Evangeline', N'Whitney', N'risus@ultricessitamet.com', N'541-2700', N'Savona', N'Praesent Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (115, N'16650120 3514', N'Salvador', N'Rocha', N'aliquet@ametconsectetuer.net', N'660-7523', N'Hertsberge', N'Vel Pede Blandit Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (116, N'16281020 2727', N'Alika', N'Berg', N'magna@dui.edu', N'1-755-144-0806', N'Mojokerto', N'Donec Tempus Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (117, N'16440112 4385', N'Kelly', N'Sherman', N'non@Sed.edu', N'915-2316', N'Auxerre', N'Arcu Imperdiet LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (118, N'16090501 2035', N'Reed', N'White', N'sapien@laoreetlectusquis.net', N'283-0886', N'Orangeville', N'Eu Arcu Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (119, N'16530712 9576', N'Samantha', N'Roach', N'nibh.Quisque.nonummy@Loremipsum.ca', N'550-7795', N'Warspite', N'Molestie Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (120, N'16270427 6290', N'Gemma', N'Roman', N'ultrices.iaculis.odio@atfringilla.net', N'806-4900', N'Enines', N'Quam Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (121, N'16360418 0988', N'Cadman', N'Benton', N'vulputate.mauris.sagittis@molestie.net', N'1-790-618-9077', N'Esterzili', N'Ultrices LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (122, N'16440416 5013', N'Porter', N'Wynn', N'Donec.porttitor@at.edu', N'1-791-364-0654', N'San Isidro de El General', N'Nec Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (123, N'16140314 7943', N'Gretchen', N'Mcmahon', N'lacus.Ut@aliquet.net', N'888-3528', N'Chapadinha', N'Lorem Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (124, N'16560404 5483', N'Anjolie', N'Navarro', N'Nulla.interdum@Etiamvestibulummassa.co.uk', N'171-9060', N'Mosocw', N'Phasellus Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (125, N'16430527 8055', N'William', N'Ray', N'ante.dictum.cursus@malesuadaut.org', N'358-4097', N'Vaulx-lez-Chimay', N'Placerat Orci Lacus LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (126, N'16690521 6393', N'Gisela', N'Kramer', N'eget.odio.Aliquam@egestas.com', N'1-766-758-5627', N'Barbania', N'Ipsum Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (127, N'16310126 3170', N'Jenette', N'Koch', N'ullamcorper.Duis.cursus@nuncinterdum.net', N'1-105-332-4655', N'Lewiston', N'Ornare Elit Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (128, N'16440203 7958', N'Nissim', N'Austin', N'placerat@pedePraesent.ca', N'252-4763', N'Milford Haven', N'Vivamus Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (129, N'16070530 4723', N'Kasimir', N'Lloyd', N'convallis.convallis.dolor@parturient.net', N'327-8059', N'Nederokkerzeel', N'Sed Nulla Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (130, N'16150603 7397', N'Jin', N'Rodriguez', N'taciti.sociosqu.ad@Ut.net', N'347-6086', N'San Ramón', N'Neque In Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (131, N'16571117 6684', N'MacKenzie', N'Harvey', N'libero.lacus@Inscelerisquescelerisque.org', N'1-344-371-6374', N'Zwettl-Niederösterreich', N'Penatibus Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (132, N'16850624 6126', N'Fatima', N'Kirby', N'et@iaculisodio.co.uk', N'716-6059', N'La Granja', N'Aliquam Eros Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (133, N'16870901 4065', N'Robin', N'Kemp', N'nascetur@tristiquealiquet.edu', N'392-2521', N'Cortil-Noirmont', N'Donec Tempus Lorem Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (134, N'16860328 4046', N'Sylvester', N'Wheeler', N'metus.In.nec@ut.ca', N'1-987-199-2549', N'Bolzano/Bozen', N'Est Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (135, N'16390922 8185', N'Colt', N'Norton', N'montes.nascetur@felis.ca', N'1-186-227-9756', N'Cavasso Nuovo', N'Erat Etiam Consulting', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (136, N'16180830 6102', N'Raphael', N'Chen', N'vitae.sodales.nisi@eratvolutpatNulla.co.uk', N'1-657-793-4724', N'Opglabbeek', N'Auctor Velit Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (137, N'16541101 0415', N'Irma', N'Buckner', N'auctor.nunc.nulla@tellus.org', N'1-110-347-8918', N'Oxford', N'Dignissim Lacus Aliquam Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (138, N'16090727 8709', N'Nero', N'Dawson', N'in@cursus.ca', N'1-659-981-0234', N'Lübeck', N'Malesuada Fames Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (139, N'16731010 1253', N'Alfonso', N'Simpson', N'primis@et.org', N'1-451-302-5932', N'Rocky View', N'Inceptos Hymenaeos Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (140, N'16820122 3412', N'Fitzgerald', N'Velez', N'ante@lectusa.ca', N'817-5360', N'Vollezele', N'Metus In PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (141, N'16060126 7768', N'Eliana', N'Davidson', N'cursus@aliquet.co.uk', N'1-147-256-0963', N'Selkirk', N'Laoreet PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (142, N'16040104 6594', N'Benjamin', N'Mitchell', N'diam@imperdietdictummagna.edu', N'1-414-582-4863', N'Pica', N'Suspendisse Tristique Neque Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (143, N'16010106 1596', N'Madeline', N'Singleton', N'ac.nulla@posuere.net', N'1-235-127-1813', N'Essen', N'At Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (144, N'16410917 0003', N'Stuart', N'Russo', N'Phasellus.dolor.elit@eu.edu', N'1-425-364-6397', N'Bayeux', N'Lectus LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (145, N'16210213 4190', N'Odette', N'Cook', N'vitae.diam@semper.org', N'1-963-138-8708', N'Beaconsfield', N'Senectus Et Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (146, N'16970310 4951', N'Hiram', N'Sanford', N'Nam.tempor@Suspendisse.edu', N'224-1989', N'Palencia', N'Augue Eu Tellus Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (147, N'16071124 3204', N'Ciara', N'Mccullough', N'quis.diam@rutrum.edu', N'949-2067', N'Aguazul', N'Et Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (148, N'16020715 5409', N'Kenneth', N'Wheeler', N'odio@risusMorbi.ca', N'433-5066', N'Omsk', N'Ac Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (149, N'16231122 9138', N'Medge', N'Allison', N'nec.tempus.mauris@Pellentesquehabitant.com', N'1-234-392-5174', N'Bear', N'Nisi Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (150, N'16170130 6043', N'Len', N'Watson', N'euismod@tempuslorem.com', N'1-272-135-9524', N'Devon', N'Leo LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (151, N'16830819 7733', N'Dexter', N'Park', N'nulla@lacusvariuset.co.uk', N'1-557-441-5882', N'Juneau', N'Lorem Sit Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (152, N'16400106 3553', N'Lionel', N'Acosta', N'non.leo.Vivamus@montesnasceturridiculus.net', N'402-4276', N'Niel-bij-As', N'Erat Eget Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (153, N'16160901 6660', N'Isabelle', N'Freeman', N'Aenean.gravida.nunc@adui.net', N'1-866-728-1909', N'Bastia', N'Non Magna Nam Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (154, N'16150718 2333', N'Garrett', N'Pollard', N'aliquam.eu@habitantmorbitristique.org', N'899-2748', N'Kawawachikamach', N'Pellentesque A Facilisis Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (155, N'16170820 0736', N'Emery', N'Maynard', N'diam@vulputatemauris.ca', N'289-2975', N'Gerpinnes', N'Non Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (156, N'16490511 6283', N'Christen', N'Callahan', N'erat@liberoestcongue.ca', N'1-890-801-2920', N'Gondiya', N'Phasellus Libero Corp.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (157, N'16810930 2110', N'Anthony', N'Hardin', N'orci.luctus@feugiat.edu', N'604-0818', N'Ghaziabad', N'Phasellus Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (158, N'16220730 7816', N'Tobias', N'Pittman', N'magna@Phasellusfermentumconvallis.ca', N'525-6337', N'North Cowichan', N'Aliquet Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (159, N'16660418 9834', N'Rajah', N'Greer', N'quam@faucibus.ca', N'1-712-495-6006', N'Sainte-Ode', N'Cras Dolor Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (160, N'16541015 6946', N'Xavier', N'Bean', N'nec.metus@tinciduntduiaugue.co.uk', N'1-212-253-8492', N'Vico nel Lazio', N'Sem Molestie LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (161, N'16181204 0424', N'Asher', N'Ayala', N'magna.Cras.convallis@ac.ca', N'126-9139', N'Purulia', N'Amet Limited', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (162, N'16230805 9787', N'Giselle', N'Preston', N'purus.mauris@ategestasa.co.uk', N'1-264-302-8327', N'Kurovskoye', N'Molestie Tortor Nibh Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (163, N'16281103 1182', N'Samantha', N'Peck', N'ipsum.porta@felis.net', N'1-563-589-8579', N'Wels', N'Lectus Rutrum Urna LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (164, N'16850411 1793', N'Ainsley', N'English', N'convallis.ligula@indolorFusce.net', N'418-0092', N'Tufo', N'Accumsan Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (165, N'16261224 0636', N'Callum', N'Parks', N'faucibus.orci@euligula.edu', N'266-6058', N'Cirencester', N'Phasellus Elit Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (166, N'16381002 2859', N'Sebastian', N'Meyers', N'eu.elit@viverraDonectempus.co.uk', N'1-685-981-5069', N'Sint-Agatha-Berchem', N'Sapien Cursus Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (167, N'16711022 9650', N'Blaze', N'Bowers', N'cursus.Nunc@tortornibh.edu', N'1-783-832-0083', N'Gujranwala', N'Diam Corp.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (168, N'16730613 9564', N'Rajah', N'Cochran', N'dolor@nibhAliquamornare.org', N'511-3992', N'Feilding', N'Non Lacinia Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (169, N'16540917 9685', N'Octavius', N'Spencer', N'dictum@Nunc.edu', N'126-1233', N'Chandrapur', N'Ac Tellus Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (170, N'16961009 0426', N'Hashim', N'Rush', N'lobortis.nisi@etmagnaPraesent.ca', N'668-7459', N'Altmünster', N'Vestibulum Ante Industries', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (171, N'16741207 4077', N'Sonya', N'Hartman', N'Fusce.mollis@Donec.ca', N'581-4112', N'Castanhal', N'Curabitur Massa PC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (172, N'16810308 1728', N'Dieter', N'Carson', N'est.arcu@gravidamolestiearcu.org', N'1-655-494-7857', N'Liverpool', N'Feugiat Placerat Corporation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (173, N'16561226 2922', N'Thor', N'Mckenzie', N'Morbi.sit.amet@Integervulputate.co.uk', N'452-0650', N'Maizeret', N'Volutpat Nunc Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (174, N'16021128 2959', N'Paki', N'Randolph', N'vel@id.com', N'753-9182', N'Jaunpur', N'Lorem Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (175, N'16600405 1873', N'Basia', N'Dale', N'ligula@ridiculusmus.edu', N'1-498-643-7679', N'Cumberland County', N'Feugiat Tellus Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (176, N'16220207 2381', N'Karly', N'Swanson', N'In.scelerisque@ipsum.co.uk', N'764-5764', N'Melipeuco', N'Dictum Proin Eget Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (177, N'16090810 0258', N'Holmes', N'Russell', N'dignissim.magna.a@dictumPhasellusin.net', N'724-6404', N'Caramanico Terme', N'Magna Consulting', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (178, N'16940502 7823', N'Chadwick', N'Fitzgerald', N'mauris@Nunc.co.uk', N'1-902-238-1720', N'Montebelluna', N'Eu LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (179, N'16821017 0323', N'Anne', N'Rose', N'lobortis.Class.aptent@sit.org', N'752-7453', N'Irapuato', N'Odio Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (180, N'16800112 2616', N'Jesse', N'Castro', N'malesuada.ut@blanditmattis.net', N'1-105-438-5552', N'Villers-la-Loue', N'Non Company', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (181, N'16790203 9879', N'Gretchen', N'Cash', N'congue@scelerisque.org', N'1-477-808-4233', N'Penticton', N'Pede Sagittis Augue LLC', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (182, N'16351029 3701', N'Colton', N'Pope', N'ultrices@indolorFusce.com', N'1-775-944-1502', N'Lexington', N'Ridiculus Mus Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (183, N'16480522 8378', N'Marvin', N'Potter', N'consectetuer.cursus@pretiumetrutrum.net', N'359-1784', N'Lódz', N'Duis Elementum Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (184, N'16340407 0603', N'Ian', N'Walsh', N'et@pretiumnequeMorbi.net', N'1-491-957-4771', N'Colombo', N'Curabitur Vel Lectus Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (185, N'16630907 8258', N'Amy', N'Cleveland', N'semper.auctor.Mauris@ultricesaauctor.edu', N'545-8125', N'Beaumaris', N'Aliquam Arcu Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (186, N'16801006 2738', N'Tanner', N'Sloan', N'et.nunc.Quisque@tristiquepellentesque.edu', N'802-9403', N'Baie-d''Urf?', N'Molestie Pharetra Nibh Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (187, N'16101027 5244', N'Lael', N'Reilly', N'sed.sapien@faucibusidlibero.co.uk', N'1-359-282-9709', N'Budaun', N'Sed Foundation', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (188, N'16060803 7479', N'Grant', N'Acosta', N'lacus.varius@tellusNunclectus.net', N'381-7706', N'Maracanaú', N'Leo Cras Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (189, N'16501027 3455', N'Russell', N'James', N'dolor.quam@faucibus.ca', N'834-2388', N'Jumet', N'Suspendisse Consulting', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (190, N'16910401 8206', N'Damian', N'Dawson', N'mauris.Integer.sem@amet.co.uk', N'1-316-434-1849', N'San Nicolás', N'Tempus Lorem Fringilla Associates', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (191, N'16260204 7868', N'Cooper', N'Griffith', N'Integer.urna@tristique.net', N'1-575-137-7973', N'Corbara', N'Pede Cum Sociis Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (192, N'16860216 0460', N'Wallace', N'Prince', N'a@quislectus.ca', N'1-180-829-4091', N'Shangla', N'Convallis Ligula Donec LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (193, N'16890820 3915', N'Yuli', N'Lynch', N'Aenean@vestibulumneceuismod.co.uk', N'1-765-902-3288', N'Ergani', N'In Faucibus Morbi Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (194, N'16780804 8131', N'Hedley', N'Larson', N'mi.lacinia@FuscefeugiatLorem.co.uk', N'652-9560', N'Lagos', N'Quisque Nonummy Ipsum LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (195, N'16880517 3013', N'Kirby', N'Faulkner', N'habitant.morbi@ultricesDuisvolutpat.com', N'121-4727', N'Herk-de-Stad', N'Nunc Incorporated', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (196, N'16530126 1482', N'Candace', N'Hill', N'netus@pede.edu', N'248-3821', N'Etobicoke', N'Et Ultrices Posuere Inc.', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (197, N'16601103 7352', N'Sopoline', N'Trujillo', N'luctus.sit.amet@eget.net', N'1-284-518-7241', N'Hartlepool', N'Egestas Duis Ltd', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (198, N'16121011 0837', N'Channing', N'Merritt', N'orci.lobortis.augue@Nullaaliquet.co.uk', N'1-924-108-9806', N'Rves', N'Aliquam Erat Volutpat Institute', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (199, N'16311012 0296', N'Wylie', N'Mccullough', N'Fusce@liberonec.org', N'413-6299', N'Valenciennes', N'Pede LLP', 0)
GO
INSERT [Employee].[Employees] ([ID], [PersonalCode], [FirstName], [LastName], [Email], [PhoneNumber], [City], [Company], [IsDeleted]) VALUES (200, N'16040828 2564', N'Cade', N'Huff', N'Phasellus.nulla.Integer@Duisatlacus.net', N'1-290-970-6583', N'Pfungstadt', N'Leo Morbi Corp.', 0)
GO
SET IDENTITY_INSERT [Employee].[Employees] OFF
GO
SET IDENTITY_INSERT [Log].[Exceptions] ON 
GO
INSERT [Log].[Exceptions] ([ID], [ActionName], [IPAddress], [ExceptionMsg], [ExceptionType], [ExceptionSource], [ExceptionURL], [Logdate]) VALUES (3, N'GetEmployeeInfos', NULL, N'Object reference not set to an instance of an object.', N'String', N'   at Rasta.Web.Controllers.BaseApiController`2.HandleExceptionAsync(Exception ex)
   at Rasta.Web.Controllers.Api.EmployeeInfoController.<GetEmployeeInfos>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', N'https://localhost:44327/api/EmployeeInfo/GetEmployeeInfos', CAST(N'2020-07-06T14:10:01.477' AS DateTime))
GO
INSERT [Log].[Exceptions] ([ID], [ActionName], [IPAddress], [ExceptionMsg], [ExceptionType], [ExceptionSource], [ExceptionURL], [Logdate]) VALUES (2, N'GetEmployeeInfos', NULL, N'Object reference not set to an instance of an object.', N'String', N'   at Rasta.Web.Controllers.BaseApiController`2.HandleExceptionAsync(Exception ex)
   at Rasta.Web.Controllers.Api.EmployeeInfoController.<GetEmployeeInfos>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Filters.AuthorizationFilterAttribute.<ExecuteAuthorizationFilterAsyncCore>d__3.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Rasta.Web.Security.Filters.AddChallengeOnUnauthorizedResult.<ExecuteAsync>d__7.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.AuthenticationFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', N'https://localhost:44327/api/EmployeeInfo/GetEmployeeInfos', CAST(N'2020-07-06T13:21:53.967' AS DateTime))
GO
INSERT [Log].[Exceptions] ([ID], [ActionName], [IPAddress], [ExceptionMsg], [ExceptionType], [ExceptionSource], [ExceptionURL], [Logdate]) VALUES (1, N'GetEmployeeInfos', NULL, N'Object reference not set to an instance of an object.', N'String', N'   at Rasta.Web.Controllers.BaseApiController`2.HandleExceptionAsync(Exception ex) in D:\Projects\Visual Studio IDE\Rastafan\Rasta\Rasta.Web\Controllers\BaseApiController.cs:line 50
   at Rasta.Web.Controllers.Api.EmployeeInfoController.<GetEmployeeInfos>d__1.MoveNext() in D:\Projects\Visual Studio IDE\Rastafan\Rasta\Rasta.Web\Controllers\Api\EmployeeInfoController.cs:line 95
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Filters.AuthorizationFilterAttribute.<ExecuteAuthorizationFilterAsyncCore>d__3.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Rasta.Web.Security.Filters.AddChallengeOnUnauthorizedResult.<ExecuteAsync>d__7.MoveNext() in D:\Projects\Visual Studio IDE\Rastafan\Rasta\Rasta.Web\Security\Filters\AddChallengeOnUnauthorizedResult.cs:line 28
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.AuthenticationFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', N'https://localhost:44327/api/EmployeeInfo/GetEmployeeInfos', CAST(N'2020-07-06T13:20:43.703' AS DateTime))
GO
SET IDENTITY_INSERT [Log].[Exceptions] OFF
GO
SET IDENTITY_INSERT [Security].[Audiences] ON 
GO
INSERT [Security].[Audiences] ([ID], [Name], [ClientId], [Base64Secret]) VALUES (2, N'AppTest', N'ef7de62c-a767-49e5-a3f6-d6c8ce09a7b0', N'db3OIsj+BXE9NZDy0t8W3TcNekrF+2d/1sFnWG4HnV8TZY30iTOdtVWJG8abWvB1GlOgJuQZdcF2Luqm/hccMw==')
GO
SET IDENTITY_INSERT [Security].[Audiences] OFF
GO
SET IDENTITY_INSERT [Security].[Roles] ON 
GO
INSERT [Security].[Roles] ([ID], [Name], [IsDeleted]) VALUES (1, N'Manager', 0)
GO
INSERT [Security].[Roles] ([ID], [Name], [IsDeleted]) VALUES (3, N'HumanResource', 0)
GO
INSERT [Security].[Roles] ([ID], [Name], [IsDeleted]) VALUES (5, N'Support', 0)
GO
SET IDENTITY_INSERT [Security].[Roles] OFF
GO
SET IDENTITY_INSERT [Security].[UserRoles] ON 
GO
INSERT [Security].[UserRoles] ([ID], [UserId], [RoleId]) VALUES (3, 8, 1)
GO
INSERT [Security].[UserRoles] ([ID], [UserId], [RoleId]) VALUES (4, 8, 3)
GO
SET IDENTITY_INSERT [Security].[UserRoles] OFF
GO
SET IDENTITY_INSERT [Security].[Users] ON 
GO
INSERT [Security].[Users] ([ID], [FirstName], [LastName], [NationalCode], [Mobile], [Email], [Address], [UserName], [Password], [IsActive], [IsDeleted], [RegisterDate], [InsertUserId], [InsertDateTime], [UpdateUserId], [UpdateDateTime], [UserType]) VALUES (8, N'Mohammad', N'Jahanshahi', N'2240027630', N'09368560182', N'mr.jahanshahi@gmail.com', NULL, N'developer', N'1dEUT+c5VKp01UJn4NEOeg==', 1, 0, CAST(N'2020-06-27T00:46:02.750' AS DateTime), -1, CAST(N'2020-06-27T00:46:02.750' AS DateTime), NULL, NULL, 1000)
GO
SET IDENTITY_INSERT [Security].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_Username]    Script Date: 7/6/2020 2:17:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_Username] ON [Security].[Users]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
