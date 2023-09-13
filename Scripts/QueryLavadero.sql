create database DB_LAVADERO;

use DB_LAVADERO;

create table Localidad(
	id int not null identity(1,1) primary key,
	nombre varchar(30)
);

create table Cliente(
	id int not null identity(1,1) primary key,
	nombre varchar(30),
	apellido varchar(30),
	idLocalidad int foreign key references Localidad(id),
	direccion varchar(30),
	telefono int,
	tipoCliente varchar(15),
	CUIT int,
);

create table Marca(
	id int not null identity(1,1) primary key,
	nombre varchar(30)
);

create table TipoVehiculo(
	id int not null identity(1,1) primary key,
	nombreTipo varchar(20)
);

create table Modelo(
	id int not null identity(1,1) primary key,
	nombreModelo varchar(30),
	tipoVehiculo int foreign key references TipoVehiculo(id),
	idMarca int foreign key references Marca(id)
);

create table Vehiculo(
	id int not null identity(1,1) primary key,
	patente varchar not null,
	idModelo int foreign key references Modelo(id),
	idMarca int foreign key references Marca(id),
	idDuenio int foreign key references Cliente(id)
);

create table SectorLocal(
	id int not null identity(1,1) primary key,
	nombre varchar(30) not null
);

create table Servicio(
	id int not null identity(1,1) primary key,
	nombreServicio varchar(30),
	cantidadHoras decimal,
	precio money,
	idSector int foreign key references SectorLocal(id)
);

create table Usuario(
	id int not null identity(1,1) primary key,
	nombre varchar(30),
	apellido varchar(30),
	idSector int foreign key references SectorLocal(id),
	email varchar(40),
	passUsuario varchar(30)
);

create table Turno(
	id int not null identity(1,1) primary key,
	hora time,
	fecha date,
	idCliente int foreign key references Cliente(id),
	idVehiculo int foreign key references Vehiculo(id)
);

create table ServicioXTurno(
	id int not null identity(1,1) primary key,
	idTurno int foreign key references Turno(id),
	idServicio int foreign key references Servicio(id),
);


-- Inserts

-- Insertar marcas de vehículos
INSERT INTO Marca (nombre) VALUES ('ALFA ROMEO');
INSERT INTO Marca (nombre) VALUES ('AUDI');
INSERT INTO Marca (nombre) VALUES ('BAIC');
INSERT INTO Marca (nombre) VALUES ('BMW');
INSERT INTO Marca (nombre) VALUES ('CHANGAN');
INSERT INTO Marca (nombre) VALUES ('CHERY');
INSERT INTO Marca (nombre) VALUES ('CHEVROLET');
INSERT INTO Marca (nombre) VALUES ('CHRYSLER');
INSERT INTO Marca (nombre) VALUES ('CITROEN');
INSERT INTO Marca (nombre) VALUES ('CORADIR');
INSERT INTO Marca (nombre) VALUES ('DODGE');
INSERT INTO Marca (nombre) VALUES ('DS');
INSERT INTO Marca (nombre) VALUES ('F.E.R.E.S.A.');
INSERT INTO Marca (nombre) VALUES ('FAW');
INSERT INTO Marca (nombre) VALUES ('FERRARI');
INSERT INTO Marca (nombre) VALUES ('FIAT');
INSERT INTO Marca (nombre) VALUES ('FORD');
INSERT INTO Marca (nombre) VALUES ('FOTON');
INSERT INTO Marca (nombre) VALUES ('GEELY');
INSERT INTO Marca (nombre) VALUES ('GREAT WALL');
INSERT INTO Marca (nombre) VALUES ('HAVAL');
INSERT INTO Marca (nombre) VALUES ('HEIBAO');
INSERT INTO Marca (nombre) VALUES ('HONDA');
INSERT INTO Marca (nombre) VALUES ('HYUNDAI');
INSERT INTO Marca (nombre) VALUES ('ISUZU');
INSERT INTO Marca (nombre) VALUES ('JAC');
INSERT INTO Marca (nombre) VALUES ('JAGUAR');
INSERT INTO Marca (nombre) VALUES ('JEEP');
INSERT INTO Marca (nombre) VALUES ('JETOUR');
INSERT INTO Marca (nombre) VALUES ('KIA');
INSERT INTO Marca (nombre) VALUES ('LAND ROVER');
INSERT INTO Marca (nombre) VALUES ('LEXUS');
INSERT INTO Marca (nombre) VALUES ('LIFAN');
INSERT INTO Marca (nombre) VALUES ('MASERATI');
INSERT INTO Marca (nombre) VALUES ('MCLAREN');
INSERT INTO Marca (nombre) VALUES ('MERCEDES BENZ');
INSERT INTO Marca (nombre) VALUES ('MINI');
INSERT INTO Marca (nombre) VALUES ('MITSUBISHI');
INSERT INTO Marca (nombre) VALUES ('NISSAN');
INSERT INTO Marca (nombre) VALUES ('PEUGEOT');
INSERT INTO Marca (nombre) VALUES ('PORSCHE');
INSERT INTO Marca (nombre) VALUES ('RAM');
INSERT INTO Marca (nombre) VALUES ('RENAULT');
INSERT INTO Marca (nombre) VALUES ('SEAT');
INSERT INTO Marca (nombre) VALUES ('SERO ELECTRIC');
INSERT INTO Marca (nombre) VALUES ('SHINERAY');
INSERT INTO Marca (nombre) VALUES ('SMART');
INSERT INTO Marca (nombre) VALUES ('SOUEAST');
INSERT INTO Marca (nombre) VALUES ('SSANGYONG');
INSERT INTO Marca (nombre) VALUES ('SUBARU');
INSERT INTO Marca (nombre) VALUES ('SUZUKI');
INSERT INTO Marca (nombre) VALUES ('SWM');
INSERT INTO Marca (nombre) VALUES ('TOYOTA');
INSERT INTO Marca (nombre) VALUES ('VOLKSWAGEN');
INSERT INTO Marca (nombre) VALUES ('VOLVO');
INSERT INTO Marca (nombre) VALUES ('ZANELLA');


-- Insertar tipos de vehículos
INSERT INTO TipoVehiculo (nombreTipo) VALUES ('Sedán');
INSERT INTO TipoVehiculo (nombreTipo) VALUES ('Pick Up');
INSERT INTO TipoVehiculo (nombreTipo) VALUES ('SUV');


-- Inserts de modelos de Audi con sus tipos y marcas correspondientes
-- Audi
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('A1', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('A3', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('A4', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('A5', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('A6', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('A7', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('A8', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('Allroad', 3, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- SUV
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('e-tron', 3, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- SUV
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('Q2', 3, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- SUV
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('Q3', 3, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- SUV
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('Q5', 3, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- SUV
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('Q7', 3, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- SUV
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('Q8', 3, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- SUV
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('R8', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán
INSERT INTO Modelo (nombreModelo, tipoVehiculo, idMarca) VALUES ('TT', 1, (SELECT id FROM Marca WHERE nombre = 'AUDI')); -- Sedán


-- Insert de localidades
INSERT INTO Localidad (nombre) VALUES ('Villa María');
INSERT INTO Localidad (nombre) VALUES ('Villa Nueva');
INSERT INTO Localidad (nombre) VALUES ('Tio Pujio');
INSERT INTO Localidad (nombre) VALUES ('James Craik');
INSERT INTO Localidad (nombre) VALUES ('La Carlota');
INSERT INTO Localidad (nombre) VALUES ('Arroyo Cabral');
INSERT INTO Localidad (nombre) VALUES ('Arroyo Algodón');
INSERT INTO Localidad (nombre) VALUES ('R. J. Cárcano');
INSERT INTO Localidad (nombre) VALUES ('Ballesteros');
INSERT INTO Localidad (nombre) VALUES ('Luca');
INSERT INTO Localidad (nombre) VALUES ('Sanabria');

select * from Localidad;