USE [master]
GO
/****** Object:  Database [UMG]    Script Date: 3/04/2025 05:35:03 ******/
CREATE DATABASE [UMG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UMG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\UMG.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UMG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\UMG_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UMG] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UMG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UMG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UMG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UMG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UMG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UMG] SET ARITHABORT OFF 
GO
ALTER DATABASE [UMG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UMG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UMG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UMG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UMG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UMG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UMG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UMG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UMG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UMG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UMG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UMG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UMG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UMG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UMG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UMG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UMG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UMG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UMG] SET  MULTI_USER 
GO
ALTER DATABASE [UMG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UMG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UMG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UMG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UMG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UMG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [UMG] SET QUERY_STORE = ON
GO
ALTER DATABASE [UMG] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [UMG]
GO
/****** Object:  Table [dbo].[asistencia]    Script Date: 3/04/2025 05:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asistencia](
	[id_asistencia] [int] IDENTITY(1,1) NOT NULL,
	[CARNET] [varchar](20) NOT NULL,
	[FECHA] [date] NOT NULL,
	[PRESENTE] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notas_finales]    Script Date: 3/04/2025 05:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notas_finales](
	[id_notas_finales] [int] IDENTITY(1,1) NOT NULL,
	[carnet] [varchar](20) NOT NULL,
	[nota_final] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_notas_finales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tareas]    Script Date: 3/04/2025 05:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tareas](
	[id_tarea] [int] IDENTITY(1,1) NOT NULL,
	[Carnet] [varchar](20) NOT NULL,
	[nota1] [int] NOT NULL,
	[nota2] [int] NOT NULL,
	[nota3] [int] NOT NULL,
	[nota4] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tb_alumnos]    Script Date: 3/04/2025 05:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_alumnos](
	[CARNET] [varchar](20) NOT NULL,
	[ESTUDIANTE] [nvarchar](255) NOT NULL,
	[EMAIL] [nvarchar](255) NOT NULL,
	[SECCION] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CARNET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[asistencia] ON 

INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (2, N'0905-15-9622', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (3, N'0905-15-14297', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (4, N'0905-18-4689', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (5, N'0905-19-6478', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (6, N'0905-20-5562', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (7, N'0905-22-5811', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (8, N'0905-23-796', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (9, N'0905-23-18976', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (10, N'0905-24-1925', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (11, N'0905-24-2654', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (12, N'0905-24-3068', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (13, N'0905-24-3086', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (14, N'0905-24-3576', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (15, N'0905-24-4847', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (16, N'0905-24-5045', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (17, N'0905-24-5051', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (18, N'0905-24-5388', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (19, N'0905-24-5462', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (20, N'0905-24-6263', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (21, N'0905-24-6339', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (22, N'0905-24-6375', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (23, N'0905-24-6913', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (24, N'0905-24-7000', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (25, N'0905-24-7010', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (26, N'0905-24-7370', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (27, N'0905-24-7854', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (28, N'0905-24-8364', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (29, N'0905-24-9756', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (30, N'0905-24-11747', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (31, N'0905-24-16186', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (32, N'0905-24-19556', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (33, N'0905-24-21379', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (34, N'0905-24-22482', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (35, N'0905-24-22750', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (36, N'0905-24-23552', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (37, N'0905-17-20273', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (38, N'0905-21-4966', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (39, N'0905-21-9650', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (40, N'0905-22-1146', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (41, N'0905-22-7933', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (42, N'0905-22-9918', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (43, N'0905-22-11274', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (44, N'0905-23-302', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (45, N'0905-23-2991', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (46, N'0905-23-13800', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (47, N'0905-23-15220', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (48, N'0905-23-15654', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (49, N'0905-23-20562', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (50, N'0905-24-1631', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (51, N'0905-24-1699', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (52, N'0905-24-4036', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (53, N'0905-24-6495', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (54, N'0905-24-6503', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (55, N'0905-24-10033', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (56, N'0905-24-10061', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (57, N'0905-24-10433', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (58, N'0905-24-11709', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (59, N'0905-24-12088', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (60, N'0905-24-12697', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (61, N'0905-24-13926', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (62, N'0905-24-14875', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (63, N'0905-24-15036', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (64, N'0905-24-15384', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (65, N'0905-24-16058', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (66, N'0905-24-16433', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (67, N'0905-24-17488', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (68, N'0905-24-17495', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (69, N'0905-24-17512', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (70, N'0905-24-17570', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (71, N'0905-24-22282', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (72, N'0905-24-22303', CAST(N'2025-02-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (73, N'0905-24-24315', CAST(N'2025-02-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (74, N'0905-10-1279', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (75, N'0905-15-9622', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (76, N'0905-15-14297', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (77, N'0905-18-4689', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (78, N'0905-19-6478', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (79, N'0905-20-5562', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (80, N'0905-22-5811', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (81, N'0905-23-796', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (82, N'0905-23-18976', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (83, N'0905-24-1925', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (84, N'0905-24-2654', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (85, N'0905-24-3068', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (86, N'0905-24-3086', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (87, N'0905-24-3576', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (88, N'0905-24-4847', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (89, N'0905-24-5045', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (90, N'0905-24-5051', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (91, N'0905-24-5388', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (92, N'0905-24-5462', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (93, N'0905-24-6263', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (94, N'0905-24-6339', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (95, N'0905-24-6375', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (96, N'0905-24-6913', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (97, N'0905-24-7000', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (98, N'0905-24-7010', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (99, N'0905-24-7370', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (100, N'0905-24-7854', CAST(N'2025-02-08' AS Date), N'S')
GO
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (101, N'0905-24-8364', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (102, N'0905-24-9756', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (103, N'0905-24-11747', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (104, N'0905-24-16186', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (105, N'0905-24-19556', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (106, N'0905-24-21379', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (107, N'0905-24-22482', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (108, N'0905-24-22750', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (109, N'0905-24-23552', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (110, N'0905-17-20273', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (111, N'0905-21-4966', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (112, N'0905-21-9650', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (113, N'0905-22-1146', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (114, N'0905-22-7933', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (115, N'0905-22-9918', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (116, N'0905-22-11274', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (117, N'0905-23-302', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (118, N'0905-23-2991', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (119, N'0905-23-13800', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (120, N'0905-23-15220', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (121, N'0905-23-15654', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (122, N'0905-23-20562', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (123, N'0905-24-1631', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (124, N'0905-24-1699', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (125, N'0905-24-4036', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (126, N'0905-24-6495', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (127, N'0905-24-6503', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (128, N'0905-24-10033', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (129, N'0905-24-10061', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (130, N'0905-24-10433', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (131, N'0905-24-11709', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (132, N'0905-24-12088', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (133, N'0905-24-12697', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (134, N'0905-24-13926', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (135, N'0905-24-14875', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (136, N'0905-24-15036', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (137, N'0905-24-15384', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (138, N'0905-24-16058', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (139, N'0905-24-16433', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (140, N'0905-24-17488', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (141, N'0905-24-17495', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (142, N'0905-24-17512', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (143, N'0905-24-17570', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (144, N'0905-24-22282', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (145, N'0905-24-22303', CAST(N'2025-02-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (146, N'0905-24-24315', CAST(N'2025-02-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (147, N'0905-10-1279', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (148, N'0905-15-9622', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (149, N'0905-15-14297', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (150, N'0905-18-4689', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (151, N'0905-19-6478', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (152, N'0905-20-5562', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (153, N'0905-22-5811', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (154, N'0905-23-796', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (155, N'0905-23-18976', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (156, N'0905-24-1925', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (157, N'0905-24-2654', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (158, N'0905-24-3068', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (159, N'0905-24-3086', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (160, N'0905-24-3576', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (161, N'0905-24-4847', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (162, N'0905-24-5045', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (163, N'0905-24-5051', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (164, N'0905-24-5388', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (165, N'0905-24-5462', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (166, N'0905-24-6263', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (167, N'0905-24-6339', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (168, N'0905-24-6375', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (169, N'0905-24-6913', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (170, N'0905-24-7000', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (171, N'0905-24-7010', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (172, N'0905-24-7370', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (173, N'0905-24-7854', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (174, N'0905-24-8364', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (175, N'0905-24-9756', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (176, N'0905-24-11747', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (177, N'0905-24-16186', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (178, N'0905-24-19556', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (179, N'0905-24-21379', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (180, N'0905-24-22482', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (181, N'0905-24-22750', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (182, N'0905-24-23552', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (183, N'0905-17-20273', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (184, N'0905-21-4966', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (185, N'0905-21-9650', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (186, N'0905-22-1146', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (187, N'0905-22-7933', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (188, N'0905-22-9918', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (189, N'0905-22-11274', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (190, N'0905-23-302', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (191, N'0905-23-2991', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (192, N'0905-23-13800', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (193, N'0905-23-15220', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (194, N'0905-23-15654', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (195, N'0905-23-20562', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (196, N'0905-24-1631', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (197, N'0905-24-1699', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (198, N'0905-24-4036', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (199, N'0905-24-6495', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (200, N'0905-24-6503', CAST(N'2025-02-15' AS Date), N'N')
GO
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (201, N'0905-24-10033', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (202, N'0905-24-10061', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (203, N'0905-24-10433', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (204, N'0905-24-11709', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (205, N'0905-24-12088', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (206, N'0905-24-12697', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (207, N'0905-24-13926', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (208, N'0905-24-14875', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (209, N'0905-24-15036', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (210, N'0905-24-15384', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (211, N'0905-24-16058', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (212, N'0905-24-16433', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (213, N'0905-24-17488', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (214, N'0905-24-17495', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (215, N'0905-24-17512', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (216, N'0905-24-17570', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (217, N'0905-24-22282', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (218, N'0905-24-22303', CAST(N'2025-02-15' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (219, N'0905-24-24315', CAST(N'2025-02-15' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (220, N'0905-10-1279', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (221, N'0905-15-9622', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (222, N'0905-15-14297', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (223, N'0905-18-4689', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (224, N'0905-19-6478', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (225, N'0905-20-5562', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (226, N'0905-22-5811', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (227, N'0905-23-796', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (228, N'0905-23-18976', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (229, N'0905-24-1925', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (230, N'0905-24-2654', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (231, N'0905-24-3068', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (232, N'0905-24-3086', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (233, N'0905-24-3576', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (234, N'0905-24-4847', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (235, N'0905-24-5045', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (236, N'0905-24-5051', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (237, N'0905-24-5388', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (238, N'0905-24-5462', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (239, N'0905-24-6263', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (240, N'0905-24-6339', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (241, N'0905-24-6375', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (242, N'0905-24-6913', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (243, N'0905-24-7000', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (244, N'0905-24-7010', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (245, N'0905-24-7370', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (246, N'0905-24-7854', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (247, N'0905-24-8364', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (248, N'0905-24-9756', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (249, N'0905-24-11747', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (250, N'0905-24-16186', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (251, N'0905-24-19556', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (252, N'0905-24-21379', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (253, N'0905-24-22482', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (254, N'0905-24-22750', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (255, N'0905-24-23552', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (256, N'0905-17-20273', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (257, N'0905-21-4966', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (258, N'0905-21-9650', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (259, N'0905-22-1146', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (260, N'0905-22-7933', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (261, N'0905-22-9918', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (262, N'0905-22-11274', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (263, N'0905-23-302', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (264, N'0905-23-2991', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (265, N'0905-23-13800', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (266, N'0905-23-15220', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (267, N'0905-23-15654', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (268, N'0905-23-20562', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (269, N'0905-24-1631', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (270, N'0905-24-1699', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (271, N'0905-24-4036', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (272, N'0905-24-6495', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (273, N'0905-24-6503', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (274, N'0905-24-10033', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (275, N'0905-24-10061', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (276, N'0905-24-10433', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (277, N'0905-24-11709', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (278, N'0905-24-12088', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (279, N'0905-24-12697', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (280, N'0905-24-13926', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (281, N'0905-24-14875', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (282, N'0905-24-15036', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (283, N'0905-24-15384', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (284, N'0905-24-16058', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (285, N'0905-24-16433', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (286, N'0905-24-17488', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (287, N'0905-24-17495', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (288, N'0905-24-17512', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (289, N'0905-24-17570', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (290, N'0905-24-22282', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (291, N'0905-24-22303', CAST(N'2025-02-22' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (292, N'0905-24-24315', CAST(N'2025-02-22' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (293, N'0905-10-1279', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (294, N'0905-15-9622', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (295, N'0905-15-14297', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (296, N'0905-18-4689', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (297, N'0905-19-6478', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (298, N'0905-20-5562', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (299, N'0905-22-5811', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (300, N'0905-23-796', CAST(N'2025-03-01' AS Date), N'S')
GO
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (301, N'0905-23-18976', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (302, N'0905-24-1925', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (303, N'0905-24-2654', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (304, N'0905-24-3068', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (305, N'0905-24-3086', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (306, N'0905-24-3576', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (307, N'0905-24-4847', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (308, N'0905-24-5045', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (309, N'0905-24-5051', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (310, N'0905-24-5388', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (311, N'0905-24-5462', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (312, N'0905-24-6263', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (313, N'0905-24-6339', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (314, N'0905-24-6375', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (315, N'0905-24-6913', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (316, N'0905-24-7000', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (317, N'0905-24-7010', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (318, N'0905-24-7370', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (319, N'0905-24-7854', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (320, N'0905-24-8364', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (321, N'0905-24-9756', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (322, N'0905-24-11747', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (323, N'0905-24-16186', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (324, N'0905-24-19556', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (325, N'0905-24-21379', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (326, N'0905-24-22482', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (327, N'0905-24-22750', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (328, N'0905-24-23552', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (329, N'0905-17-20273', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (330, N'0905-21-4966', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (331, N'0905-21-9650', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (332, N'0905-22-1146', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (333, N'0905-22-7933', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (334, N'0905-22-9918', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (335, N'0905-22-11274', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (336, N'0905-23-302', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (337, N'0905-23-2991', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (338, N'0905-23-13800', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (339, N'0905-23-15220', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (340, N'0905-23-15654', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (341, N'0905-23-20562', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (342, N'0905-24-1631', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (343, N'0905-24-1699', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (344, N'0905-24-4036', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (345, N'0905-24-6495', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (346, N'0905-24-6503', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (347, N'0905-24-10033', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (348, N'0905-24-10061', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (349, N'0905-24-10433', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (350, N'0905-24-11709', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (351, N'0905-24-12088', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (352, N'0905-24-12697', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (353, N'0905-24-13926', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (354, N'0905-24-14875', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (355, N'0905-24-15036', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (356, N'0905-24-15384', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (357, N'0905-24-16058', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (358, N'0905-24-16433', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (359, N'0905-24-17488', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (360, N'0905-24-17495', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (361, N'0905-24-17512', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (362, N'0905-24-17570', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (363, N'0905-24-22282', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (364, N'0905-24-22303', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (365, N'0905-24-24315', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (366, N'0905-10-1279', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (367, N'0905-15-9622', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (368, N'0905-15-14297', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (369, N'0905-18-4689', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (370, N'0905-19-6478', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (371, N'0905-20-5562', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (372, N'0905-22-5811', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (373, N'0905-23-796', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (374, N'0905-23-18976', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (375, N'0905-24-1925', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (376, N'0905-24-2654', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (377, N'0905-24-3068', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (378, N'0905-24-3086', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (379, N'0905-24-3576', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (380, N'0905-24-4847', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (381, N'0905-24-5045', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (382, N'0905-24-5051', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (383, N'0905-24-5388', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (384, N'0905-24-5462', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (385, N'0905-24-6263', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (386, N'0905-24-6339', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (387, N'0905-24-6375', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (388, N'0905-24-6913', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (389, N'0905-24-7000', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (390, N'0905-24-7010', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (391, N'0905-24-7370', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (392, N'0905-24-7854', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (393, N'0905-24-8364', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (394, N'0905-24-9756', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (395, N'0905-24-11747', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (396, N'0905-24-16186', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (397, N'0905-24-19556', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (398, N'0905-24-21379', CAST(N'2025-03-08' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (399, N'0905-24-22482', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (400, N'0905-24-22750', CAST(N'2025-03-08' AS Date), N'N')
GO
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (401, N'0905-24-23552', CAST(N'2025-03-08' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (402, N'0905-17-20273', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (403, N'0905-21-4966', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (404, N'0905-21-9650', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (405, N'0905-22-1146', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (406, N'0905-22-7933', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (407, N'0905-22-9918', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (408, N'0905-22-11274', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (409, N'0905-23-302', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (410, N'0905-23-2991', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (411, N'0905-23-13800', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (412, N'0905-23-15220', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (413, N'0905-23-15654', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (414, N'0905-23-20562', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (415, N'0905-24-1631', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (416, N'0905-24-1699', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (417, N'0905-24-4036', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (418, N'0905-24-6495', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (419, N'0905-24-6503', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (420, N'0905-24-10033', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (421, N'0905-24-10061', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (422, N'0905-24-10433', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (423, N'0905-24-11709', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (424, N'0905-24-12088', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (425, N'0905-24-12697', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (426, N'0905-24-13926', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (427, N'0905-24-14875', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (428, N'0905-24-15036', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (429, N'0905-24-15384', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (430, N'0905-24-16058', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (431, N'0905-24-16433', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (432, N'0905-24-17488', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (433, N'0905-24-17495', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (434, N'0905-24-17512', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (435, N'0905-24-17570', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (436, N'0905-24-22282', CAST(N'2025-03-01' AS Date), N'S')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (437, N'0905-24-22303', CAST(N'2025-03-01' AS Date), N'N')
INSERT [dbo].[asistencia] ([id_asistencia], [CARNET], [FECHA], [PRESENTE]) VALUES (438, N'0905-24-24315', CAST(N'2025-03-01' AS Date), N'S')
SET IDENTITY_INSERT [dbo].[asistencia] OFF
GO
SET IDENTITY_INSERT [dbo].[notas_finales] ON 

INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (1, N'0905-10-1279', CAST(77.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (2, N'0905-15-9622', CAST(85.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (3, N'0905-15-14297', CAST(62.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (4, N'0905-18-4689', CAST(57.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (5, N'0905-19-6478', CAST(52.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (6, N'0905-20-5562', CAST(24.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (7, N'0905-22-5811', CAST(46.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (8, N'0905-23-796', CAST(51.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (9, N'0905-23-18976', CAST(58.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (10, N'0905-24-1925', CAST(68.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (11, N'0905-24-2654', CAST(68.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (12, N'0905-24-3068', CAST(44.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (13, N'0905-24-3086', CAST(60.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (14, N'0905-24-3576', CAST(79.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (15, N'0905-24-4847', CAST(63.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (16, N'0905-24-5045', CAST(75.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (17, N'0905-24-5051', CAST(52.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (18, N'0905-24-5388', CAST(79.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (19, N'0905-24-5462', CAST(48.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (20, N'0905-24-6263', CAST(72.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (21, N'0905-24-6339', CAST(51.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (22, N'0905-24-6375', CAST(51.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (23, N'0905-24-6913', CAST(38.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (24, N'0905-24-7000', CAST(73.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (25, N'0905-24-7010', CAST(46.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (26, N'0905-24-7370', CAST(21.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (27, N'0905-24-7854', CAST(27.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (28, N'0905-24-8364', CAST(45.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (29, N'0905-24-9756', CAST(35.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (30, N'0905-24-11747', CAST(49.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (31, N'0905-24-16186', CAST(59.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (32, N'0905-24-19556', CAST(63.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (33, N'0905-24-21379', CAST(55.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (34, N'0905-24-22482', CAST(66.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (35, N'0905-24-22750', CAST(57.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (36, N'0905-24-23552', CAST(53.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (37, N'0905-17-20273', CAST(45.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (38, N'0905-21-4966', CAST(53.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (39, N'0905-21-9650', CAST(57.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (40, N'0905-22-1146', CAST(33.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (41, N'0905-22-7933', CAST(56.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (42, N'0905-22-9918', CAST(44.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (43, N'0905-22-11274', CAST(73.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (44, N'0905-23-302', CAST(39.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (45, N'0905-23-2991', CAST(83.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (46, N'0905-23-13800', CAST(52.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (47, N'0905-23-15220', CAST(25.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (48, N'0905-23-15654', CAST(37.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (49, N'0905-23-20562', CAST(59.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (50, N'0905-24-1631', CAST(27.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (51, N'0905-24-1699', CAST(36.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (52, N'0905-24-4036', CAST(54.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (53, N'0905-24-6495', CAST(46.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (54, N'0905-24-6503', CAST(30.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (55, N'0905-24-10033', CAST(60.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (56, N'0905-24-10061', CAST(56.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (57, N'0905-24-10433', CAST(58.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (58, N'0905-24-11709', CAST(73.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (59, N'0905-24-12088', CAST(64.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (60, N'0905-24-12697', CAST(69.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (61, N'0905-24-13926', CAST(37.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (62, N'0905-24-14875', CAST(34.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (63, N'0905-24-15036', CAST(70.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (64, N'0905-24-15384', CAST(51.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (65, N'0905-24-16058', CAST(70.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (66, N'0905-24-16433', CAST(63.75 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (67, N'0905-24-17488', CAST(72.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (68, N'0905-24-17495', CAST(57.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (69, N'0905-24-17512', CAST(45.50 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (70, N'0905-24-17570', CAST(54.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (71, N'0905-24-22282', CAST(53.00 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (72, N'0905-24-22303', CAST(59.25 AS Decimal(5, 2)))
INSERT [dbo].[notas_finales] ([id_notas_finales], [carnet], [nota_final]) VALUES (73, N'0905-24-24315', CAST(43.50 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[notas_finales] OFF
GO
SET IDENTITY_INSERT [dbo].[tareas] ON 

INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (1, N'0905-10-1279', 81, 67, 82, 81)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (2, N'0905-15-9622', 10, 33, 27, 42)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (3, N'0905-15-14297', 71, 56, 34, 90)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (4, N'0905-18-4689', 89, 23, 90, 28)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (5, N'0905-19-6478', 64, 42, 20, 85)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (6, N'0905-20-5562', 41, 26, 13, 19)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (7, N'0905-22-5811', 67, 36, 67, 15)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (8, N'0905-23-796', 36, 61, 81, 29)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (9, N'0905-23-18976', 46, 91, 65, 30)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (10, N'0905-24-1925', 63, 48, 67, 94)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (11, N'0905-24-2654', 64, 46, 98, 66)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (12, N'0905-24-3068', 30, 62, 34, 50)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (13, N'0905-24-3086', 29, 55, 77, 79)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (14, N'0905-24-3576', 97, 90, 46, 85)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (15, N'0905-24-4847', 58, 74, 47, 75)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (16, N'0905-24-5045', 96, 52, 80, 72)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (17, N'0905-24-5051', 35, 91, 16, 68)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (18, N'0905-24-5388', 93, 55, 87, 81)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (19, N'0905-24-5462', 87, 52, 18, 37)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (20, N'0905-24-6263', 42, 63, 87, 98)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (21, N'0905-24-6339', 30, 66, 23, 88)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (22, N'0905-24-6375', 50, 41, 35, 81)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (23, N'0905-24-6913', 48, 48, 33, 25)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (24, N'0905-24-7000', 48, 88, 68, 91)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (25, N'0905-24-7010', 66, 24, 45, 49)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (26, N'0905-24-7370', 13, 15, 30, 28)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (27, N'0905-24-7854', 11, 36, 51, 13)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (28, N'0905-24-8364', 33, 73, 24, 51)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (29, N'0905-24-9756', 57, 19, 26, 39)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (30, N'0905-24-11747', 71, 50, 29, 46)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (31, N'0905-24-16186', 89, 61, 42, 46)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (32, N'0905-24-19556', 70, 84, 83, 18)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (33, N'0905-24-21379', 21, 74, 33, 92)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (34, N'0905-24-22482', 23, 76, 76, 89)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (35, N'0905-24-22750', 23, 55, 87, 65)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (36, N'0905-24-23552', 68, 51, 42, 54)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (37, N'0905-17-20273', 41, 49, 34, 57)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (38, N'0905-21-4966', 52, 19, 52, 92)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (39, N'0905-21-9650', 95, 41, 48, 44)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (40, N'0905-22-1146', 30, 25, 67, 11)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (41, N'0905-22-7933', 27, 58, 62, 80)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (42, N'0905-22-9918', 86, 40, 40, 11)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (43, N'0905-22-11274', 95, 67, 60, 73)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (44, N'0905-23-302', 26, 29, 10, 92)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (45, N'0905-23-2991', 67, 82, 97, 89)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (46, N'0905-23-13800', 79, 27, 27, 76)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (47, N'0905-23-15220', 22, 34, 20, 25)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (48, N'0905-23-15654', 54, 46, 24, 27)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (49, N'0905-23-20562', 87, 73, 33, 46)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (50, N'0905-24-1631', 43, 10, 29, 28)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (51, N'0905-24-1699', 82, 22, 31, 11)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (52, N'0905-24-4036', 41, 58, 64, 56)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (53, N'0905-24-6495', 50, 36, 44, 55)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (54, N'0905-24-6503', 25, 47, 41, 10)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (55, N'0905-24-10033', 50, 55, 76, 62)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (56, N'0905-24-10061', 50, 13, 94, 68)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (57, N'0905-24-10433', 30, 57, 93, 54)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (58, N'0905-24-11709', 69, 95, 69, 62)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (59, N'0905-24-12088', 41, 70, 51, 95)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (60, N'0905-24-12697', 94, 15, 82, 86)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (61, N'0905-24-13926', 21, 67, 16, 46)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (62, N'0905-24-14875', 11, 43, 50, 34)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (63, N'0905-24-15036', 57, 29, 97, 99)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (64, N'0905-24-15384', 79, 24, 32, 69)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (65, N'0905-24-16058', 94, 81, 60, 47)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (66, N'0905-24-16433', 75, 39, 54, 87)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (67, N'0905-24-17488', 84, 62, 69, 75)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (68, N'0905-24-17495', 62, 95, 55, 16)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (69, N'0905-24-17512', 17, 88, 34, 43)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (70, N'0905-24-17570', 31, 29, 85, 71)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (71, N'0905-24-22282', 60, 19, 71, 62)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (72, N'0905-24-22303', 77, 95, 41, 24)
INSERT [dbo].[tareas] ([id_tarea], [Carnet], [nota1], [nota2], [nota3], [nota4]) VALUES (73, N'0905-24-24315', 47, 69, 33, 25)
SET IDENTITY_INSERT [dbo].[tareas] OFF
GO
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-10-1279', N'NERY OSBERTO ESQUIVEL PALMA', N'nesquivelp1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-15-14297', N'MARIO DAVID TERETA SAPALUN', N'mteretas@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-15-9622', N'JERY ALEXANDER BARRIENTOS PERAZA', N'jbarrientosp@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-17-20273', N'SERGIO ANDRES CASTELLANOS SARCENO', N'scastellanoss1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-18-4689', N'FERNANDO JOSE VASQUEZ GONZALEZ', N'fvasquezg7@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-19-6478', N'MARVIN ISMAEL RECINOS MAZARIEGOS', N'mrecinosm9@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-20-5562', N'CRISTIAN ALEXANDER CASTILLO CASTILLO', N'ccastilloc10@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-21-4966', N'PABLO ALEXANDER GRIJALVA BARAHONA', N'pgrijalvab@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-21-9650', N'FERNANDO ENRIQUE JOSE NAJERA GODOY', N'fnajerag@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-22-11274', N'LEYVI LORENA REVOLORIO Y REVOLORIO', N'llorena@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-22-1146', N'EDUARDO GABRIEL VISONI MORALES', N'evisonim@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-22-5811', N'MILDRED HANANI PINEDA PINEDA', N'mpinedap3@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-22-7933', N'JOAQUIN MANUEL ESTUARDO RAMIREZ VEGA', N'jramirezv16@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-22-9918', N'DAYLY YURISEL ORELLANA ORELLANA', N'dorellanao4@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-23-13800', N'MARIO JOSE BARRERA LINAREZ', N'mbarreral4@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-23-15220', N'ABNER JOEL MATEO HERNANDEZ', N'amateroh@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-23-15654', N'NERY DANIEL VASQUEZ Y VASQUEZ', N'nvasquezy1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-23-18976', N'CARLOS FERNANDO MELGAR CORADO', N'cmelgarc4@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-23-20562', N'ODVIN ALEXIS MENDEZ LEMUS', N'omendezl4@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-23-2991', N'JOSTYN MANRRIQUE GODOY CHINCHILLA', N'jgodoyc15@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-23-302', N'CRISTIAN OLIVER BATEN ITZEP', N'cbateni1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-23-796', N'HECTOR LUIS GUSTAVO MELLADO SARCENO', N'hmellados@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-10033', N'LITZI YASMIRA PINEDA CERMENO', N'lpinedac7@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-10061', N'JOSE ALFONSO LINARES MUNOZ', N'jlinaresm3@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-10433', N'JORGE MARIO CANO COBON', N'jcanoc5@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-11709', N'KATHYA SOFIA MELGAR MARROQUIN', N'kmelgarm2@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-11747', N'ANTONY EZEQUIEL PINEDA PINEDA', N'apinedap10@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-12088', N'JEFERSON OSLEE CERMENO PINEDA', N'jcermenop2@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-12697', N'DILENA IRENA GRIJALVA TENAS', N'dgrijalvat1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-13926', N'LEBINSON DAVID GARCIA CASTILLO', N'lgarciac58@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-14875', N'JUAN DANIEL BARRERA OSUNA', N'jbarrerao4@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-15036', N'ANGEL EDUARDO CERMENO GARCIA', N'acermenog@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-15384', N'ANDREA FERNANDA RONQUILLO GODOY', N'aronquillog2@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-16058', N'TANIA ANDREA MIRANDA RAMIREZ', N'tmirandar@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-16186', N'EDGAR EMANUEL VALENZUELA PINTO', N'evalenzuelap4@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-1631', N'ELDER EZEQUIEL PEREZ Y PEREZ', N'eperezy7@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-16433', N'ROBERTSON ALESSANDRO MUNOZ PAREDES', N'rmunozp1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-1699', N'ANDY RENE NAJERA AGUIRRE', N'anajeraa2@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-17488', N'JOSE MARIO ROSALES PALMA', N'jrosalesp16@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-17495', N'RONALD ANTONIO AROCHE SANTOS', N'raroches1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-17512', N'FRANYER NOE CONTRERAS ZEPEDA', N'fcontrerasz@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-17570', N'GEOFREY EMMANUEL FLORIAN ESQUIVEL', N'gfloriane@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-1925', N'JEINER ANDY JOSUE PINEDA CORLETO', N'jpinedac17@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-19556', N'PEDRO JOSE MARROQUIN GONZALEZ', N'pmarroquing5@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-21379', N'DIEGO ANDRES ESCOBAR AGUILAR', N'descobara11@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-22282', N'JHONY ABRAHAM DE LEON PEREZ', N'jdeleonp29@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-22303', N'ARLIN GUISEL CASTILLO CERMENO', N'acastilloc31@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-22482', N'ANGELLO D MARCO ESCOBAR GONZALEZ', N'aescobarg21@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-22750', N'LESTER DAVID PAYES MENDEZ', N'lpayesm@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-23552', N'DEIVID ALBERTO GUERRA CARPIO', N'dguerrac7@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-24315', N'MARIANA ALEJANDRA GARCIA HERNANDEZ', N'mgarciah30@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-2654', N'ERICK MOISES ARTURO SANDOVAL PALMA', N'esandovalp9@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-3068', N'FERNANDO JOSE VEGA GUDIEL', N'fvegag1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-3086', N'JOSE LEONEL CRUZ LOPEZ', N'jcruzl20@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-3576', N'JOSE CARLOS CRUZ FLORIAN', N'jcruzf6@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-4036', N'CELSO GABRIEL SARCENO CORADO', N'csarcenoc1@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-4847', N'CRISTIAN JOSUE FLORES PLEITEZ', N'cfloresp5@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-5045', N'MELANY ROSMERY PEREZ ORANTES', N'mperezo37@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-5051', N'ESTALIN ALEJANDRO GODOY CAMPOS', N'egodoyc4@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-5388', N'OSCAR GUILLERMO SANDOVAL GARCIA', N'osandovalg1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-5462', N'JOSUE RAFAEL PEREZ AGUIRRE', N'jpereza62@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-6263', N'ADRIANA STEPHANIA LOPEZ LARA', N'alopezl90@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-6339', N'JOAN NATALIE CAMILA MARTINEZ REYES', N'jmartinezr30@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-6375', N'TAHLY YULIANA JIMENEZ BOTEO', N'tjimenezb@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-6495', N'JOSUE DAVID PANIAGUA OLIVARES', N'jpaniaguao@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-6503', N'MARIO EDUARDO RIVERA SALGUERO', N'mriveras10@miumg.edu.gt', N'A')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-6913', N'EDWINS JOSUE ARGUETA DUARTE', N'earguetad2@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-7000', N'GERSON LEONEL JIMENEZ GONZALEZ', N'gjimenezg9@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-7010', N'CARLO RENE HERMOGENES RIVERA ESTRADA', N'criverae2@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-7370', N'JOSE CARLOS MORATAYA ENRIQUE', N'jmoratayae1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-7854', N'ARANZA BRIGITTE RUEDA ALVARADO', N'aruedaa@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-8364', N'JUAN LUIS MOLINA ORELLANA', N'jmolinao1@miumg.edu.gt', N'B')
INSERT [dbo].[Tb_alumnos] ([CARNET], [ESTUDIANTE], [EMAIL], [SECCION]) VALUES (N'0905-24-9756', N'LUIS ANGEL SANTIAGO PALMA', N'lsantiagop1@miumg.edu.gt', N'B')
GO
ALTER TABLE [dbo].[asistencia]  WITH CHECK ADD  CONSTRAINT [FK_asistencia_Tb_alumnos] FOREIGN KEY([CARNET])
REFERENCES [dbo].[Tb_alumnos] ([CARNET])
GO
ALTER TABLE [dbo].[asistencia] CHECK CONSTRAINT [FK_asistencia_Tb_alumnos]
GO
ALTER TABLE [dbo].[notas_finales]  WITH CHECK ADD  CONSTRAINT [FK_notas_finales_Tb_alumnos] FOREIGN KEY([carnet])
REFERENCES [dbo].[Tb_alumnos] ([CARNET])
GO
ALTER TABLE [dbo].[notas_finales] CHECK CONSTRAINT [FK_notas_finales_Tb_alumnos]
GO
ALTER TABLE [dbo].[tareas]  WITH CHECK ADD  CONSTRAINT [FK_tareas_Tb_alumnos] FOREIGN KEY([Carnet])
REFERENCES [dbo].[Tb_alumnos] ([CARNET])
GO
ALTER TABLE [dbo].[tareas] CHECK CONSTRAINT [FK_tareas_Tb_alumnos]
GO
ALTER TABLE [dbo].[asistencia]  WITH CHECK ADD CHECK  (([PRESENTE]='N' OR [PRESENTE]='S'))
GO
USE [master]
GO
ALTER DATABASE [UMG] SET  READ_WRITE 
GO
