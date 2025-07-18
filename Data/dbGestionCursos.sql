USE [master]
GO
/****** Object:  Database [GestionAcademica]    Script Date: 7/3/2025 8:20:07 PM ******/
CREATE DATABASE [GestionAcademica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GestionAcademica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GestionAcademica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GestionAcademica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GestionAcademica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GestionAcademica] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GestionAcademica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GestionAcademica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GestionAcademica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GestionAcademica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GestionAcademica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GestionAcademica] SET ARITHABORT OFF 
GO
ALTER DATABASE [GestionAcademica] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GestionAcademica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GestionAcademica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GestionAcademica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GestionAcademica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GestionAcademica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GestionAcademica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GestionAcademica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GestionAcademica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GestionAcademica] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GestionAcademica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GestionAcademica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GestionAcademica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GestionAcademica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GestionAcademica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GestionAcademica] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GestionAcademica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GestionAcademica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GestionAcademica] SET  MULTI_USER 
GO
ALTER DATABASE [GestionAcademica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GestionAcademica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GestionAcademica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GestionAcademica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GestionAcademica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GestionAcademica] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GestionAcademica] SET QUERY_STORE = ON
GO
ALTER DATABASE [GestionAcademica] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GestionAcademica]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/3/2025 8:20:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 7/3/2025 8:20:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Ciclo] [nvarchar](max) NOT NULL,
	[Creditos] [int] NOT NULL,
	[HorasSemanal] [int] NOT NULL,
	[IdDocente] [int] NOT NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docentes]    Script Date: 7/3/2025 8:20:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docentes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Profesion] [nvarchar](max) NOT NULL,
	[FechaNacimiento] [datetime2](7) NOT NULL,
	[Correo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Docentes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250703234703_InitialCreate', N'8.0.0')
GO
SET IDENTITY_INSERT [dbo].[Cursos] ON 

INSERT [dbo].[Cursos] ([Id], [Nombre], [Ciclo], [Creditos], [HorasSemanal], [IdDocente]) VALUES (1, N'Matemática Discreta', N'III', 3, 4, 1)
INSERT [dbo].[Cursos] ([Id], [Nombre], [Ciclo], [Creditos], [HorasSemanal], [IdDocente]) VALUES (2, N'Programación Web', N'VI', 4, 4, 1)
SET IDENTITY_INSERT [dbo].[Cursos] OFF
GO
SET IDENTITY_INSERT [dbo].[Docentes] ON 

INSERT [dbo].[Docentes] ([Id], [Apellidos], [Nombres], [Profesion], [FechaNacimiento], [Correo]) VALUES (1, N'Pérez', N'Ana', N'Licenciada en Matemática', CAST(N'1980-06-12T00:00:00.0000000' AS DateTime2), N'ana.perez@unsa.edu.pe')
INSERT [dbo].[Docentes] ([Id], [Apellidos], [Nombres], [Profesion], [FechaNacimiento], [Correo]) VALUES (2, N'Ramírez', N'Carlos', N'Ingeniero Informático', CAST(N'1985-10-25T00:00:00.0000000' AS DateTime2), N'carlos.ramirez@unsa.edu.pe')
SET IDENTITY_INSERT [dbo].[Docentes] OFF
GO
/****** Object:  Index [IX_Cursos_IdDocente]    Script Date: 7/3/2025 8:20:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cursos_IdDocente] ON [dbo].[Cursos]
(
	[IdDocente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_Docentes_IdDocente] FOREIGN KEY([IdDocente])
REFERENCES [dbo].[Docentes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_Docentes_IdDocente]
GO
USE [master]
GO
ALTER DATABASE [GestionAcademica] SET  READ_WRITE 
GO
