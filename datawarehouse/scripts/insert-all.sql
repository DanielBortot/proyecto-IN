INSERT INTO pais(cod_pais,nb_pais) values 
(0,'Venezuela'),
(1,'Colombia'),
(2,'Chile'),
(3,'España'),
(4,'Argentina'),
(5,'Panama'),
(6,'Estados Unidos'),
(7,'China')

INSERT INTO ciudad (cod_ciudad,nb_ciudad,cod_pais) values 
(0,'Caracas',0),
(1,'Valencia',0),
(2,'Bogota',1),
(3,'Cucuta',1),
(4,'Santiago de Chile',2),
(5,'Puente Alto',2),
(6,'Madrid',3),
(7,'Barcelona',3),
(8,'Buenos Aires',4),
(9,'Córdoba',4),
(10,'panama ',5),
(11,'panama ',5),
(12,'Houston',6),
(13,'Miami',6),
(14,'Beijing',7)

INSERT INTO tipo_producto (cod_tipo_producto,nb_tipo_producto) values 
(0,'Prestación de Servicios'),
(1,'Personales'),
(2,'Daños o Patrimoniales')

INSERT INTO producto (cod_producto,nb_producto,descripcion,cod_tipo_producto,calificacion) values 
(0,'Automóvil','Daño a vehiculos',2,50),
(1,'Crédito y Caución','Prestacion de servicios de acuerdo al credito',0,100),
(2,'Incendios','Daño a propiedades por incendios',2,45),
(3,'Salud','Debido a tener que presentar problemas del salud en el cliente',1,12),
(4,'Camiones','Debido a tener averias en camiones',2,50),
(5,'Casas','Debido a daños en la propiedad siendo casas',2,64),
(6,'Almacenes','Daños en la propiedad de la compañia',2,24)