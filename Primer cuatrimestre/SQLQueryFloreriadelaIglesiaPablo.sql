create database DB_FLORERIA;

create table Cliente (
	idCliente int NOT NULL PRIMARY KEY,
	nombre varchar,
	dni int
);

create table Pedido (
	idPedido int NOT NULL PRIMARY KEY,
	fecha date,
	idCliente int FOREIGN KEY REFERENCES Cliente(idCliente)
);

create table Especie (
	idEspecie int NOT NULL PRIMARY KEY,
	nombre varchar,
	epocaFloracion varchar,
	estacionPlantacion varchar,
	tipoSuelo varchar,
	tiempoExposicion varchar,
);

create table Flor (
	idFlor int NOT NULL PRIMARY KEY,
	nombre varchar,
	precio money,
	idEspecie int FOREIGN KEY REFERENCES Especie(idEspecie)
);

create table DetallePedido (
	idDetallePedido int NOT NULL PRIMARY KEY,
	idFlor int FOREIGN KEY REFERENCES Flor(idFlor),
	idPedido int FOREIGN KEY REFERENCES Pedido(idPedido),
	precioUnitario money,
);