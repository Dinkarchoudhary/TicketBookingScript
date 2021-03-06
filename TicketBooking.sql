USE [master]
GO
/****** Object:  Database [TicketBooking]    Script Date: 23-08-2020 17:26:27 ******/
CREATE DATABASE [TicketBooking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TicketBooking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TicketBooking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TicketBooking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TicketBooking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TicketBooking] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TicketBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TicketBooking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TicketBooking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TicketBooking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TicketBooking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TicketBooking] SET ARITHABORT OFF 
GO
ALTER DATABASE [TicketBooking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TicketBooking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TicketBooking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TicketBooking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TicketBooking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TicketBooking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TicketBooking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TicketBooking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TicketBooking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TicketBooking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TicketBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TicketBooking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TicketBooking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TicketBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TicketBooking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TicketBooking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TicketBooking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TicketBooking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TicketBooking] SET  MULTI_USER 
GO
ALTER DATABASE [TicketBooking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TicketBooking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TicketBooking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TicketBooking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TicketBooking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TicketBooking] SET QUERY_STORE = OFF
GO
USE [TicketBooking]
GO
/****** Object:  Schema [TB]    Script Date: 23-08-2020 17:26:28 ******/
CREATE SCHEMA [TB]
GO
/****** Object:  Table [TB].[tblFlightDetails]    Script Date: 23-08-2020 17:26:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TB].[tblFlightDetails](
	[FlightDetailsID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[FlightNumber] [varchar](max) NULL,
	[FlightCompany] [varchar](max) NULL,
	[SeatsAvailable] [varchar](max) NULL,
	[Origin] [varchar](max) NULL,
	[Destination] [varchar](max) NULL,
	[DateOfDeparture] [datetime] NULL,
	[TicketPrice] [varchar](max) NULL,
 CONSTRAINT [PK_tblFlightDetails] PRIMARY KEY CLUSTERED 
(
	[FlightDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TB].[tblUserCartDetails]    Script Date: 23-08-2020 17:26:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TB].[tblUserCartDetails](
	[UserCartDetailsID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[OrderNumber] [varchar](max) NULL,
	[FlightNumber] [varchar](max) NULL,
	[FlightCompany] [varchar](max) NULL,
	[Origin] [varchar](max) NULL,
	[Destination] [varchar](max) NULL,
	[FlightDepartureDates] [varchar](max) NULL,
	[NumberOfSeats] [varchar](max) NULL,
	[FlightCost] [varchar](max) NULL,
	[Tax] [varchar](max) NULL,
	[TotalCost] [varchar](max) NULL,
	[UserDetailsID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tblUserCartDetails] PRIMARY KEY CLUSTERED 
(
	[UserCartDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TB].[tblUserDetails]    Script Date: 23-08-2020 17:26:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TB].[tblUserDetails](
	[UserDetailsID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmailId] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[UserType] [varchar](max) NULL,
 CONSTRAINT [PK_tblUserDetails] PRIMARY KEY CLUSTERED 
(
	[UserDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [TB].[tblFlightDetails] ON 

INSERT [TB].[tblFlightDetails] ([FlightDetailsID], [FlightNumber], [FlightCompany], [SeatsAvailable], [Origin], [Destination], [DateOfDeparture], [TicketPrice]) VALUES (CAST(1 AS Numeric(18, 0)), N'AK3554', N'GoAir', N'8', N'Bengaluru', N'Ranchi', CAST(N'2020-08-24T19:53:05.670' AS DateTime), N'6480')
INSERT [TB].[tblFlightDetails] ([FlightDetailsID], [FlightNumber], [FlightCompany], [SeatsAvailable], [Origin], [Destination], [DateOfDeparture], [TicketPrice]) VALUES (CAST(2 AS Numeric(18, 0)), N'AK3044', N'GoAir', N'28', N'Ranchi', N'Bengaluru', CAST(N'2020-08-23T09:24:32.757' AS DateTime), N'5400')
INSERT [TB].[tblFlightDetails] ([FlightDetailsID], [FlightNumber], [FlightCompany], [SeatsAvailable], [Origin], [Destination], [DateOfDeparture], [TicketPrice]) VALUES (CAST(4 AS Numeric(18, 0)), N'IG675', N'Indigo', N'12', N'Bengaluru', N'Ranchi', CAST(N'2020-08-24T10:58:59.630' AS DateTime), N'4500')
SET IDENTITY_INSERT [TB].[tblFlightDetails] OFF
GO
SET IDENTITY_INSERT [TB].[tblUserCartDetails] ON 

INSERT [TB].[tblUserCartDetails] ([UserCartDetailsID], [OrderNumber], [FlightNumber], [FlightCompany], [Origin], [Destination], [FlightDepartureDates], [NumberOfSeats], [FlightCost], [Tax], [TotalCost], [UserDetailsID]) VALUES (CAST(2 AS Numeric(18, 0)), N'FL101', N'AK3554', N'GoAir', N'Bengaluru', N'Ranchi', N'2020-08-24 19:53:05.670', N'12', N'6480', N'520', N'7000', CAST(1 AS Numeric(18, 0)))
INSERT [TB].[tblUserCartDetails] ([UserCartDetailsID], [OrderNumber], [FlightNumber], [FlightCompany], [Origin], [Destination], [FlightDepartureDates], [NumberOfSeats], [FlightCost], [Tax], [TotalCost], [UserDetailsID]) VALUES (CAST(3 AS Numeric(18, 0)), N'FL102', N'AK3044', N'GoAir', N'Ranchi', N'Bengaluru', N'2020-08-23 09:24:32.757', N'12', N'5400', N'600', N'6000', CAST(1 AS Numeric(18, 0)))
SET IDENTITY_INSERT [TB].[tblUserCartDetails] OFF
GO
SET IDENTITY_INSERT [TB].[tblUserDetails] ON 

INSERT [TB].[tblUserDetails] ([UserDetailsID], [EmailId], [Name], [Password], [UserType]) VALUES (CAST(1 AS Numeric(18, 0)), N'dinkarchoudhary21@gmail.com', N'Dinkar', N'1234', N'Admin')
INSERT [TB].[tblUserDetails] ([UserDetailsID], [EmailId], [Name], [Password], [UserType]) VALUES (CAST(2 AS Numeric(18, 0)), N'musk@gmail.com', N'Elon', N'qwerty', N'Admin')
INSERT [TB].[tblUserDetails] ([UserDetailsID], [EmailId], [Name], [Password], [UserType]) VALUES (CAST(3 AS Numeric(18, 0)), N'string', N'string', N'string', N'string')
SET IDENTITY_INSERT [TB].[tblUserDetails] OFF
GO
ALTER TABLE [TB].[tblUserCartDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblUserDetailstblUserCartDetails] FOREIGN KEY([UserDetailsID])
REFERENCES [TB].[tblUserDetails] ([UserDetailsID])
GO
ALTER TABLE [TB].[tblUserCartDetails] CHECK CONSTRAINT [FK_tblUserDetailstblUserCartDetails]
GO
USE [master]
GO
ALTER DATABASE [TicketBooking] SET  READ_WRITE 
GO
