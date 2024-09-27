CREATE DATABASE AkirasBoutiques

USE AkirasBoutiques

CREATE TABLE Categoria(
    id_categoria int identity (1,1)primary key ,
    nombre varchar (50) NOT NULL,
	descripcion varchar (500) NOT NULL
)

CREATE TABLE Cliente (
	id_cliente int identity (1,1) primary key,
	nombre varchar (50) NOT NULL,
	Apellido nchar (50) NOT NULL,
	direccion varchar (250) NOT NULL,
	fec_nac date NOT NULL,
	telefono varchar (250) NOT NULL,
	email varchar (250) NOT NULL
)
CREATE TABLE Detalle (
	id_detalle int identity (1,1) primary key,
	id_producto int,
	cantidad int NOT NULL,
	precio decimal (10,2) NOT NULL
)
CREATE TABLE Factura (
	id_factura int identity (1,1) primary key,
	id_cliente int NOT NULL foreign key references Cliente(id_cliente),
	fecha date NULL,
	id_detalle int NOT NULL foreign key references Detalle(id_detalle)
);
CREATE TABLE Producto (
	id_producto int identity (1,1) primary key,
	nombre varchar (2) NOT NULL,
	precio decimal (10,2) NOT NULL,
    id_categoria int NOT NULL foreign key references Categoria(id_categoria),
	stock int  NOT NULL
	);
CREATE TABLE Empleados (
    id_empleados int identity (1,1) primary key,
	nombre_empleados varchar (50) NOT NULL,
	Numero_telefono varchar (250) NOT NULL,
	edad varchar (10)  NOT NULL,
	sucursal varchar (50) NOT NULL,
	correo_electronico varchar (60) NOT NULL,
	contraseña varchar (60) NOT NULL,
	)
CREATE TABLE Sucursal (
    id_sucursal int identity (1,1) primary key,
	Numero_sucursal int NOT NULL,
	nombre_sucursal varchar (250) NOT NULL,
	Nombre_encargado varchar (50) NOT NULL,
	direccion varchar (50) NOT NULL,
	numero_telefono varchar (250) NOT NULL,
	ciudad varchar (50) NOT NULL,
	estado varchar (60) NOT NULL,
	)

	INSERT INTO  Empleados (nombre_empleados,Numero_telefono,edad,sucursal,correo_electronico,contraseña)

	VALUES
	('Natasha','968-965-644-409','31', 'La mercedes','Natasha@example.com','Natasha123'),
	('Maria Balvina','133-089-354-456','40', 'Obraje','Maria@example.com','Maria456'),
	('Carolina','789-735-985-099','29', 'Zapopan','Carolina@example.com','Carolina789'),
	('Merari','976-234-572-078','32','Galerías Mazatlán','Merari@example.com','Merari101'),
	('Eduardo','654-345-294-345','25','Constitucion','Eduardo@example.com','Eduardo090'),
	('Mario armando','103-098-289-654','45','Melchor','Mario@example.com','Mario987'),
	('Mauro','198-290-023-065','22', 'Centro','Mauro@example.com','Mauro321'),
	('Ricardo','721-491-385-045','19', 'Coacalco','Ricardo@example.com','ricardo109'),
	('Raquel','968-965-644-409','23', 'Zaragosa','Raquel@example.com','Raquel123'),
	('Verenice','133-089-354-456','53', 'Indios Verdes','Verenice@example.com','Verenice456'),
	('Karla','789-735-985-340','29', 'Buena vista','Karla@example.com','Karla789'),
	('Yesenia','976-234-572-078','32','Zumpango','Yesenia@example.com','Yesenia101'),
	('Blanca','654-345-294-345','25','Tecamac','Blanca@example.com','Blanca090'),
	('Ismael','103-098-289-654','45','Ecatepec','Ismaelexample.com','Ismael987'),
	('Angello','198-290-023-065','22', 'Plaza Aragon','Angello@example.com','Angello321'),
	('Dario','721-491-385-045','19', 'Recursos','Dario@example.com','Dario109'),
	('Paola','968-965-644-409','31', 'Jardines','Paola@example.com','Paola123'),
	('Nayeli','133-089-354-456','40', 'Flores','Nayeli@example.com','Nayeli456'),
	('Martha','789-735-985-123','29', 'Bosques','Martha@example.com','Martha789'),
	('Juan Carlos','976-234-572-078','32','La sexta','Juan carlos@example.com','Juan Carlos101'),
	('Fernando','654-345-294-345','25','Juarez','Fernando@example.com','Fernando090'),
	('Manuel','103-098-289-654','45','Melchor','Manuel@example.com','Manuel987'),
	('Jorge','198-290-023-065','22', 'Centro','Jorge@example.com','Jorge321'),
	('Kassandra','721-491-385-045','19', 'Coacalco','Kassandra@example.com','Kassandra109'),
	('Elizabeth','968-965-644-409','31', 'La mercedes','Elizabeth@example.com','Elizabeth123'),
	('Karen','133-089-354-456','40', 'Obraje','Karen@example.com','Karen456'),
	('Virginia','789-735-985-098','29', 'Zapopan','Virginia@example.com','Virginia789'),
	('Rosa','976-234-572-078','36','Galerías Mazatlán','Rosa@example.com','Rosa101'),
	('Oswaldo','654-345-294-345','23','Constitucion','Oswaldo@example.com','Oswaldo090'),
	('Ruth','103-098-289-654','37','Melchor','Ruth@example.com','Ruth987'),
	('Alondra','198-290-023-065','44', 'Centro','Alondra@example.com','Alondra321'),
	('Brenda','721-491-385-045','21', 'Coacalco','Brenda@example.com','Brenda109'),
	('Jeremy','968-965-644-409','39', 'La mercedes','Jeremy@example.com','Jeremy123'),
	('Ruben','133-089-354-456','25', 'Obraje','Ruben@example.com','Ruben456'),
	('Max','789-735-985-324','55', 'Zapopan','Max@example.com','Max789'),
	('Ronaldo','976-234-572-078','24','Galerías Mazatlán','ronaldo@example.com','Ronaldo101'),
	('Sebastian','654-345-294-345','51','Constitucion','Sebastian@example.com','Sebastian090'),
	('Nadia','103-098-289-654','49','Melchor','Nadia@example.com','Nadia987'),
	('Aby','198-290-023-065','33', 'Centro','Aby@example.com','Aby321'),
	('Adriana','721-491-385-045','27', 'Coacalco','Adriana@example.com','Adriana109');

	INSERT INTO Sucursal (Numero_sucursal,nombre_sucursal,Nombre_encargado,direccion,numero_telefono,ciudad,estado)

	VALUES

	(1,'AkirasBoutique:Las Mercedes','Sonia Alejandra Fernandez Moreno', 'Calle Roble#507Fracc.Las Mercedes','444-783-1225','San Luis Potosi','San Luis Potosi'),
	(2,'AkirasBoutique:Obraje','Fernando Calderon Ayala','Calle Dr.Jesús Díaz de León #438 col. Obraje', '449-378-0921','Aguascalientes','Aguascalientes'),
	(3,'AkirasBoutique:Galerias Mazatlan','Daniela Fernanda Diaz Ordaz','Av.de la Marina#6204,Marina,local 35', '669-293-2059','Mazatlan','Sinaloa'),
	(4,'AkirasBoutique:Zapopan','Mario Alberto Jimenez Salcido','Av.Manuela J. Clouthier 525 col. Benito Juarez','333-784-1230','Zapopan','Jalisco'),
	(5,'AkirasBoutique:Melchor','Yesenia Guadalupe Campos Rojo','Av.Melchor Ocampo#2528 Zona Centro','614-390-6721','Chihuahua','Chihuahua'),
	(6,'Akirasboutique:Constitucion','Tamara Alejandra Bernal Ramos','Calle Constitucion #106 Zona Centro','618-196-2954','Durango','Durango'),
	(7,'AkirasBoutique:Centro','Samuel Enrique Barrios Enciso','Av.Hidalgo#338 Zacatecas Centro', '492-930-1250','Zacatecas','Zacatecas');
	


	SELECT Numero_sucursal,nombre_sucursal,Nombre_encargado,direccion,numero_telefono,ciudad,estado FROM Sucursal

	 SELECT * FROM Empleados