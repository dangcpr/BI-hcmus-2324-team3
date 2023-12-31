USE [master]
GO
/****** Object:  Database [SuperSale]    Script Date: 20/12/2023 22:04:54 ******/
CREATE DATABASE [SuperSale]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SuperSale', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SuperSale.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SuperSale_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SuperSale_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SuperSale] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SuperSale].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SuperSale] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SuperSale] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SuperSale] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SuperSale] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SuperSale] SET ARITHABORT OFF 
GO
ALTER DATABASE [SuperSale] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SuperSale] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SuperSale] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SuperSale] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SuperSale] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SuperSale] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SuperSale] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SuperSale] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SuperSale] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SuperSale] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SuperSale] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SuperSale] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SuperSale] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SuperSale] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SuperSale] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SuperSale] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SuperSale] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SuperSale] SET RECOVERY FULL 
GO
ALTER DATABASE [SuperSale] SET  MULTI_USER 
GO
ALTER DATABASE [SuperSale] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SuperSale] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SuperSale] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SuperSale] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SuperSale] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SuperSale] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SuperSale', N'ON'
GO
ALTER DATABASE [SuperSale] SET QUERY_STORE = OFF
GO
USE [SuperSale]
GO
/****** Object:  Table [dbo].[City]    Script Date: 20/12/2023 22:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Branch] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[create_at] [datetime] NULL,
	[update_at] [datetime] NULL,
	[status] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20/12/2023 22:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [nvarchar](255) NULL,
	[Unit price] [float] NULL,
	[ProductLine] [nvarchar](255) NULL,
	[create_at] [datetime] NULL,
	[update_at] [datetime] NULL,
	[status] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLine]    Script Date: 20/12/2023 22:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLine](
	[ProductLine] [nvarchar](255) NULL,
	[ProductLineID] [nvarchar](255) NULL,
	[create_at] [datetime] NULL,
	[update_at] [datetime] NULL,
	[status] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 20/12/2023 22:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[InvoiceID] [nvarchar](255) NULL,
	[Branch] [nvarchar](255) NULL,
	[CustomerType] [nvarchar](255) NULL,
	[Gendar] [nvarchar](255) NULL,
	[ProductID] [nvarchar](255) NULL,
	[Quantity] [float] NULL,
	[tax5%] [float] NULL,
	[Total] [float] NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[Payment] [nvarchar](255) NULL,
	[cogs] [float] NULL,
	[rating] [float] NULL,
	[grossMarginPercentage] [float] NULL,
	[grossIncome] [float] NULL,
	[create_at] [datetime] NULL,
	[update_at] [datetime] NULL,
	[status] [nvarchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_update_at]  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_update_at]  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[ProductLine] ADD  CONSTRAINT [DF_ProductLine_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[ProductLine] ADD  CONSTRAINT [DF_ProductLine_update_at]  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[sales] ADD  CONSTRAINT [DF_sales_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[sales] ADD  CONSTRAINT [DF_sales_update_at]  DEFAULT (getdate()) FOR [update_at]
GO
USE [master]
GO
ALTER DATABASE [SuperSale] SET  READ_WRITE 
GO
