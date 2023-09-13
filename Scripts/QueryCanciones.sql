create database BDCanciones;

use BDCanciones;

create table Usuario(
	Nick varchar(100) primary key not null,
	Nombre varchar(50) not null,
	Apellidos varchar(50) not null,
	EMail varchar(50) not null,
	[Password] varchar(50) not null
);

create table Cancion(
	Id int primary key identity(1,1) not null,
	Genero varchar(50) not null,
	Autor varchar(200) not null,
	Titulo varchar(200) not null,
	Fecha date not null,
	Duracion time(7) not null,
	Bitrate varchar(200),
	NickUsuario varchar(100) foreign key references Usuario(Nick)
);

create table ListaReproduccion(
	Id int primary key identity(1,1) not null,
	NombreLista varchar(50) not null,
	NickUsuario varchar(100) foreign key references Usuario(Nick),
);

create table ListaReproduccionXCancion(
	Id int primary key identity(1,1) not null,
	IdLista int foreign key references ListaReproduccion(Id),
	IdCancion int foreign key references Cancion(Id),
);


-- Consultas

--Listar todas las canciones de los géneros POP y ROMANTICAS. Ordenarlas alfabéticamente primero por género luego por título de la canción.

-- Ejercicio 1

-- Parte 1
select
	Titulo,
	Genero
from
	Cancion
where
	Genero like '%romantica%' or Genero like '%pop%'
order by
	Genero asc;

-- Parte 2

select
	Titulo,
	Genero
from
	Cancion
where
	Genero like '%romantica%' or Genero like '%pop%'
order by
	Titulo asc;

-- Ejericio 2
-- Listar la cantidad de canciones agrupadas y ordenadas por género.

select 
	Genero,
	Count(Genero) as Cantidad
from
	Cancion
group by
	Genero;


-- Ejercicio 3
-- ¿Cuál es la duración máxima entre todas las canciones?

select
	max(Duracion) as 'Duracion mas larga'
from
	Cancion;

-- Ejercicio 4
-- Listar usuario y cantidad de listas de reproducción creadas por cada uno de ellos.

select
	count(NickUsuario) as 'Cantidad listas',
	U.Nombre
from 
	ListaReproduccion as LR
inner join Usuario as U on U.Nick = LR.NickUsuario
group by U.Nombre;

-- Ejercicio 5
-- Mostrar sólo lo usuarios que crearon 3 listas de reproducción o más.

select
	U.Nombre
from 
	Usuario as U
inner join ListaReproduccion as LR on U.Nick = LR.NickUsuario
group by U.Nombre
having count(LR.NickUsuario)>= 3;


-- Ejercicio 6
--  Mostrar Nombre de la lista y cantidad de canciones que tiene dicha lista. Ordenar la consulta por cantidad de canciones descendente.

select
	NombreLista as 'Nombre Lista',
	count (LRXC.idLista) as 'Cantidad canciones'
from 
	ListaReproduccion as LR
inner join ListaReproduccionXCancion as LRXC on LR.Id = LRXC.IdLista
group by LR.NombreLista;

-- Ejercicio 7
-- Mostrar los tres primeros registros de la lista de canciones.
select
	top 3 *
from Cancion;

-- Ejercicio 8
--  ¿En qué listas de reproducción se encuentra la canción ¿Qué vas a hacer?

select
	NombreLista as 'Nombre lista'
from
	ListaReproduccion as LR
inner join ListaReproduccionXCancion as LRXC on LRXC.IdLista = LR.Id
inner join Cancion as C on LRXC.IdCancion = C.Id
where C.Titulo = '¿Qué vas a hacer?';


-- Inserts copiados

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

