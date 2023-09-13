INSERT [dbo].[Usuario] ([Nick], [Nombre], [Apellidos], [EMail], [Password]) VALUES ('CARLOS', 'Carlos', 'Juarez', 'cjuarez@gmail.com', '123')

INSERT [dbo].[Usuario] ([Nick], [Nombre], [Apellidos], [EMail], [Password]) VALUES ('JOSE', 'Jose', 'Martinez', '-', '8745')

INSERT [dbo].[Usuario] ([Nick], [Nombre], [Apellidos], [EMail], [Password]) VALUES ('JUAN', 'Juan', 'Perez', 'juan@gmail.com', '111')

INSERT [dbo].[Usuario] ([Nick], [Nombre], [Apellidos], [EMail], [Password]) VALUES ('LAURA', 'Laura', 'Lopez', 'laura@gmail.com', '222')

INSERT [dbo].[Usuario] ([Nick], [Nombre], [Apellidos], [EMail], [Password]) VALUES ('MARIA', 'Maria', 'Gallo', '-', '874')


INSERT [dbo].[ListaReproduccion] ([NombreLista], [NickUsuario]) VALUES ('Lista Románticos', 'LAURA')

INSERT [dbo].[ListaReproduccion] ([NombreLista], [NickUsuario]) VALUES ('Varios', 'CARLOS')

INSERT [dbo].[ListaReproduccion] ([NombreLista], [NickUsuario]) VALUES ('Pop', 'MARIA')

INSERT [dbo].[ListaReproduccion] ([NombreLista], [NickUsuario]) VALUES ('Lista Pop', 'LAURA')

INSERT [dbo].[ListaReproduccion] ([NombreLista], [NickUsuario]) VALUES ('Lista Electrónico', 'LAURA')


INSERT [dbo].[Cancion] ([Genero], [Autor], [Titulo], [Fecha], [Duracion], [Bitrate]) VALUES ('ROMANTICA', 'Axel', 'Aire', CAST('2017-07-01' AS Date), CAST('02:00:00' AS Time), '-')

INSERT [dbo].[Cancion] ([Genero], [Autor], [Titulo], [Fecha], [Duracion], [Bitrate]) VALUES ('POP', 'Shakira', 'La bicicleta', CAST('2017-05-20' AS Date), CAST('03:25:00' AS Time), '-')

INSERT [dbo].[Cancion] ([Genero], [Autor], [Titulo], [Fecha], [Duracion], [Bitrate]) VALUES ('ROMANTICA', 'Ricardo Montaner', '¿Qué vas a hacer?', CAST('2018-11-10' AS Date), CAST('03:10:00' AS Time), N'-')

INSERT [dbo].[Cancion] ([Genero], [Autor], [Titulo], [Fecha], [Duracion], [Bitrate]) VALUES ('ELECTRONICA', 'David Guetta', 'Titanium', CAST('2015-10-20' AS Date), CAST('04:00:00' AS Time), N'-')

INSERT [dbo].[Cancion] ([Genero], [Autor], [Titulo], [Fecha], [Duracion], [Bitrate]) VALUES ('ELECTRONICA', 'David Guetta', 'Love is Gone', CAST('2014-10-10' AS Date), CAST('03:59:00' AS Time), NULL)

INSERT [dbo].[Cancion] ([Genero], [Autor], [Titulo], [Fecha], [Duracion], [Bitrate]) VALUES ('POP', 'Luis Fonsi', 'Despacito', CAST('2017-10-20' AS Date), CAST('04:05:00' AS Time), NULL)

INSERT [dbo].[Cancion] ([Genero], [Autor], [Titulo], [Fecha], [Duracion], [Bitrate]) VALUES ('POP', 'Abel Pintos', 'Motivos', CAST('2016-09-01' AS Date), CAST('04:25:00' AS Time), NULL)

INSERT [dbo].[Cancion] ([Genero], [Autor], [Titulo], [Fecha], [Duracion], [Bitrate]) VALUES ('ROMANTICA', 'Adele', 'Hello', CAST('2016-11-10' AS Date), CAST('04:25:00' AS Time), NULL)


INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (1, 1)

INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (1, 3)

INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (1, 8)

INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (2, 2)

INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (2, 1)

INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (2, 3)

INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (2, 7)

INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (3, 2)

INSERT [dbo].[ListaReproduccionXCancion] ([IdLista], [IdCancion]) VALUES (3, 6)

