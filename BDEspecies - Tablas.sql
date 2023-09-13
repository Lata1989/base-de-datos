CREATE TABLE [Especie]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre varchar(50) NOT NULL,
	N_Cientifico varchar(200) NOT NULL,
	Descripcion text NULL
)

CREATE TABLE [Habitat]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre varchar(50) NOT NULL,
	Clima varchar(200) NOT NULL,
	Vegetacion varchar(200) NULL,
	IdContinente int NOT NULL
)

CREATE TABLE [EspecieXHabitat]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdEspecie int NOT NULL,
	IdHabitat int NOT NULL
)

CREATE TABLE [Zona]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre varchar(50) NOT NULL,
	Extension int NOT NULL,
	NroEspecies int NOT NULL
)

CREATE TABLE [EspecieXZona]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdEspecie int NOT NULL,
	IdZona int NOT NULL
)

CREATE TABLE [Itinerario]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Duracion int,
	Longitud int,
	Max_Visitantes int,
	N_Especies int,
	IdGuia int
)

CREATE TABLE [ItinerarioXZona]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdItinerario int NOT NULL,
	IdZona int NOT NULL
)

CREATE TABLE [Guia]
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre varchar(100) NOT NULL,
	Direccion varchar(100) NULL,
	Telefono varchar(100) NOT NULL,
	Fecha date
)
