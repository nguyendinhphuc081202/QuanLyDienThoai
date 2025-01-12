USE [master]
GO
/****** Object:  Database [QLdienthoai]    Script Date: 1/27/2024 9:03:29 PM ******/
CREATE DATABASE [QLdienthoai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLdienthoai', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLdienthoai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLdienthoai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLdienthoai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLdienthoai] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLdienthoai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLdienthoai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLdienthoai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLdienthoai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLdienthoai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLdienthoai] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLdienthoai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLdienthoai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLdienthoai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLdienthoai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLdienthoai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLdienthoai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLdienthoai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLdienthoai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLdienthoai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLdienthoai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLdienthoai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLdienthoai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLdienthoai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLdienthoai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLdienthoai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLdienthoai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLdienthoai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLdienthoai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLdienthoai] SET  MULTI_USER 
GO
ALTER DATABASE [QLdienthoai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLdienthoai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLdienthoai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLdienthoai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLdienthoai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLdienthoai] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLdienthoai', N'ON'
GO
ALTER DATABASE [QLdienthoai] SET QUERY_STORE = OFF
GO
USE [QLdienthoai]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 1/27/2024 9:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
	[Phuongthucthanhtoan] [int] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 1/27/2024 9:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
	[Thanhtoan] [int] NULL,
	[Diachinhanhang] [nvarchar](100) NULL,
	[Tongtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 1/27/2024 9:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](10) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hedieuhanh]    Script Date: 1/27/2024 9:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hedieuhanh](
	[Mahdh] [int] IDENTITY(1,1) NOT NULL,
	[Tenhdh] [nchar](10) NULL,
 CONSTRAINT [PK_Hedieuhanh] PRIMARY KEY CLUSTERED 
(
	[Mahdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 1/27/2024 9:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
	[Anhdaidien] [nchar](30) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 1/27/2024 9:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 1/27/2024 9:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Thesim] [int] NULL,
	[Bonhotrong] [int] NULL,
	[Sanphammoi] [bit] NULL,
	[Ram] [int] NULL,
	[Anhbia] [nvarchar](50) NULL,
	[Mahang] [int] NULL,
	[Mahdh] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (24, 2, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (24, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (25, 2, 5, CAST(2000000 AS Decimal(18, 0)), CAST(10000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (25, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (26, 2, 3, CAST(2000000 AS Decimal(18, 0)), CAST(6000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (26, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (27, 2, 3, CAST(2000000 AS Decimal(18, 0)), CAST(6000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (27, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (28, 2, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (28, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (29, 2, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (30, 2, 10, CAST(2000000 AS Decimal(18, 0)), CAST(20000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (30, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (31, 2, 10, CAST(2000000 AS Decimal(18, 0)), CAST(20000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (31, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (32, 9, 2, CAST(1000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (33, 6, 2, CAST(2000000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (34, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (35, 5, 1, CAST(20000000 AS Decimal(18, 0)), CAST(20000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (35, 10, 1, CAST(11000000 AS Decimal(18, 0)), CAST(11000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (36, 5, 1, CAST(20000000 AS Decimal(18, 0)), CAST(20000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Phuongthucthanhtoan]) VALUES (36, 10, 1, CAST(11000000 AS Decimal(18, 0)), CAST(11000000 AS Decimal(18, 0)), 1)
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (24, CAST(N'2024-01-08T14:59:42.090' AS DateTime), 1, 16, 1, N'Hà Nội', CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (25, CAST(N'2024-01-08T14:59:42.090' AS DateTime), 1, 15, 1, N'Hà Nội', CAST(12000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (26, CAST(N'2024-01-08T14:59:42.090' AS DateTime), 1, 15, 1, N'Hà Nội', CAST(8000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (27, CAST(N'2024-01-08T14:59:42.090' AS DateTime), 1, 15, 1, N'Hà Nội', CAST(8000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (28, CAST(N'2024-01-08T14:59:42.090' AS DateTime), NULL, 16, 1, N'Hà Nội', CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (29, CAST(N'2024-01-08T14:59:42.090' AS DateTime), NULL, 36, 1, N'Hà Nội', CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (30, CAST(N'2024-01-08T14:59:42.090' AS DateTime), NULL, 36, 1, N'Hà Nội', CAST(22000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (31, CAST(N'2024-01-08T14:59:42.090' AS DateTime), NULL, 36, 1, N'Hà Nội', CAST(22000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (32, CAST(N'2024-01-08T14:59:42.090' AS DateTime), 1, 16, 1, N'Hà Nội', CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (33, CAST(N'2024-01-20T22:46:03.603' AS DateTime), NULL, 15, 1, N'', CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (34, CAST(N'2024-01-20T22:55:09.973' AS DateTime), NULL, 15, 1, N'', CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (35, CAST(N'2024-01-22T19:46:28.657' AS DateTime), NULL, 15, 1, N'Hà Nội', CAST(31000000 AS Decimal(18, 0)))
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung], [Thanhtoan], [Diachinhanhang], [Tongtien]) VALUES (36, CAST(N'2024-01-22T20:09:52.930' AS DateTime), 1, 15, 1, N'Hà nội', CAST(31000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'Samsung   ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'Apple     ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'Xiaomi    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Vsmart    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Bphone    ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[Hedieuhanh] ON 

INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (1, N'Android   ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (2, N'IOS       ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (3, N'VOS       ')
SET IDENTITY_INSERT [dbo].[Hedieuhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (14, N'Admin', N'Admin@gmail.com', N'0812883636', N'12345678', 2, N'Hà Nội', N'                              ')
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (15, N'Nguyễn Quang Luân', N'nqluan2202@gmail.com', N'0869834830', N'12345678', 1, N'Hà Nội', N'/Images/files/avt4.jpg        ')
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (16, N'Trịnh Lê Quốc Cường', N'cuong@gmail.com', N'0812883636', N'12345678', 1, N'Thanh Hóa', N'/Images/files/avt3.jpg        ')
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (36, N'Đinh Việt Đức', N'duc@gmail.com', N'0812883637', N'12345678', 1, N'Hải Dương', NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (39, N'Nguyễn Thanh Trung', N'trung@gmail.com', N'0812883636', N'12345678', 1, N'Thái Bình', NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (41, N'Nguyễn Minh Trí', N'tri@gmail.com', N'0812883636', N'12345678', 1, N'Hà Nội', NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (42, N'Nguyễn Hữu Thảo', N'thao@gmail.com', N'0812883636', N'12345678', 1, N'Thái Bình', NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi], [Anhdaidien]) VALUES (43, N'Đinh Trường Phước', N'phuoc@gmail.com', N'0341244123', N'12345678', 1, N'Thái Bình', NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (2, N'Apple Iphone 13', CAST(13000000 AS Decimal(18, 0)), 9, N'Apple Iphone 13', 1, 64, 0, 8, N'/Images/files/ip13.png', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (5, N'Apple Iphone 14', CAST(20000000 AS Decimal(18, 0)), 10, N'Apple Iphone 14', 1, 128, 0, 1, N'/Images/files/ip14.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (6, N'Apple Iphone 15', CAST(26000000 AS Decimal(18, 0)), 10, N'Apple Iphone 15', 1, 512, 0, 1, N'/Images/files/ip15.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (7, N'Apple Iphone 11Pro', CAST(8990000 AS Decimal(18, 0)), 2, N'Apple Iphone 11Pro', 1, 128, 0, 1, N'/Images/files/ip11pro.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (8, N'Samsung Galaxy A23 Ultra', CAST(12900000 AS Decimal(18, 0)), 1, N'Samsung Galaxy A23', 2, 32, 0, 2, N'/Images/files/ss1(1).jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (9, N'Samsung Galaxy Z Fold5 ', CAST(13000000 AS Decimal(18, 0)), 1, N'Samsung Galaxy Z Fold5 ', 1, 64, 0, 1, N'/Images/files/ss2.png', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (10, N'Samsung Galaxy Z Flip5', CAST(11000000 AS Decimal(18, 0)), 1, N'Samsung Galaxy Z Flip5', 1, 128, 0, 2, N'/Images/files/ss3(1).jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (11, N'Samsung Galaxy S20 FE ', CAST(12000000 AS Decimal(18, 0)), 2, N'Samsung Galaxy S20 FE ', 2, 64, 0, 2, N'/Images/files/ss4.jpeg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (13, N'Xiaomi 11T 5G 128GB', CAST(8700000 AS Decimal(18, 0)), 10, N'Xiaomi 11T 5G 128GB', 2, 64, 0, 4, N'/Images/files/mi1.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (14, N'Xiaomi Redmi 13C 4GB', CAST(9000000 AS Decimal(18, 0)), 10, N'Điện thoại Xiaomi Redmi 13C 4GB', 2, 64, 0, 6, N'/Images/files/mi2.png', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (15, N'Xiaomi Redmi Note 11 4/128GB', CAST(9200000 AS Decimal(18, 0)), 10, N'Xiaomi Redmi Note 11 4/128GB', 2, 32, 0, 6, N'/Images/files/mi3.jpeg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (16, N'Xiaomi Redmi Note 11 4/64G', CAST(10000000 AS Decimal(18, 0)), 10, N'Xiaomi Redmi Note 11 4/64G', 2, 64, 0, 2, N'/Images/files/mi4.jpeg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (18, N'Xiaomi mi8', CAST(11600000 AS Decimal(18, 0)), 11, N'Mi8', 2, 128, 0, 8, N'/Images/files/mi4.jpeg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (19, N'Apple Iphone 11Pro Max', CAST(9000000 AS Decimal(18, 0)), 20, N'Apple Iphone 11PRM', 1, 512, 0, 8, N'/Images/files/ip11pro.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (20, N'SamSung Galaxy Ultra', CAST(9000000 AS Decimal(18, 0)), 10, N'SamSung Galaxy Ultra', 2, 64, 0, 6, N'/Images/files/ss3(1).jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hedieuhanh] FOREIGN KEY([Mahdh])
REFERENCES [dbo].[Hedieuhanh] ([Mahdh])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hedieuhanh]
GO
USE [master]
GO
ALTER DATABASE [QLdienthoai] SET  READ_WRITE 
GO
