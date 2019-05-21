Create database VikingosGYM;
Use VikingosGYM;

Create table usuario(
ID_usuario INT NOT NULL PRIMARY KEY,
nombre VARCHAR(30),
fecha_de_matricula DATE,
Periodo_pago INT,
Vencimiento_pago DATE,
Status VARCHAR(20),
Telefono INT);

Insert into usuario VALUES('Rafael Avila','4/2/2018',12,'4/2/2019','Dentro de contrato',3115574539);
Insert into usuario VALUES('Laura Espinosa','6/15/2017',30,'7/15/2017','Dentro de contrato',2098081);
Insert into usuario VALUES('Fernanda Ruiz','7/13/2011',12,'7/13/2012','Vencimiento proximo',311574807);
Insert into usuario VALUES('Camila Torres','7/6/2018',12,'7/6/2019','Vencimiento proximo',3205148230);
Insert into usuario VALUES('Daniela Chavez','1/10/2015','12	1/10/2016','Vencimiento proximo',2038569);
Insert into usuario VALUES('Angelica Perez','9/17/2000',30,'10/17/2000','Matricula vencida',3201568794);
Insert into usuario VALUES('Ingrid Sanchez','5/18/2017',8,'5/26/2017','Dentro de contrato',7336633);
Insert into usuario VALUES('Alison Gutierrez','3/15/2000',8,'3/23/2000','Matricula vencida',5201489);
Insert into usuario VALUES('Erika Mendez','7/2/2016',8,'7/10/2016','Matricula vencida',3658935);
Insert into usuario VALUES('Dilan Lopez','6/26/2017',8,'7/3/2017','Vencimiento proximo',3144012353);
Insert into usuario VALUES('Natalia Rairan','10/31/2019',30,'31/11/2019','Matricula vencida',3203502369);
Insert into usuario VALUES('Diego Hernandez','5/10/2016',12,'5/10/2017','Matricula vencida',3155487960);
Insert into usuario VALUES('Pilar Roldan','11/23/2014',30,'12/23/2014','Dentro de contrato',2015698);
Insert into usuario VALUES('Emily Duran','1/1/2000',8,'1/9/2000','Dentro de contrato',3205689741);
Insert into usuario VALUES('Maria Valencia','12/26/2015',8,'1/3/2016','Dentro de contrato',7654390);
Insert into usuario VALUES('Pedro Linares','5/30/2017',8,'5/7/2017','Dentro de contrato',2035489);
Insert into usuario VALUES('Yunari Cespedes','10/9/2000',30,'11/9/2000','Vencimiento proximo',3147859423);
Insert into usuario VALUES('Omar Perez','5/12/2013',30,'6/12/2013','Dentro de contrato',3115584623);
Insert into usuario VALUES('Cristian Velez','5/23/2016',12,'5/23/2017','Matricula vencida',3521489);
Insert into usuario VALUES('Catalina Buitrago','2/10/2001',12,'2/10/2002','Matricula vencida',2054197);
Insert into usuario VALUES('Milena Rojas','7/14/2007',30,'7/22/2007','Vencimiento proximo',3225687920);
Insert into usuario VALUES('Evelin Arias','6/13/2015',8,'6/21/2015','Matricula vencida',2012036);
Insert into usuario VALUES('Santiago Jimenez','3/16/2003',8,'3/24/2003','Vencimiento proximo',3154659870);
Insert into usuario VALUES('Brenda Giraldo','1/20/2008',8,'1/28/2008','Vencimiento proximo',322310356);
Insert into usuario VALUES('Ana Espinosa','8/19/2015',30,'9/19/2015','Vencimiento proximo',2015689);
Insert into usuario VALUES('Alvaro Dominguez','6/29/2017',12,'6/29/2018','Dentro de contrato',3152639784);
Insert into usuario VALUES('Jaidive Camelo','10/25/2000',12,'10/25/2001','Dentro de contrato',2345879); 
Insert into usuario VALUES('Veronica Orozco','12/1/2013',12,'12/1/2014','Dentro de contrato',3215748960);
Insert into usuario VALUES('Sofia Rodriguez','10/11/2015',8,'10/20/2015','Matricula vencida',3256412013);

Create table informacion(
ID_pagos INT NOT NULL PRIMARY KEY,
codigo VARCHAR(10),
nombre VARCHAR(30),
Numero_cuota INT,
Mes_cuota VARCHAR(30),
Monto INT,
Pago VARCHAR(15),
Fecha_pago DATE,
Mes_pago VARCHAR(30),
Comentario VARCHAR(30));

INSERT INTO informacion VALUES(1,'Rafael Avila',2,'Febrero',33000,'Si','10/2/2014','Febrero');
INSERT INTO informacion VALUES(2,'Laura Espinosa',4,'Junio',15000,'Si', '1/10/2000','Junio'); 	
INSERT INTO informacion VALUES(3,'Fernanda Ruiz', 1,'Marzo',50000,'Si', '2/1/2013',	'Marzo'); 	
INSERT INTO informacion VALUES(4,'Camila Torres',2,'Marzo',50000,'No','15/8/2000',	'Marzo','Pago adelantado');
INSERT INTO informacion VALUES(5,'Daniela ChaveZ', 1,'Octubre',33000,'Si','14/11/2014','Octubre');	
INSERT INTO informacion VALUES(6,'Angelica Perez', 1,'Agosto',50000,'No','13/3/2015','Agosto'); 	
INSERT INTO informacion VALUES(7,'Johan Torres', 1,'Julio',50000,'Si','14/1/2002','Julio');
INSERT INTO informacion VALUES(8,'Ingrid Sanchez', 1,'Febrero',15000,'No','25/1/2015','Febrero');
INSERT INTO informacion VALUES(9,'Ingrid Sanchez' ,1,'Febrero',15000,'No','25/1/2015','Febrero');
INSERT INTO informacion VALUES(10,'Erika Mendez',4,'Enero',15000,'No','11/10/2000','Enero');
INSERT INTO informacion VALUES(11,'Dilan Lopez', 4,'Mayo',33000	,'Si','7/9/2014','Mayo');
INSERT INTO informacion VALUES(12,'Natalia Rairan',2,'Octubre',33000,'Si','2/5/2018','Octubre');
INSERT INTO informacion VALUES(13,'Diego Hernandez',2,'Julio',50000,'Si','19/10/2017',Julio);
INSERT INTO informacion VALUES(14,'Pilar Roldan',2,'Febrero',50000,'Si','9/1/2000','Febrero');
INSERT INTO informacion VALUES(15,'Emily Duran',1,'Enero',15000,'Si','3/1/2016','Enero');
INSERT INTO informacion VALUES(16,'Maria Valencia',4,'Mayo',33000,'Si','7/5/2017','Mayo');
INSERT INTO informacion VALUES(17,'Pedro Linares',4,'Julio',33000,'Si','9/11/2000','Julio');
INSERT INTO informacion VALUES(18,'Yunari Cespedes',2,'Septiembre',50000,'Si','12/6/2013','Septiembre');
INSERT INTO informacion VALUES(19,'Omar Perez',1,'Marzo',33000,'Si','23/5/2017','Marzo');
INSERT INTO informacion VALUES(20,'Cristian Velez',2,'Septiembre',50000,'No','10/2/2002','Septiembre');
INSERT INTO informacion VALUES(21,'Catalina Buitrago',1,'Enero',15000,'No','22/7/2007','Enero');
INSERT INTO informacion VALUES(22,'Milena Rojas',1,'Agosto',33000,'Si','21/6/2015','Agosto'); 
INSERT INTO informacion VALUES(23,'Evelin Arias',1,'Febrero',33000,'Si','24/3/2003','Febrero');
INSERT INTO informacion VALUES(24,'Santiago Jimenez',4,'Mayo',33000,'Si','28/1/2008','Mayo');
INSERT INTO informacion VALUES(25,'Brenda Giraldo',4,'Septiembre',15000,'No','19/9/2015','Septiembre');
INSERT INTO informacion VALUES(26,'Ana Espinosa',4,'Agosto',50000,'Si','29/6/2018','Agosto'); 
INSERT INTO informacion VALUES(27,'Alvaro Dominguez',2,'Marzo',15000,'No','25/10/2001','Marzo','Pago adelantado');
INSERT INTO informacion VALUES(28,'Jaidive Camelo',1,'Mayo',50000,'Si','1/12/2014','Mayo');
INSERT INTO informacion VALUES(29,'Veronica Orozco',1,'Febrero',33000,'Si','23/3/200','febrero');
INSERT INTO informacion VALUES(30,'sofia rodriguez',2,'enero',33000,'si','10/7/2016','enero','pago adelantado');

Create table medidas(
ID_medidas INT NOT NULL PRIMARY KEY,
nombre VARCHAR(30),
Fecha_de_nacimiento DATE,
Edad INT,
Peso INT,
talla INT);

Insert into medidas VALUES('Rafael Avila','10/2/2014',28,72.9,172);
Insert into medidas VALUES('Laura Espinosa','1/10/2000',30,93.5,214);
Insert into medidas VALUES('Fernanda Ruiz' ,'2/1/2013',	21,74.2,320);
Insert into medidas VALUES('Camila Torres' ,'15/8/2000',25,80.3,125);
Insert into medidas VALUES('Daniela Chavez' ,'4/11/2014',30,100.1,298);
Insert into medidas VALUES('Angelica Perez' ,'13/3/2015',21,95.2,204);
Insert into medidas VALUES('ohan Torres' ,'14/1/2002',	22,54.6,365);
Insert into medidas VALUES('Ingrid Sanchez' ,'25/1/2015',18,60,211);
Insert into medidas VALUES('Alison Gutierrez','30/3/2005',18,70.5,354);
Insert into medidas VALUES('Erika Mendez' ,'11/10/2000',20,65.3,201);
Insert into medidas VALUES('Dilan Lopez' ,'7/9/2014',	30,69.7,345);
Insert into medidas VALUES('Natalia Rairan','2/5/2018',	34,85.2,487);
Insert into medidas VALUES('Diego Hernandez','19/10/2017',35,95.7,215);
Insert into medidas VALUES('Pilar Roldan','9/1/2000',51,68.3,306);
Insert into medidas VALUES('Emily Duran' ,'/1/2016',20,69.4	,325);
Insert into medidas VALUES('Maria Valencia', '7/5/2017',21,72.6,412);
Insert into medidas VALUES('Pedro Linares', '9/11/2000',35,80.4,521);
Insert into medidas VALUES('Yunari Cespedes' ,'12/6/2013',48,103.6,532);
INSERT INTO medidas VALUES('mar Perez','23/5/2017',23,69.7,654);
INSERT INTO medidas VALUES('Cristian Velez','10/2/2002',20,95.7,410);
INSERT INTO medidas VALUES('Milena Rojas','21/6/2015',20,69.7,302);
INSERT INTO medidas VALUES('Evelin Arias','24/3/2003',18,69.7,215);
INSERT INTO medidas VALUES('Santiago Jimenez','28/1/2008',18,69.7,432);
INSERT INTO medidas VALUES('Brenda Giraldo','19/9/2015',35,95.7,203);
INSERT INTO medidas VALUES('Ana Espinosa','29/6/2018',40,95.7,210);
INSERT INTO medidas VALUES('Alvaro Dominguez','25/10/2001',21,80.4,214);
INSERT INTO medidas VALUES('Jaidive Camelo','1/12/2014',26,80.4,302);
INSERT INTO medidas VALUES('Veronica Orozco','23/3/2000',30,69.7,521);
INSERT INTO medidas VALUES('Sofia Rodriguez','10/7/2016',29,85.6,302);

Create table rutina(
ID_rutina INT NOT NULL PRIMARY KEY,
Fecha DATE,
Hora INT);

INSERT INTO rutina VALUES('10/2/2014',09/00,'Cantidad sentadilla','Cantidad kilometros','Cantidad sentadilla','Cantidad flexiones','Cantidad abdominales','Cantidad sentadilla',2x8);
INSERT INTO rutina VALUES('1/10/2000',11/00,'Cantidad kilometros','Cantidad sentadilla','Cantidad kilometros','Cantidad kilometros','Cantidad sentadilla','Cantidad kilometros',2x8);
INSERT INTO rutina VALUES('2/1/2013',08/30,'Cantidad kilometros','Cantidad flexiones','Cantidad kilometros','Cantidad sentadilla ','Cantidad kilometros','Cantidad kilometros'	,10,10,6);
INSERT INTO rutina VALUES('15/8/2000',07/00,'Cantidad abdominales','Cantidad abdominales','Cantidad abdominales','Cantidad abdominales','Cantidad flexiones','Cantidad abdominales',3x8);
INSERT INTO rutina VALUES('14/11/2014',08/30,'Cantidad sentadilla' ,'Cantidad kilometros','Cantidad sentadilla','Cantidad flexiones','Cantidad abdominales','Cantidad sentadilla',3x8);
INSERT INTO rutina VALUES('13/3/2015',11/00	,'Cantidad abdominales','Cantidad sentadilla','Cantidad abdominales','Cantidad abdominales'	,'Cantidad sentadilla','Cantidad abdominales',4x10);
INSERT INTO rutina VALUES('14/1/2002',11/00	,'Cantidad sentadilla' ,'Cantidad flexiones','Cantidad sentadilla', 'Cantidad sentadilla','Cantidad kilometros','Cantidad sentadilla',10,10,6);
INSERT INTO rutina VALUES('25/1/2015',08/30	,'Cantidad kilometros','Cantidad kilometros','Cantidad kilometros','Cantidad kilometros','Cantidad sentadilla' ,'Cantidad kilometros',3x8);
INSERT INTO rutina VALUES('25/1/2015',11/00,'Cantidad kilometros',	'Cantidad sentadilla','Cantidad kilometros','Cantidad flexiones','Cantidad abdominales'	'Cantidad kilometros',2x8);
INSERT INTO rutina VALUES('11/10/2000',08/30,'Cantidad sentadilla','Cantidad abdominales','Cantidad sentadilla','Cantidad abdominales','Cantidad flexiones','Cantidad sentadilla',10,10,6);
INSERT INTO rutina VALUES('7/9/2014',09/00,'Cantidad sentadilla','Cantidad flexiones','Cantidad sentadilla','Cantidad sentadilla','Cantidad sentadilla','Cantidad sentadilla',4x10);
INSERT INTO rutina VALUES('2/5/2018',11/00,'Cantidad flexiones','Cantidad abdominales','Cantidad flexiones','Cantidad kilometros','Cantidad kilometros','Cantidad flexiones',10,10,6);
INSERT INTO rutina VALUES('19/10/2017',11/00,'Cantidad flexiones','Cantidad sentadilla' ,'Cantidad flexiones','Cantidad sentadilla' ,'Cantidad kilometros','Cantidad flexiones',3x8);
INSERT INTO rutina VALUES('9/1/2000',09/00	,'Cantidad abdominales','Cantidad kilometros','Cantidad abdominales','Cantidad abdominales','Cantidad abdominales','Cantidad abdominales',2x8);
INSERT INTO rutina VALUES('3/1/2016',08/30	,'Cantidad sentadilla' ,'Cantidad flexiones','Cantidad sentadilla','Cantidad flexiones','Cantidad sentadilla' ,'Cantidad sentadilla' ,4x10);
INSERT INTO rutina VALUES('7/5/2017',07/00	,'Cantidad kilometros','Cantidad abdominales','Cantidad kilometros','Cantidad sentadilla','Cantidad abdominales','Cantidad kilometros',10.6);
INSERT INTO rutina VALUES('9/11/2000',11/00	,'Cantidad abdominales','Cantidad sentadilla','Cantidad abdominales','Cantidad kilometros','Cantidad sentadilla' ,'Cantidad abdominales',2x8);
INSERT INTO rutina VALUES('12/6/2013',11/00	,'Cantidad flexiones','Cantidad kilometros'	,'Cantidad kilometros','Cantidad kilometros','Cantidad kilometros','Cantidad kilometros',3x8);
INSERT INTO rutina VALUES('23/5/2017',08/30	,'Cantidad sentadilla' ,'Cantidad sentadilla','cantidad sentadilla'	,'Cantidad abdominales','Cantidad kilometros','Cantidad sentadilla',4x10);
INSERT INTO rutina VALUES('10/2/2002',11/00	,'Cantidad sentadilla' ,'Cantidad abdominales','Cantidad abdominales','Cantidad sentadilla','Cantidad abdominales','Cantidad abdominales',10.6);
INSERT INTO rutina VALUES('22/7/2007',11/00	,'Cantidad kilometros','Cantidad flexiones','Cantidad flexiones','Cantidad abdominales','Cantidad sentadilla','Cantidad flexiones',3x8);
INSERT INTO rutina VALUES('21/6/2015',09/00	,'Cantidad kilometros','Cantidad abdominales','Cantidad abdominales','Cantidad sentadilla' ,'Cantidad abdominales','Cantidad sentadilla',4x10);
INSERT INTO rutina VALUES('24/3/2003',09/00	,'Cantidad abdominales','Cantidad sentadilla','Cantidad sentadilla' ,'Cantidad kilometros','Cantidad sentadilla','Cantidad kilometros',2x8);
INSERT INTO rutina VALUES('28/1/2008',09/00	,'Cantidad sentadilla' ,'Cantidad sentadilla','Cantidad sentadilla','Cantidad kilometros','Cantidad kilometros','Cantidad kilometros',10,10,6);
INSERT INTO rutina VALUES('19/9/2015',07/00,'Cantidad abdominales','Cantidad abdominales','Cantidad abdominales','Cantidad sentadilla' ,'Cantidad kilometros','Cantidad abdominales',10,10,6);
INSERT INTO rutina VALUES('29/6/2018',11/00,'Cantidad abdominales','Cantidad abdominales','Cantidad abdominales','Cantidad sentadilla' ,'Cantidad sentadilla',	'Cantidad sentadilla',3x8);
INSERT INTO rutina VALUES('25/10/2001',07/00,'Cantidad sentadilla' ,'Cantidad sentadilla','Cantidad sentadilla' ,'Cantidad flexiones','Cantidad sentadilla','Cantidad abdominales',10.6);
INSERT INTO rutina VALUES('1/12/2014',07/00	,'Cantidad abdominales','Cantidad kilometros','Cantidad kilometros','Cantidad sentadilla' ,'Cantidad flexiones','Cantidad abdominales',2x8);
INSERT INTO rutina VALUES('23/3/2000',11/00,'Cantidad abdominales','Cantidad sentadilla' ,'Cantidad sentadilla' ,'Cantidad kilometros','Cantidad flexiones','Cantidad sentadilla' ,3x8);
INSERT INTO rutina VALUES('10/7/2016',09/00,'Cantidad sentadilla','Cantidad abdominales','Cantidad abdominales','Cantidad sentadilla' ,'Cantidad abdominales','Cantidad abdominales',10.6);















