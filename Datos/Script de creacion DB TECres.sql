Go
-- Creacion de tablas
-- CREACIÓN DE LA TABLA CLIENTE
Create Table Cliente (
Cedula int Primary Key Not Null,
Nombre Varchar(20) Not Null,
Apellido1 Varchar(20) Not Null,
Apellido2 Varchar(20) Not Null,
Telefono int Not Null,
FechaNacimiento DATE,
Nacionalidad VARCHAR (30),
Ubicacion INT,
Ingresos INT,
Ocupacion INT,
Correo VARCHAR (30),
Perfil INT,
Usuario  VARCHAR (20),
Contrasena VARCHAR (20)
);

Go
-- CREACIÓN DE LA TABLA PROPIEDAD
CREATE TABLE Propiedad(
IDPropiedad INT IDENTITY PRIMARY KEY NOT NULL,
Nombre VARCHAR (200) NOT NULL,
Ubicacion INT NOT NULL,
Habitaciones INT NOT NULL,
Banos INT NOT NULL,
AreaTerreno INT NOT NULL,
AreaConstruccion INT NOT NULL,
Dueno INT NOT NULL,
Descripcion VARCHAR (300),
TipoInmueble INT,
TipoPiso INT,
Parqueos INT,
Gimnasio VARCHAR (4),
Piscina VARCHAR(4),
ParqueoVisitas VARCHAR (4),
Precio INT,
Foto1 VARCHAR (200),
Foto2 VARCHAR (200),
Foto3 VARCHAR (200),
Foto4 VARCHAR (200),
Foto5 VARCHAR (200)
);
Go

-- Creacion de las FK
-- Creacion de las FK de la tabla Propiedad
Alter Table Propiedad
Add Constraint FK_Propiedad_Cliente Foreign Key (Dueno) References [dbo].[Cliente](Cedula);

-- Inserciones de Prueba

Insert into Cliente(Cedula,Nombre,Apellido1,Apellido2,Telefono,FechaNacimiento,Nacionalidad,Ubicacion,Ingresos,Ocupacion,Correo,Perfil,Usuario,Contrasena)
Values (202530348,'Jorge','Marin','Aguilar',85832412,'2019-11-19','Costarricense',1,1,1,'example@gmail.com',1,'Jorge123','Password');

Insert into Propiedad(Nombre,Ubicacion,Habitaciones ,Banos,AreaTerreno ,AreaConstruccion, Dueno, Descripcion,TipoInmueble,TipoPiso,Parqueos ,Gimnasio ,Piscina ,ParqueoVisitas,Precio,Foto1 ,Foto2,Foto3,Foto4,Foto5)
Values ('Apartas Tec', 90, 20, 5, 1000, 900, 202530348, 'ASDCVDSFDGSGFFGDFGD', 1, 1, 1, 'Si', 'No', 'Si', 1, 'sample string 12', 'sample string 13', 'sample string 14', 'sample string 15', 'sample string 16');