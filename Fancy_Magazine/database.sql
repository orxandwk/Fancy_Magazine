USE [master]
GO
/****** Object:  Database [FancyMagazine]    Script Date: 18.02.2018 18:16:23 ******/
CREATE DATABASE [FancyMagazine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FancyMagazine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FancyMagazine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FancyMagazine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FancyMagazine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FancyMagazine] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FancyMagazine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FancyMagazine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FancyMagazine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FancyMagazine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FancyMagazine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FancyMagazine] SET ARITHABORT OFF 
GO
ALTER DATABASE [FancyMagazine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FancyMagazine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FancyMagazine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FancyMagazine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FancyMagazine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FancyMagazine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FancyMagazine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FancyMagazine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FancyMagazine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FancyMagazine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FancyMagazine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FancyMagazine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FancyMagazine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FancyMagazine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FancyMagazine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FancyMagazine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FancyMagazine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FancyMagazine] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FancyMagazine] SET  MULTI_USER 
GO
ALTER DATABASE [FancyMagazine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FancyMagazine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FancyMagazine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FancyMagazine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FancyMagazine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FancyMagazine] SET QUERY_STORE = OFF
GO
USE [FancyMagazine]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [FancyMagazine]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 18.02.2018 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_title] [nvarchar](150) NULL,
	[blog_content] [nvarchar](max) NULL,
	[blog_img] [nvarchar](50) NULL,
	[blog_category_id] [int] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[contact_phone] [nvarchar](50) NULL,
	[contact_email] [nvarchar](50) NULL,
	[contact_address] [nvarchar](100) NULL,
	[contact_work_time] [nvarchar](100) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature_Boxes]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature_Boxes](
	[feature_boxes_id] [int] IDENTITY(1,1) NOT NULL,
	[feature_boxes_title] [nvarchar](50) NULL,
	[feature_boxes_icon] [nvarchar](50) NULL,
	[feature_boxes_content] [nvarchar](250) NULL,
	[feature_boxes_url] [nvarchar](350) NULL,
 CONSTRAINT [PK_Feature_Boxes] PRIMARY KEY CLUSTERED 
(
	[feature_boxes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industries]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industries](
	[industries_id] [int] IDENTITY(1,1) NOT NULL,
	[industries_title] [nvarchar](120) NULL,
	[industries_content] [nvarchar](400) NULL,
	[industries_img] [nvarchar](50) NULL,
	[industries_url] [nvarchar](350) NULL,
 CONSTRAINT [PK_Industries] PRIMARY KEY CLUSTERED 
(
	[industries_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menu_id] [int] IDENTITY(1,1) NOT NULL,
	[menu_text] [nvarchar](50) NULL,
	[menu_url] [nvarchar](350) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[message_name] [nvarchar](50) NULL,
	[message_email] [nvarchar](50) NULL,
	[message_website_url] [nvarchar](350) NULL,
	[message_content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Area]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Area](
	[project_area_id] [int] IDENTITY(1,1) NOT NULL,
	[project_area_title] [nvarchar](150) NULL,
	[project_area_content] [nvarchar](300) NULL,
	[project_area_url] [nvarchar](350) NULL,
 CONSTRAINT [PK_Project_Area] PRIMARY KEY CLUSTERED 
(
	[project_area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service_Area]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Area](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[service_img] [nvarchar](50) NULL,
	[service_title] [nvarchar](100) NULL,
	[service_content] [nvarchar](300) NULL,
	[service_content_url] [nvarchar](250) NULL,
 CONSTRAINT [PK_Service_Area] PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service_Area_Contents]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Area_Contents](
	[service_contents_id] [int] IDENTITY(1,1) NOT NULL,
	[service_contents_title] [nvarchar](100) NULL,
	[service_contents_content] [nvarchar](max) NULL,
	[service_contents_icon] [nvarchar](200) NULL,
 CONSTRAINT [PK_Service_Area_Contents] PRIMARY KEY CLUSTERED 
(
	[service_contents_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[slider_title] [nvarchar](80) NULL,
	[slider_img] [nvarchar](50) NULL,
	[slider_first_url] [nvarchar](350) NULL,
	[slider_second_url] [nvarchar](350) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials_Slider]    Script Date: 18.02.2018 18:16:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials_Slider](
	[testimonials_slider_id] [int] IDENTITY(1,1) NOT NULL,
	[testimonials_slider_icon] [nvarchar](200) NULL,
	[testimonials_slider_content] [nvarchar](max) NULL,
	[testimonials_slider_author] [nvarchar](50) NULL,
	[testimonials_slider_position] [nvarchar](50) NULL,
	[testimonials_slider_img] [nvarchar](100) NULL,
 CONSTRAINT [PK_Testimonials_Slider] PRIMARY KEY CLUSTERED 
(
	[testimonials_slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Categories] FOREIGN KEY([blog_category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Categories]
GO
USE [master]
GO
ALTER DATABASE [FancyMagazine] SET  READ_WRITE 
GO
