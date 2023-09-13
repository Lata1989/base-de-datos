USE [BDPedidos]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 18/08/2023 19:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 18/08/2023 19:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormasDePago]    Script Date: 18/08/2023 19:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormasDePago](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_FormasDePago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 18/08/2023 19:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Importe] [float] NULL,
	[Pedido] [int] NULL,
	[FormaDePago] [int] NULL,
	[VencTarjeta] [varchar](50) NULL,
	[NroTarjeta] [varchar](50) NULL,
	[TipoTarjeta] [varchar](50) NULL,
	[Moneda] [int] NULL,
	[Emisor] [varchar](50) NULL,
	[EntidadBancaria] [varchar](50) NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 18/08/2023 19:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Cliente] [int] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidosXProductos]    Script Date: 18/08/2023 19:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidosXProductos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[PrecioUnitario] [float] NULL,
 CONSTRAINT [PK_PedidosXProductos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 18/08/2023 19:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Existencia] [int] NULL,
	[Precio] [float] NULL,
	[Impuestos] [float] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 
GO
INSERT [dbo].[Clientes] ([Id], [Nombre], [Telefono]) VALUES (1, N'Ivana Garabello', N'155555555')
GO
INSERT [dbo].[Clientes] ([Id], [Nombre], [Telefono]) VALUES (2, N'Juan Perez', N'155888888')
GO
INSERT [dbo].[Clientes] ([Id], [Nombre], [Telefono]) VALUES (3, N'Maria Juarez', N'155777777')
GO
INSERT [dbo].[Clientes] ([Id], [Nombre], [Telefono]) VALUES (4, N'Lorena Garcia', N'155888888')
GO
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Estados] ON 
GO
INSERT [dbo].[Estados] ([Id], [Nombre]) VALUES (1, N'Pendiente')
GO
INSERT [dbo].[Estados] ([Id], [Nombre]) VALUES (2, N'Pagado')
GO
INSERT [dbo].[Estados] ([Id], [Nombre]) VALUES (3, N'Procesando')
GO
INSERT [dbo].[Estados] ([Id], [Nombre]) VALUES (4, N'Enviado')
GO
INSERT [dbo].[Estados] ([Id], [Nombre]) VALUES (5, N'Entregado')
GO
SET IDENTITY_INSERT [dbo].[Estados] OFF
GO
SET IDENTITY_INSERT [dbo].[FormasDePago] ON 
GO
INSERT [dbo].[FormasDePago] ([Id], [Nombre]) VALUES (1, N'Efectivo')
GO
INSERT [dbo].[FormasDePago] ([Id], [Nombre]) VALUES (2, N'Tarjeta')
GO
INSERT [dbo].[FormasDePago] ([Id], [Nombre]) VALUES (3, N'Cheque')
GO
SET IDENTITY_INSERT [dbo].[FormasDePago] OFF
GO
SET IDENTITY_INSERT [dbo].[Pedidos] ON 
GO
INSERT [dbo].[Pedidos] ([Id], [Fecha], [Cliente], [Estado]) VALUES (1, CAST(N'2023-01-20' AS Date), 1, 1)
GO
INSERT [dbo].[Pedidos] ([Id], [Fecha], [Cliente], [Estado]) VALUES (2, CAST(N'2023-02-25' AS Date), 2, 1)
GO
INSERT [dbo].[Pedidos] ([Id], [Fecha], [Cliente], [Estado]) VALUES (3, CAST(N'2023-03-01' AS Date), 2, 1)
GO
INSERT [dbo].[Pedidos] ([Id], [Fecha], [Cliente], [Estado]) VALUES (4, CAST(N'2023-03-05' AS Date), 3, 2)
GO
INSERT [dbo].[Pedidos] ([Id], [Fecha], [Cliente], [Estado]) VALUES (5, CAST(N'2023-03-10' AS Date), 2, 1)
GO
INSERT [dbo].[Pedidos] ([Id], [Fecha], [Cliente], [Estado]) VALUES (6, CAST(N'2023-03-20' AS Date), 3, 1)
GO
INSERT [dbo].[Pedidos] ([Id], [Fecha], [Cliente], [Estado]) VALUES (9, CAST(N'2023-04-10' AS Date), 4, 2)
GO
INSERT [dbo].[Pedidos] ([Id], [Fecha], [Cliente], [Estado]) VALUES (10, CAST(N'2023-05-12' AS Date), 2, 3)
GO
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
GO
SET IDENTITY_INSERT [dbo].[PedidosXProductos] ON 
GO
INSERT [dbo].[PedidosXProductos] ([Id], [IdPedido], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (1, 1, 1, 2, 1000)
GO
INSERT [dbo].[PedidosXProductos] ([Id], [IdPedido], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (2, 1, 2, 1, 2500)
GO
INSERT [dbo].[PedidosXProductos] ([Id], [IdPedido], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (3, 2, 3, 2, 1500)
GO
INSERT [dbo].[PedidosXProductos] ([Id], [IdPedido], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (4, 3, 3, 1, 1500)
GO
INSERT [dbo].[PedidosXProductos] ([Id], [IdPedido], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (5, 3, 4, 2, 1000)
GO
INSERT [dbo].[PedidosXProductos] ([Id], [IdPedido], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (6, 4, 1, 2, 1000)
GO
INSERT [dbo].[PedidosXProductos] ([Id], [IdPedido], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (7, 4, 2, 2, 2000)
GO
INSERT [dbo].[PedidosXProductos] ([Id], [IdPedido], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (8, 4, 3, 3, 2500)
GO
SET IDENTITY_INSERT [dbo].[PedidosXProductos] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [Existencia], [Precio], [Impuestos]) VALUES (1, N'Producto 1', 10, 1500, 10)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [Existencia], [Precio], [Impuestos]) VALUES (2, N'Producto 2', 20, 2500, 10)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [Existencia], [Precio], [Impuestos]) VALUES (3, N'Producto 3', 0, 2000, 10)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [Existencia], [Precio], [Impuestos]) VALUES (4, N'Producto 4', 2, 1250, 20)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [Existencia], [Precio], [Impuestos]) VALUES (5, N'Producto 5', 3, 2000, 20)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [Existencia], [Precio], [Impuestos]) VALUES (6, N'Producto 6', 0, 1420, 10)
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_FormasDePago] FOREIGN KEY([FormaDePago])
REFERENCES [dbo].[FormasDePago] ([Id])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_FormasDePago]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Pedidos] FOREIGN KEY([Pedido])
REFERENCES [dbo].[Pedidos] ([Id])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Pedidos]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY([Cliente])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Estados] FOREIGN KEY([Estado])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Estados]
GO
ALTER TABLE [dbo].[PedidosXProductos]  WITH CHECK ADD  CONSTRAINT [FK_PedidosXProductos_Pedidos] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[Pedidos] ([Id])
GO
ALTER TABLE [dbo].[PedidosXProductos] CHECK CONSTRAINT [FK_PedidosXProductos_Pedidos]
GO
ALTER TABLE [dbo].[PedidosXProductos]  WITH CHECK ADD  CONSTRAINT [FK_PedidosXProductos_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([Id])
GO
ALTER TABLE [dbo].[PedidosXProductos] CHECK CONSTRAINT [FK_PedidosXProductos_Productos]
GO
