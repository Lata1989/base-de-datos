--create database DBCINE;

create table Usuario (
	id int identity(1,1) primary key,
	nombre varchar,
	fechaNac date
);

create table Clasificacion(
	id int identity(1,1) primary key,
	detalle varchar,
	valoracion varchar
);

create table Genero(
	id int identity(1,1) primary key,
	nombre varchar,
	detalle varchar
);

create table Idioma(
	id int identity(1,1) primary key,
	nombreIdioma varchar
);

create table Persona(
	id int identity(1,1) primary key,
	nombre varchar,
	nacionalidad varchar
);

create table Cine(
	id int identity(1,1) primary key,
	nombre varchar,
	calle varchar,
	altura int,
	piso int,
	departamento varchar,
	telefono int
);

create table Sala(
	id int identity(1,1) primary key,
	numSala int,
	cantButacas int,
	cine int foreign key references Cine(id)
);

create table ESRBPEGI (
	id int identity(1,1) primary key,
	esrbpegi varchar,
	edadMinima int
);

create table Pelicula(
	id int identity(1,1) primary key,
	tituloOriginal varchar,
	tituloDistribucion varchar,
	web varchar,
	duracion time,
	anio int,
	fechaEstrenoArg date,
	resumen varchar,
	genero int foreign key references Genero(id),
	idioma int foreign key references Idioma(id),
	esrbpegi int foreign key references ESRBPEGI(id),
);

create table DirectorXPelicula(
	numPelicula int,
	pelicula int foreign key references Pelicula(id),
	persona int foreign key references Persona(id)
);

create table ActorXPelicula(
	persona int foreign key references Persona(id),
	pelicula int foreign key references Pelicula(id),
	nombrePersonaje varchar,
	numPelicula int
);

create table Funcion(
	id int identity(1,1) primary key,
	dia date,
	hora time,
	sala int foreign key references Sala(id),
	pelicula int foreign key references Pelicula(id)
);

create table Promocion(
	diaDesde date,
	diaHasta date,
	horaHasta time,
	ratioDescuento decimal,
	descripcion varchar,
	sala int foreign key references Sala(id)
);