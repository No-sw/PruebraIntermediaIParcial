--DDL
USE master;

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'PruebaIntermediaI')
DROP DATABASE PruebaIntermediaI;

CREATE DATABASE PruebaIntermediaI;

USE PruebaIntermediaI;

CREATE TABLE Vuelo(
id int not null identify(1,1),
numVuelo int,
aerolina varchar(250),
fechayhorasalida TimeStamp,
origen varchar(250),
destino varchar(250),
);
CREATE TABLE Pasajero(
id int not null identify(1,1),
nombre varchar(250),
apellido varchar(250),
numPasaporte int,
informaciondecontacto varchar(250)
);
CREATE TABLE Asiento(
id int not null identify(1,1),
clase varchar(250),
disponibilidad varchar(250),
ubicacionCabina varchar(250)
);
CREATE TABLE Maleta(
id int not null identify(1,1),
peso varchar(250),
dimensiones varchar(250),
tipoEquipaje varchar(250),
estado varchar(250),
);
CREATE TABLE Reservacion(
id int not null identify(1,1),
fechayhoraRerva TimeStamp
);
CREATE TABLE Check-in(
id int not null identify(1,1),
fechayhoraRerva TimeStamp
);
CREATE TABLE otrosAspectos(
id int not null identify(1,1),
clase varchar(250),
asistenciaPreferencial varchar(250),
comida varchar(250),
requerimientoAdicional varchar(250)
);
INSERT Vuelo(numVuelo,aerolina,fechayhorasalida,origen,destino) 
values
('1','avianc','04/11/2023 18:24', 'Caracas, Venezuela','Escandinavia, Dinamarca'),
('2','Aerolinas Sosa','03/11/2023 18:24','Tegucigalpa, Honduras','Habana, Cuba'),
('3','Aerolinas Argentinas','03/11/2023 06:24','Buenos Aires, Argentina','Moscu, Rusia');
INSERT Pasajero(nombre,apellido,numPasaporte,informaciondecontacto) 
values
('Pedro','Lopez','154', 'Local'),
('Maria','Rodriguez','169','Extranjero'),
('Fabricio','Vallecillo','218','Local');
INSERT Asiento(clase,disponibilidad,ubicacionCabina) 
values
('Economica','disponible','Cabina 140'),
('Ejecutivo','no disponible','Cabina 38'),
('Ejecutiva','disponible','Cabina 43');
INSERT Maleta(peso,dimensiones,tipoEquipaje,estado) 
values
('8 Kg','Grande','Equipaje Facturado','Registrado'),
('2 Kg','Mediano','Equipaje de Mano', 'Registrado'),
('0.5 Kg','Pequenio','Equipaje de Accesorios personales','No Registrado');
INSERT Reservacion(fechayhorareserva) 
values
('04/10/2023 18:24'),
('03/10/2023 16:27'),
('03/10/2023 07:38');
INSERT Checkin(fechayhorareserva) 
values
('28/10/2023 18:24'),
('25/10/2023 16:27'),
('26/10/2023 07:38');
INSERT otrosAspectos(clase,asistenciaPreferencial,comida,requerimientoAdicional) 
values
('Primera Clase','Honor','Mariscos','Ser ejecutivo'),
('Segunda Clase','Media','Frutas','Ser turista'),
('Tercera Clase','Baja','Verduras','Ninguna');


