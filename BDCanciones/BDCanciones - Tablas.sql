CREATE TABLE [Usuario]
(
	Nick Varchar(100) PRIMARY KEY NOT NULL,
	Nombre varchar(50) NOT NULL,
	Apellidos varchar(200) NOT NULL,
	EMail varchar(200) NOT NULL,
	[Password] varchar(200) NOT NULL
)

CREATE TABLE [Cancion]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Genero varchar(50) NOT NULL,
	Autor varchar(200) NOT NULL,
	Titulo varchar(200) NOT NULL,
	Fecha date NOT NULL,
	Duracion time(7) NULL,
	Bitrate varchar(200)
)

CREATE TABLE [ListaReproduccion]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	NombreLista varchar(50) NOT NULL,
	NickUsuario varchar(100) REFERENCES [Usuario] (Nick),
)

CREATE TABLE [ListaReproduccionXCancion]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdLista int REFERENCES [ListaReproduccion] (Id),
	IdCancion int REFERENCES [Cancion] (Id),
)