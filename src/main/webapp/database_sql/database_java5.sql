
use master
go

drop database PS14046_PhamCongTuan_Java5__ud15310
go

CREATE DATABASE PS14046_PhamCongTuan_Java5__ud15310
go
use PS14046_PhamCongTuan_Java5__ud15310
go

CREATE TABLE accounts
(
	 username   varchar (50) primary key,
	 activated   bit  NOT NULL,
	 admin   bit  NOT NULL,
	 email   varchar (50) NULL,
	 fullname   nvarchar (50) NULL,
	 password   varchar (50) NULL,
	 photo   varchar (50) NULL,
)
GO
CREATE TABLE  categories (
	 id   varchar (10) primary key,
	 name   nvarchar (50) NULL,
)
go

CREATE TABLE  products (
	 id   int  IDENTITY(1,1) primary key,
	 available   bit  NULL,
	 createdate   date  NULL,
	 image   varchar (150) NULL,
	 name   nvarchar (150) NULL,
	 price   float  NULL,
	 categoryid   varchar (10) references categories(id)
)
go
CREATE TABLE  orders (
	 id   int  IDENTITY(1,1) primary key,
	 address   nvarchar (50) NULL,
	 createdate   date  NULL,
	 username   varchar (50) references accounts(username)
)
go

CREATE TABLE  orderdetails (
	 id   int  IDENTITY(1,1) primary key,
	 price   float  NULL,
	 quantity   int  NULL,
	 orderid   int  references orders(id),
	 productid   int  references products(id)
)
GO

select * from accounts
go
select * from categories
go
select * from products
go
select * from orders
go
select * from orderdetails
go


INSERT [dbo].[categories] ([id], [name]) VALUES (N'1', N'Laptop')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'2', N'Điện thoại')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'3', N'Tai nghe Gaming')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'4', N'Chuột, bàn phím')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'5', N'Quạt, tản nhiệt')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'6', N'Máy tính bàn')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'7', N'Nguồn máy tính')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'8', N'Case máy tính')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'9', N'USB & ổ cứng')


SET IDENTITY_INSERT [dbo].[products] ON 
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (1, 1, CAST(N'2000-01-01' AS Date), N'laptop-asus.jpg', N'Laptop Asus ROG Strix SCAR 15 G533QM HF089T', 47990000, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (2, 1, CAST(N'2000-01-01' AS Date), N'iphone-12.jpg', N'Điện Thoại Di Động iPhone 12 Pro Max 256GB Gold MGDE3VN/A', 37990000, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (3, 1, CAST(N'2000-01-01' AS Date), N'tai-nghe-logitech.jpg', N'Tai nghe SteelSeries Arctis Pro Wireless', 8490000, N'3')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (4, 1, CAST(N'2000-01-01' AS Date), N'case-cooler-master.jpg', N'Case Cooler Master Cosmos C700M', 12190000, N'8')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (5, 1, CAST(N'2000-01-01' AS Date), N'nguon-may-tinh-asus.jpg', N'( 850W ) Nguồn ASUS ROG THOR 850P - 80 Plus Platinum - Full Modular', 6990000, N'7')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (6, 1, CAST(N'2000-01-01' AS Date), N'tan-nhiet-aio-corsair.jpg', N'Tản nước AIO Corsair CPU Hydro Cooler H100i RGB Platinum SE', 4390000, N'5')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (7, 1, CAST(N'2000-01-01' AS Date), N'chuot-logitech.jpg', N'Chuột Logitech G903 Hero Lightspeed Wireless', 2990000, N'4')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (8, 1, CAST(N'2000-01-01' AS Date), N'may-tinh-ban-yumi.jpg', N'PC GVN Yuumi M', 23690000, N'6')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (9, 1, CAST(N'2000-01-01' AS Date), N'ban-phim-asus.jpg', N'Bàn phím ASUS TUF Gaming K1 RGB', 1071000, N'4')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (10, 1, CAST(N'2000-01-01' AS Date), N'ssd-aorus.jpg', N'SSD AORUS AIC NVMe SSD 512GB RGB', 3650000, N'9')
/*
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (11, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu mi', 5, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (12, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu bap', 3, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (13, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu khoai', 2, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (14, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu mi', 5, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (15, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu bap', 3, N'2')
*/
SET IDENTITY_INSERT [dbo].[products] OFF

