USE [master]
GO
/****** nombre:  Nallelys pichardo matricula 19-SIIT-1-072 SECCION 0541 ******/
/****** Object:  Database [soluna]    Script Date: 12/12/20 9:26:51 p. m. ******/
CREATE DATABASE [soluna]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'soluna', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\soluna.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'soluna_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\soluna_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [soluna] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [soluna].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [soluna] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [soluna] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [soluna] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [soluna] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [soluna] SET ARITHABORT OFF 
GO
ALTER DATABASE [soluna] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [soluna] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [soluna] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [soluna] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [soluna] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [soluna] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [soluna] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [soluna] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [soluna] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [soluna] SET  ENABLE_BROKER 
GO
ALTER DATABASE [soluna] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [soluna] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [soluna] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [soluna] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [soluna] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [soluna] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [soluna] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [soluna] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [soluna] SET  MULTI_USER 
GO
ALTER DATABASE [soluna] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [soluna] SET DB_CHAINING OFF 
GO
ALTER DATABASE [soluna] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [soluna] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [soluna] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [soluna] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [soluna] SET QUERY_STORE = OFF
GO
USE [soluna]
GO
/****** Object:  Table [dbo].[detalle]    Script Date: 12/12/20 9:26:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle](
	[idfactura] [int] NOT NULL,
	[cantidad] [float] NULL,
	[precio] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idfactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 12/12/20 9:26:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[numfactura] [int] NOT NULL,
	[total] [float] NULL,
	[subtotal] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[numfactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produccion]    Script Date: 12/12/20 9:26:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produccion](
	[idproduccion] [int] NOT NULL,
	[nombreproduccion] [varchar](50) NULL,
	[precio] [float] NULL,
	[stock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idproduccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 12/12/20 9:26:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[idproveedor] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idproveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 12/12/20 9:26:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idclientes] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idclientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (1, 1, 1000)
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (2, 2, 1000)
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (3, 3, 1000)
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (4, 4, 1000)
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (5, 5, 1000)
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (6, 6, 1000)
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (7, 7, 1000)
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (8, 8, 1000)
INSERT [dbo].[detalle] ([idfactura], [cantidad], [precio]) VALUES (9, 9, 1000)
GO
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (1, 1000, 1000)
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (2, 2000, 2000)
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (3, 1000, 1000)
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (4, 1000, 1000)
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (5, 2000, 2000)
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (6, 1000, 1000)
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (7, 2000, 2000)
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (8, 1000, 1000)
INSERT [dbo].[factura] ([numfactura], [total], [subtotal]) VALUES (9, 2000, 2000)
GO
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (1, N'factura', 1000, 100)
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (2, N'registros', 1000, 100)
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (3, N'documentos', 1000, 100)
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (4, N'factura con dgii', 1000, 100)
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (5, N'factura comprobante', 1000, 100)
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (6, N'factura con sello', 1000, 100)
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (7, N'factura detallada', 1000, 100)
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (8, N'factura encabezado', 1000, 100)
INSERT [dbo].[produccion] ([idproduccion], [nombreproduccion], [precio], [stock]) VALUES (9, N'nominas', 1000, 100)
GO
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (1, N'factura', N'dgii')
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (2, N'factura', N'comprobante')
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (3, N'factura', N'comprobante')
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (4, N'factura', N'detalle')
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (5, N'factura', N'encabezado')
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (6, N'registros', N'completos')
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (7, N'inventario', N'completos')
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (8, N'nominas', N'clientes')
INSERT [dbo].[proveedor] ([idproveedor], [nombre], [descripcion]) VALUES (9, N'factura', N'encabezado')
GO
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (1, N'nallelys', N'calle primera', 80956923)
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (2, N'pablo ', N'calle segunda', 80956923)
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (3, N'melanie', N'urbanizacion tropical', 80956923)
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (4, N'kamila', N'villa juana', 80956923)
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (5, N'sadiel', N'tropical', 80956923)
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (6, N'francisco', N'sector mar azul', 80956923)
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (7, N'adrianny', N'sector gazcue', 80956923)
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (8, N'sarah', N'sector  naco', 80956923)
INSERT [dbo].[usuario] ([idclientes], [nombre], [direccion], [telefono]) VALUES (9, N'javier', N'independencia', 80956923)
GO
ALTER TABLE [dbo].[produccion]  WITH CHECK ADD  CONSTRAINT [FK_produccion_detalle] FOREIGN KEY([idproduccion])
REFERENCES [dbo].[detalle] ([idfactura])
GO
ALTER TABLE [dbo].[produccion] CHECK CONSTRAINT [FK_produccion_detalle]
GO
ALTER TABLE [dbo].[produccion]  WITH CHECK ADD  CONSTRAINT [FK_produccion_factura] FOREIGN KEY([idproduccion])
REFERENCES [dbo].[factura] ([numfactura])
GO
ALTER TABLE [dbo].[produccion] CHECK CONSTRAINT [FK_produccion_factura]
GO
ALTER TABLE [dbo].[proveedor]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_produccion] FOREIGN KEY([idproveedor])
REFERENCES [dbo].[produccion] ([idproduccion])
GO
ALTER TABLE [dbo].[proveedor] CHECK CONSTRAINT [FK_proveedor_produccion]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_factura] FOREIGN KEY([idclientes])
REFERENCES [dbo].[factura] ([numfactura])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_factura]
GO
USE [master]
GO
ALTER DATABASE [soluna] SET  READ_WRITE 
GO
