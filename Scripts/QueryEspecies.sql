create database BDEspecies;

use BDEspecies;

-- Creacion de tablas

create table Continente
(
	id int primary key identity not null,
	nombreContinente varchar(20)
);

CREATE TABLE Especie
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre varchar(50) NOT NULL,
	N_Cientifico varchar(200) NOT NULL,
	Descripcion text NULL
)

CREATE TABLE Habitat
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre varchar(50) NOT NULL,
	Clima varchar(200) NOT NULL,
	Vegetacion varchar(200) NULL,
	IdContinente int NOT NULL foreign key references Continente(id)
)

CREATE TABLE EspecieXHabitat
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdEspecie int NOT NULL foreign key references Especie(id),
	IdHabitat int NOT NULL foreign key references Habitat(id)
)

CREATE TABLE Zona
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre varchar(50) NOT NULL,
	Extension int NOT NULL,
	NroEspecies int NOT NULL
)

CREATE TABLE EspecieXZona
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdEspecie int NOT NULL foreign key references Especie(id),
	IdZona int NOT NULL foreign key references Zona(id)
)

CREATE TABLE Guia
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre varchar(100) NOT NULL,
	Direccion varchar(100) NULL,
	Telefono varchar(100) NOT NULL,
	Fecha date
)


CREATE TABLE Itinerario
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Duracion int,
	Longitud int,
	Max_Visitantes int,
	N_Especies int,
	IdGuia int foreign key references Guia(id)
)

CREATE TABLE ItinerarioXZona
(
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdItinerario int NOT NULL foreign key references Itinerario(id),
	IdZona int NOT NULL foreign key references Zona(id)
)


-- Inserts
insert into Continente(nombreContinente) values ('America');
insert into Continente(nombreContinente) values ('Asia');
insert into Continente(nombreContinente) values ('Europa');
insert into Continente(nombreContinente) values ('Oceania');
insert into Continente(nombreContinente) values ('Africa');

INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Armadillo', 'Priodontes maximus', 'Especie de mamífero de tamaño muy grande');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('León blanco', 'Panthera leo krugeri', 'Alcanzan los 290 cm. de longitud');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Guacamayo verde', 'Ara militaris', 'Longitud promedio de entre 70 y 71 cm de largo');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Ajolote', 'Ambystoma mexicanum', 'Monstruo acuático');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Cocodrilo americano', 'Crocodylus acutus', 'Carácter dominante y posesivo');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Oso Mexicano', 'Ursus arctos nelsoni', 'Era uno de los mamíferos terrestres más grandes de México.');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Avestruz', 'Struthio camelus', '');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Cocodrilo del Nilo', 'Crocodylus niloticus', '');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Cebra de Grant', 'Equus burchelli boehmi ', '');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Chimpancé', 'Pan troglodytes', '');
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Gorrión', 'Passer domesticus', 'Es una especie de ave paseriforme de la familia de los gorriones está adaptado al hátitat urbano y acostumbrado a vivir cerca del ser humano, hasta el punto de ser el pájaro más frecuente y conocido. Aunque es originario de Eurasia y el Norte de Africa.')
INSERT INTO Especie (Nombre, N_Cientifico, Descripcion) VALUES ('Pato doméstico', 'Anasplatyrynchos domesticus', 'Su peso es de entre 3,6 y 4.1 kg, aunque se han desarrollado variedades mayores. Su plumaje es blanco y tiene el pico, las piernas ylas patas de color naranja. Algunos puedentener el pico más amarillo, pero si tienen elpico negro se considera una seria falta en laclasificación. Tienen un plumaje brillante y amarillo');

INSERT INTO Guia VALUES ('Juan Pérez', 'San Luis 123', '111111111', '2008-01-05');
INSERT INTO Guia VALUES ('Roberto Martinez', 'Catamarca 111', '587411258', GETDATE());
INSERT INTO Guia VALUES ('María Nuñez', 'Alcorta 321', '88888888', '2007-05-08');
INSERT INTO Guia VALUES ('Alberto Guzman', 'Sucre 87', '78444455', GETDATE());

INSERT INTO Habitat VALUES ('Selva Ecuatoriana', 'Cálido y Húmedo', 'La mayoría de árboles son de hoja perenne, con hojas anchas', 1);
INSERT INTO Habitat VALUES ('Bosques de Coníferas', 'Frío y Húmedo', 'Sus árboles son principalmente coníferas, como el abeto y la picea. Sus hojas son perennes y con forma de aguja. Dan alimento y refugio a muchos animales durante el invierno', 2);
INSERT INTO Habitat VALUES ('Pastizales', 'Seco y cálido ', 'Las raíces de las hierbas traban el terreno y sirven de pasto a los animales.', 4);
INSERT INTO Habitat VALUES ('Desiertos', 'Cálido y Seco', 'Pocas plantas pueden vivir', 5);
INSERT INTO Habitat VALUES ('Pantanos y manglares', 'Tropical', 'Abundante vegetación', 1);

INSERT INTO Itinerario VALUES (2, 50, 20, 2, 1);
INSERT INTO Itinerario VALUES (3, 70, 10, 2, 3);
INSERT INTO Itinerario VALUES (5, 90, 20, 2, 1);
INSERT INTO Itinerario VALUES (4, 60, 20, 2, 2);

INSERT INTO Zona VALUES ('Zona 1', 10, 5);
INSERT INTO Zona VALUES ('Zona 2', 20, 2);
INSERT INTO Zona VALUES ('Zona 3', 30, 7);
INSERT INTO Zona VALUES ('Zona 4', 15, 9);
INSERT INTO Zona VALUES ('Zona 5', 25, 3);

-- A estos insert en la segunda tabla se les sumo 10 a todos menos al ultimo que se le sumo 9
INSERT INTO EspecieXHabitat VALUES (1, 11);
INSERT INTO EspecieXHabitat VALUES (2, 13);
INSERT INTO EspecieXHabitat VALUES (3, 11);
INSERT INTO EspecieXHabitat VALUES (4, 15);
INSERT INTO EspecieXHabitat VALUES (5, 11);
INSERT INTO EspecieXHabitat VALUES (6, 15);
INSERT INTO EspecieXHabitat VALUES (7, 14);
INSERT INTO EspecieXHabitat VALUES (8, 15);


INSERT INTO EspecieXZona VALUES (1, 1);
INSERT INTO EspecieXZona VALUES (2, 3);
INSERT INTO EspecieXZona VALUES (3, 4);
INSERT INTO EspecieXZona VALUES (4, 1);
INSERT INTO EspecieXZona VALUES (5, 3);
INSERT INTO EspecieXZona VALUES (6, 3);
INSERT INTO EspecieXZona VALUES (7, 2);
INSERT INTO EspecieXZona VALUES (8, 1);


INSERT INTO ItinerarioXZona VALUES (1, 1);
INSERT INTO ItinerarioXZona VALUES (1, 2);
INSERT INTO ItinerarioXZona VALUES (2, 1);
INSERT INTO ItinerarioXZona VALUES (2, 2);
INSERT INTO ItinerarioXZona VALUES (2, 3);
INSERT INTO ItinerarioXZona VALUES (3, 4);
INSERT INTO ItinerarioXZona VALUES (3, 5);


-- Consultas

-- Ejercicio 1
select 
	* 
from 
	Especie;

-- Ejercicio 2
select 
	N_Cientifico 
from 
	Especie;

-- Ejericio 3
select 
	* 
from 
	Itinerario 
where 
	Duracion > 2;

-- Ejercicio 4

select 
	* 
from 
	Itinerario 
where 
	Duracion > 2 and Max_Visitantes = 10;

-- Ejercicio 5
select 
	* 
from 
	Guia
where 
	MONTH(Fecha) = 5 
order by 
	Nombre;

-- Ejercicio 6
select 
	COUNT(*) 
from 
	Guia;

-- Ejercicio 7
select 
	* 
from 
	Habitat 
where 
	Nombre like '%selva%';

-- Control de inserts

select * from Continente;

select * from Especie;

select * from Guia;

select * from Habitat;

select * from Itinerario;

select * from Zona;

select * from EspecieXHabitat;

select * from EspecieXZona;

select * from ItinerarioXZona;