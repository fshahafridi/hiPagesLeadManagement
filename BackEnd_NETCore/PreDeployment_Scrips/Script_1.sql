USE [master]
GO

/****** Object:  Database [HiPages]    Script Date: 20/05/2020 7:29:41 PM ******/
CREATE DATABASE [HiPages]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HiPages', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HiPages.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HiPages_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HiPages_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HiPages].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HiPages] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [HiPages] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [HiPages] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HiPages] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HiPages] SET ARITHABORT OFF 
GO

ALTER DATABASE [HiPages] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [HiPages] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HiPages] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HiPages] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HiPages] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HiPages] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HiPages] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HiPages] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HiPages] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HiPages] SET  DISABLE_BROKER 
GO

ALTER DATABASE [HiPages] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HiPages] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HiPages] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HiPages] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HiPages] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HiPages] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HiPages] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HiPages] SET RECOVERY FULL 
GO

ALTER DATABASE [HiPages] SET  MULTI_USER 
GO

ALTER DATABASE [HiPages] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HiPages] SET DB_CHAINING OFF 
GO

ALTER DATABASE [HiPages] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [HiPages] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [HiPages] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [HiPages] SET QUERY_STORE = OFF
GO

ALTER DATABASE [HiPages] SET  READ_WRITE 
GO


