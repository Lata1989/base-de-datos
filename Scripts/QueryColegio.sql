-- A - Creacion de la base de datos del colegio

create database DB_COLEGIO;

use DB_COLEGIO;

create table Asignatura(
	idAsignatura int primary key identity,
	nombre varchar(50)
);

create table Centro(
	idCentro int primary key identity,
	nombre varchar(50)
);

create table Profesor(
	idProfesor int primary key identity,
	nombre varchar(50),
	dedicacion varchar(50),
	categoria varchar(50)
);

create table AsignaturaXProfesorXCentro(
	id int primary key identity,
	idAsignatura int foreign key references Asignatura(idAsignatura),
	idProfesor int foreign key references Profesor(idProfesor),
	idCentro int foreign key references Centro(idCentro),
	horas int 
);

-- B - Inserts
-- Asignaturas

insert into Asignatura(nombre) values ('Matemática');
insert into Asignatura(nombre) values ('Lengua');
insert into Asignatura(nombre) values ('Historia');
insert into Asignatura(nombre) values ('Geografía');
insert into Asignatura(nombre) values ('Ciencias sociales');
insert into Asignatura(nombre) values ('Ciencias naturales');
insert into Asignatura(nombre) values ('Educación física');

-- Profesores
insert into Profesor(nombre) values ('Juan Pérez');
insert into Profesor(nombre) values ('Ricardo García');
insert into Profesor(nombre) values ('Lorena Nuñez');
insert into Profesor(nombre) values ('Rogelio Martinez');

-- Centros
insert into Centro(nombre) values ('Centro 1');
insert into Centro(nombre) values ('Centro 2');
insert into Centro(nombre) values ('Centro 3');
insert into Centro(nombre) values ('Centro 4');
insert into Centro(nombre) values ('Centro 5');

-- AsignaturaXProfesorXCentro
-- Insert 1 y 2
-- Insert 1
-- Declaro variables porque desconozco el id de cada cosa

declare @idProfesor int;
declare @idAsignatura int;
declare @idCentro int;

-- Asigno los valores a las variables
select @idProfesor = idProfesor from Profesor where nombre = 'Juan Pérez';
select @idAsignatura = idAsignatura from Asignatura where nombre = 'Matemática';
select @idCentro = idCentro from Centro where nombre = 'Centro 1';

insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, @idCentro);

--Insert 2

declare @idProfesor int;
declare @idAsignatura int;
declare @idCentro int;

select @idProfesor = idProfesor from Profesor where nombre = 'Juan Pérez';
select @idAsignatura = idAsignatura from Asignatura where nombre = 'Matemática';
select @idCentro = idCentro from Centro where nombre = 'Centro 2';

insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, @idCentro);

-- Insert 3 4 5
-- Insert 3

declare @idProfesor int;
declare @idAsignatura int;
declare @idCentro int;

select @idProfesor = idProfesor from Profesor where nombre = 'Ricardo García';
select @idAsignatura = idAsignatura from Asignatura where nombre = 'Ciencias sociales';
select @idCentro = idCentro from Centro where nombre = 'Centro 1';

insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, @idCentro);

-- Insert 4
declare @idProfesor int;
declare @idAsignatura int;
declare @idCentro int;

select @idProfesor = idProfesor from Profesor where nombre = 'Ricardo García';
select @idAsignatura = idAsignatura from Asignatura where nombre = 'Ciencias naturales';
select @idCentro = idCentro from Centro where nombre = 'Centro 1';

insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, @idCentro);

-- Insert 5
declare @idProfesor int;
declare @idAsignatura int;
declare @idCentro int;

select @idProfesor = idProfesor from Profesor where nombre = 'Ricardo García';
select @idAsignatura = idAsignatura from Asignatura where nombre = 'Ciencias naturales';
select @idCentro = idCentro from Centro where nombre = 'Centro 2';

insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, @idCentro);

-- Insert 6 7 8 9 10

declare @idProfesor int;
declare @idAsignatura int;

select @idProfesor = idProfesor from Profesor where nombre = 'Lorena Nuñez';
select @idAsignatura = idAsignatura from Asignatura where nombre = 'Educación física';

insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 1);
insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 2);
insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 3);
insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 4);
insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 5);

-- Insert 11 12 13

declare @idProfesor int;
declare @idAsignatura int;

select @idProfesor = idProfesor from Profesor where nombre = 'Rogelio Martinez';
select @idAsignatura = idAsignatura from Asignatura where nombre = 'Geografía';

insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 1);
insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 2);
insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 3);

-- Insert 14 15 16

declare @idProfesor int;
declare @idAsignatura int;

select @idProfesor = idProfesor from Profesor where nombre = 'Rogelio Martinez';
select @idAsignatura = idAsignatura from Asignatura where nombre = 'Historia';

insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 1);
insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 2);
insert into AsignaturaXProfesorXCentro(idAsignatura, idProfesor, idCentro) values (@idAsignatura, @idProfesor, 3);

-- Actualizacion del campo Lengua por Literatura
update Asignatura set nombre = 'Literatura' where nombre = 'Lengua';

select * from Asignatura;

-- Insersion del centro 6

insert into Centro values ('Centro 6');

select * from Centro;

-- Ejercicio E selects
-- 1 Materias por centro
select
	Centro.nombre as Centro,
	count(axpxc.idAsignatura) as CantidadAsignaturas
from Centro
inner join AsignaturaXProfesorXCentro axpxc on Centro.idCentro = axpxc.idCentro
group by Centro.nombre;

-- 2 Materias por centro incluido 0
select
	Centro.nombre as Centro,
	count(axpxc.idAsignatura) as CantidadAsignaturas
from Centro
left join AsignaturaXProfesorXCentro axpxc on Centro.idCentro = axpxc.idCentro
group by Centro.nombre;

-- 3 Profesor de educacion fisica
select
	Profesor.nombre as Nombre,
	Asignatura.nombre as Asignatura
from Profesor
join AsignaturaXProfesorXCentro on Profesor.idProfesor = AsignaturaXProfesorXCentro.idProfesor
join Centro on Centro.idCentro = AsignaturaXProfesorXCentro.idCentro
join Asignatura on Asignatura.idAsignatura = AsignaturaXProfesorXCentro.idAsignatura
where Centro.nombre = 'Centro 1' and Asignatura.nombre = 'Educación física';

-- 4 Profesores sin materias asignadas
select 
	count(Profesor.idProfesor) as Cantidad 
from Profesor
left join AsignaturaXProfesorXCentro on Profesor.idProfesor = AsignaturaXProfesorXCentro.idProfesor
where profesor.idProfesor is null;

-- 5 Centro sin materias
select
	Centro.nombre as Centro 
from Centro
left join AsignaturaXProfesorXCentro on AsignaturaXProfesorXCentro.idCentro = Centro.idCentro
where AsignaturaXProfesorXCentro.idCentro is null;

-- 6 Listar materia centro profesor
SELECT 
    c.nombre AS Centro,
    a.nombre AS Materia,
    COALESCE(p.nombre, 'Sin profesor asignado') AS Profesor
FROM Centro c
CROSS JOIN Asignatura a
LEFT JOIN AsignaturaXProfesorXCentro axp ON c.idCentro = axp.idCentro AND a.idAsignatura = axp.idAsignatura
LEFT JOIN Profesor p ON axp.idProfesor = p.idProfesor
ORDER BY c.nombre, a.nombre;

-- 7 Profesores sin asignatura centros sin asignatura
select
	'Profesores sin materias',
	count(Profesor.idProfesor) as Cantidad
from Profesor
left join AsignaturaXProfesorXCentro on AsignaturaXProfesorXCentro.idProfesor = Profesor.idProfesor
where AsignaturaXProfesorXCentro.idProfesor is null
union all
select
	'Centros sin materias',
	count(Centro.idCentro) Cantidad
from Centro
left join AsignaturaXProfesorXCentro on AsignaturaXProfesorXCentro.idCentro = Centro.idCentro
where AsignaturaXProfesorXCentro.idCentro is null;
