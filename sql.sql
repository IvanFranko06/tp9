USE [master]
GO
/****** Object:  Database [tp9]    Script Date: 3/10/2023 09:02:35 ******/
CREATE DATABASE [tp9]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tp9', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tp9.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tp9_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tp9_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [tp9] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tp9].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tp9] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tp9] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tp9] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tp9] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tp9] SET ARITHABORT OFF 
GO
ALTER DATABASE [tp9] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tp9] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tp9] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tp9] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tp9] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tp9] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tp9] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tp9] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tp9] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tp9] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tp9] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tp9] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tp9] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tp9] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tp9] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tp9] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tp9] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tp9] SET RECOVERY FULL 
GO
ALTER DATABASE [tp9] SET  MULTI_USER 
GO
ALTER DATABASE [tp9] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tp9] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tp9] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tp9] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tp9] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'tp9', N'ON'
GO
ALTER DATABASE [tp9] SET QUERY_STORE = OFF
GO
USE [tp9]
GO
/****** Object:  User [alumno]    Script Date: 3/10/2023 09:02:35 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 3/10/2023 09:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Username] [nvarchar](max) NOT NULL,
	[Contraseña] [nvarchar](max) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Telefono] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [tp9] SET  READ_WRITE 
GO
