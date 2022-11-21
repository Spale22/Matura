/*
	CREATE DATABASE A9;
	USE A9;
*/


CREATE TABLE Drzava(
	drzavaID int IDENTITY(1,1) not null,
	naziv varchar(50)
);

CREATE TABLE Takmicenje(
	takmicenjeID int IDENTITY (1,1) not null,
	naziv varchar(70)
);

CREATE TABLE Grad(
	gradID int IDENTITY(1,1) not null,
	grad varchar(50),
	pozivni_broj varchar(30),
	postanski_broj varchar(30),
	broj_stanovnika int,
	drzavaID int
);

CREATE TABLE Stadion(
	stadionID int IDENTITY(1,1) not null,
	naziv varchar(50),
	adresa varchar(70),
	kapacitet int,
	broj_ulaza int,
	gradID int
);

CREATE TABLE Klub(
	klubID int IDENTITY(1,1) not null,
	naziv varchar(70),
	stadionID int,
	email varchar(30),
	sajt varchar(30),
	ziro_racun varchar(30),
	amblem text
);

CREATE TABLE Utakmica(
	utakmicaID int IDENTITY(1,1) not null,
	datum_igranja date,
	vreme_igranja time,
	takmicenjeID int,
	domacinID int,
	gostID int,
	golova_domacin int,
	golova_gost int
);

CREATE TABLE Igrac(
	igracID int IDENTITY(1,1) not null,
	ime varchar(50),
	prezime varchar(70),
	datum_rodjenja date,
	poreklo int
);

CREATE TABLE Igra(
	igracID int not null,
	klubID int not null,
	poceo_da_igra date not null,
	prestao_da_igra date
);

/*Primary keys*/

ALTER TABLE Drzava ADD CONSTRAINT PK_Drzava PRIMARY KEY (drzavaID);
ALTER TABLE Takmicenje ADD CONSTRAINT PK_Takmicenje PRIMARY KEY(takmicenjeID);
ALTER TABLE Grad ADD CONSTRAINT PK_Grad PRIMARY KEY (gradID);
ALTER TABLE Stadion ADD CONSTRAINT PK_Stadion PRIMARY KEY (stadionID);
ALTER TABLE Klub ADD CONSTRAINT PK_Klub PRIMARY KEY (klubID);
ALTER TABLE Utakmica ADD CONSTRAINT PK_Utakmica PRIMARY KEY (utakmicaID);
ALTER TABLE Igrac ADD CONSTRAINT PK_Igrac PRIMARY KEY (igracID);
ALTER TABLE Igra ADD CONSTRAINT PK_Igra PRIMARY KEY (igracID,klubID);

/*Constraints*/

ALTER TABLE Igra ADD CONSTRAINT vreme_igranja CHECK(prestao_da_igra>poceo_da_igra OR prestao_da_igra = NULL);


INSERT INTO Drzava VALUES
	('Drzava1'),
	('Drzava2'),
	('Drzava3'),
	('Drzava4'),
	('Drzava5'),
	('Drzava6'),
	('Drzava7'),
	('Drzava8'),
	('Drzava9'),
	('Drzava10');

INSERT INTO Takmicenje VALUES
	('Takmicenje1'),
	('Takmicenje2'),
	('Takmicenje3'),
	('Takmicenje4'),
	('Takmicenje5'),
	('Takmicenje6'),
	('Takmicenje7'),
	('Takmicenje8'),
	('Takmicenje9'),
	('Takmicenje10'),
	('Takmicenje11'),
	('Takmicenje12'),
	('Takmicenje13'),
	('Takmicenje14'),
	('Takmicenje15'),
	('Takmicenje16'),
	('Takmicenje17'),
	('Takmicenje18'),
	('Takmicenje19'),
	('Takmicenje20');

INSERT INTO Grad VALUES
	('Grad1','12341234','12345',31000,1),
	('Grad2','12341234','12345',27000,5),
	('Grad3','12341234','12345',27000,8),
	('Grad4','12341234','12345',35000,5),
	('Grad5','12341234','12345',26000,7),
	('Grad6','12341234','12345',18000,8),
	('Grad7','12341234','12345',41000,6),
	('Grad8','12341234','12345',36000,10),
	('Grad9','12341234','12345',18000,9),
	('Grad10','12341234','12345',21000,6),
	('Grad11','12341234','12345',36000,5),
	('Grad12','12341234','12345',20000,4),
	('Grad13','12341234','12345',33000,7),
	('Grad14','12341234','12345',38000,4),
	('Grad15','12341234','12345',20000,1),
	('Grad16','12341234','12345',20000,5),
	('Grad17','12341234','12345',28000,8),
	('Grad18','12341234','12345',28000,6),
	('Grad19','12341234','12345',36000,3),
	('Grad20','12341234','12345',31000,3);

INSERT INTO Stadion VALUES
	('Stadion1','Adresa',26000,14,12),
	('Stadion2','Adresa',44000,6,13),
	('Stadion3','Adresa',20000,12,9),
	('Stadion4','Adresa',27000,2,14),
	('Stadion5','Adresa',26000,3,3),
	('Stadion6','Adresa',35000,13,17),
	('Stadion7','Adresa',36000,5,13),
	('Stadion8','Adresa',32000,14,6),
	('Stadion9','Adresa',32000,7,4),
	('Stadion10','Adresa',29000,13,4),
	('Stadion11','Adresa',42000,4,12),
	('Stadion12','Adresa',26000,6,4),
	('Stadion13','Adresa',20000,5,9),
	('Stadion14','Adresa',36000,2,11),
	('Stadion15','Adresa',21000,14,4),
	('Stadion16','Adresa',35000,14,6),
	('Stadion17','Adresa',21000,1,3),
	('Stadion18','Adresa',31000,13,11),
	('Stadion19','Adresa',44000,5,16),
	('Stadion20','Adresa',43000,7,17);

INSERT INTO Klub VALUES
	('Klub1',1,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub2',2,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub3',13,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub4',7,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub5',14,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub6',19,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub7',5,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub8',11,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub9',10,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub10',14,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub11',11,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub12',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub13',5,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub14',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub15',11,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub16',14,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub17',4,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub18',12,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub19',18,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub20',1,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub21',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub22',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub23',17,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub24',10,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub25',19,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub26',16,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub27',20,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub28',4,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub29',10,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub30',1,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub31',1,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub32',9,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub33',7,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub34',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub35',5,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub36',18,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub37',3,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub38',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub39',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub40',16,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub41',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub42',6,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub43',6,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub44',2,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub45',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub46',16,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub47',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub48',9,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub49',9,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub50',3,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg');

INSERT INTO Utakmica VALUES
	('2021.3.24','21:33',7,13,14,1,0),
	('2016.5.18','20:16',20,26,27,1,3),
	('2015.7.12','18:19',7,10,11,2,0),
	('2015.3.24','18:31',4,49,50,1,2),
	('2012.12.14','20:43',5,49,50,3,3),
	('2011.12.28','17:28',16,14,15,2,2),
	('2018.8.26','20:32',17,8,9,3,3),
	('2011.11.5','18:23',12,23,24,0,0),
	('2018.7.25','21:31',13,18,19,3,2),
	('2017.12.1','19:44',15,31,32,3,1),
	('2011.7.9','19:42',9,22,23,0,1),
	('2014.9.22','17:21',13,33,34,0,2),
	('2021.2.20','17:16',4,14,15,1,1),
	('2011.2.13','21:36',17,9,10,3,0),
	('2012.10.1','21:17',20,15,16,1,1),
	('2017.4.24','20:38',18,50,41,0,0),
	('2018.11.16','20:27',2,8,9,1,0),
	('2013.8.22','17:37',13,29,30,2,3),
	('2013.9.4','17:38',19,39,40,0,2),
	('2013.4.13','19:22',17,32,33,2,2),
	('2020.10.2','20:23',10,42,43,2,1),
	('2015.11.6','17:41',9,44,45,2,2),
	('2010.11.21','21:35',14,22,23,3,2),
	('2016.11.2','21:19',5,1,2,1,0),
	('2016.11.3','21:34',9,28,29,3,1),
	('2014.5.8','21:35',10,12,13,0,2),
	('2017.2.26','18:40',14,38,39,3,3),
	('2016.2.27','18:36',7,10,11,1,3),
	('2017.4.27','19:18',3,22,23,3,0),
	('2021.11.29','19:23',14,26,27,2,3),
	('2014.9.15','19:36',3,35,36,3,3),
	('2019.8.1','18:13',13,35,36,2,0),
	('2019.5.19','18:18',2,32,33,0,2),
	('2019.2.19','17:38',16,21,22,0,1),
	('2016.11.23','19:19',9,20,21,0,0),
	('2020.11.16','20:42',17,31,32,2,3),
	('2011.2.11','18:35',8,29,30,3,2),
	('2014.12.17','20:31',7,10,11,3,2),
	('2019.7.24','20:38',5,44,45,0,0),
	('2020.11.12','18:19',13,41,42,2,1),
	('2020.10.16','17:25',5,44,45,1,3),
	('2014.4.5','17:20',14,14,15,0,3),
	('2018.4.15','21:36',14,8,9,3,1),
	('2011.2.22','20:21',17,2,3,1,3),
	('2018.4.15','19:14',10,17,18,0,1),
	('2011.8.25','17:36',9,42,43,1,0),
	('2015.2.27','19:34',9,48,49,0,3),
	('2010.1.16','21:34',16,36,37,0,0),
	('2019.8.23','21:13',1,19,20,1,2),
	('2011.5.1','18:20',10,32,33,3,2);

INSERT INTO Igrac VALUES
	('Igrac1','Igrac1','1998.7.17',7),
	('Igrac2','Igrac2','1991.12.21',2),
	('Igrac3','Igrac3','1991.8.27',6),
	('Igrac4','Igrac4','1991.6.9',9),
	('Igrac5','Igrac5','1997.12.8',5),
	('Igrac6','Igrac6','1995.6.14',1),
	('Igrac7','Igrac7','1995.5.26',7),
	('Igrac8','Igrac8','1997.9.22',7),
	('Igrac9','Igrac9','1993.10.20',2),
	('Igrac10','Igrac10','1993.4.15',7),
	('Igrac11','Igrac11','1993.2.18',10),
	('Igrac12','Igrac12','1996.3.19',6),
	('Igrac13','Igrac13','1993.10.16',1),
	('Igrac14','Igrac14','1997.2.14',3),
	('Igrac15','Igrac15','1996.10.28',7),
	('Igrac16','Igrac16','1994.1.23',9),
	('Igrac17','Igrac17','1992.2.26',6),
	('Igrac18','Igrac18','1997.11.12',9),
	('Igrac19','Igrac19','1994.2.21',6),
	('Igrac20','Igrac20','1993.4.24',5),
	('Igrac21','Igrac21','1998.4.24',8),
	('Igrac22','Igrac22','1994.5.4',1),
	('Igrac23','Igrac23','1996.7.5',6),
	('Igrac24','Igrac24','1991.12.19',7),
	('Igrac25','Igrac25','1991.4.12',7),
	('Igrac26','Igrac26','1998.2.5',6),
	('Igrac27','Igrac27','1996.6.10',2),
	('Igrac28','Igrac28','1993.10.20',8),
	('Igrac29','Igrac29','1995.12.27',9),
	('Igrac30','Igrac30','1995.11.22',10),
	('Igrac31','Igrac31','1992.12.28',2),
	('Igrac32','Igrac32','1992.5.15',8),
	('Igrac33','Igrac33','1997.1.13',7),
	('Igrac34','Igrac34','1996.11.1',5),
	('Igrac35','Igrac35','1997.12.19',7),
	('Igrac36','Igrac36','1994.3.20',10),
	('Igrac37','Igrac37','1994.10.21',6),
	('Igrac38','Igrac38','1992.9.25',6),
	('Igrac39','Igrac39','1998.8.14',3),
	('Igrac40','Igrac40','1994.8.24',7),
	('Igrac41','Igrac41','1998.4.6',4),
	('Igrac42','Igrac42','1996.8.22',3),
	('Igrac43','Igrac43','1994.12.11',5),
	('Igrac44','Igrac44','1994.8.22',3),
	('Igrac45','Igrac45','1992.11.8',1),
	('Igrac46','Igrac46','1998.12.19',8),
	('Igrac47','Igrac47','1996.11.24',4),
	('Igrac48','Igrac48','1992.3.18',1),
	('Igrac49','Igrac49','1993.4.6',8),
	('Igrac50','Igrac50','1991.1.8',2);

INSERT INTO Igra VALUES
	(1,40,'2017.7.4','2018.9.4'),
	(2,41,'2011.8.7','2012.10.7'),
	(3,5,'2012.3.27','2013.5.27'),
	(4,30,'2017.6.3','2018.8.3'),
	(5,21,'2015.2.11','2016.4.11'),
	(6,37,'2017.4.10','2018.6.10'),
	(7,38,'2013.5.23','2014.7.23'),
	(8,2,'2016.8.6','2017.10.6'),
	(9,2,'2018.8.3',NULL),
	(10,46,'2010.2.26','2011.4.26'),
	(11,44,'2016.8.14','2017.10.14'),
	(12,6,'2016.4.11',NULL),
	(13,10,'2017.5.14','2018.7.14'),
	(14,30,'2016.5.26',NULL),
	(15,50,'2018.4.2','2019.6.2'),
	(16,49,'2016.2.14','2017.4.14'),
	(17,10,'2015.5.14','2016.7.14'),
	(18,43,'2014.1.20','2015.3.20'),
	(19,39,'2013.5.1','2014.7.1'),
	(20,3,'2013.4.15','2014.6.15'),
	(21,35,'2014.3.27','2015.5.27'),
	(22,3,'2012.8.15','2013.10.15'),
	(23,20,'2014.9.6','2015.11.6'),
	(24,34,'2013.1.18',NULL),
	(25,42,'2016.9.4','2017.11.4'),
	(26,4,'2014.4.29',NULL),
	(27,17,'2012.6.22',NULL),
	(28,20,'2012.5.13','2013.7.13'),
	(29,47,'2016.5.8',NULL),
	(30,11,'2014.3.10',NULL),
	(31,36,'2013.8.20',NULL),
	(32,50,'2015.2.24',NULL),
	(33,31,'2018.8.5',NULL),
	(34,4,'2018.2.24',NULL),
	(35,34,'2017.6.21',NULL),
	(36,20,'2011.6.27',NULL),
	(37,36,'2011.1.9','2012.3.9'),
	(38,1,'2014.9.23','2015.11.23'),
	(39,15,'2011.7.24',NULL),
	(40,24,'2017.4.6','2018.6.6'),
	(41,48,'2012.5.20',NULL),
	(42,35,'2016.1.8','2017.3.8'),
	(43,50,'2010.3.4','2011.5.4'),
	(44,31,'2017.5.5',NULL),
	(45,6,'2018.4.16','2019.6.16'),
	(46,17,'2010.8.7','2011.10.7'),
	(47,44,'2016.4.29',NULL),
	(48,13,'2015.4.18','2016.6.18'),
	(49,25,'2013.7.23',NULL),
	(50,17,'2017.6.6',NULL),
	(1,42,'2015.6.9','2016.8.9'),
	(2,42,'2012.4.9',NULL),
	(3,46,'2014.4.13','2015.6.13'),
	(4,9,'2012.2.9',NULL),
	(5,1,'2011.5.22',NULL),
	(6,46,'2015.7.2',NULL),
	(8,34,'2018.9.27','2019.11.27'),
	(9,12,'2015.7.8','2016.9.8'),
	(10,21,'2010.4.20',NULL),
	(11,24,'2017.7.7','2018.9.7'),
	(12,27,'2010.8.12','2011.10.12'),
	(13,29,'2014.4.16','2015.6.16'),
	(14,14,'2011.4.22',NULL),
	(15,21,'2012.2.3',NULL),
	(16,5,'2014.3.10','2015.5.10'),
	(17,45,'2011.1.18',NULL),
	(18,4,'2016.1.13','2017.3.13'),
	(19,4,'2011.6.10','2012.8.10'),
	(20,20,'2012.2.1',NULL),
	(21,16,'2015.7.8','2016.9.8'),
	(22,8,'2015.7.5',NULL),
	(23,43,'2016.5.15',NULL),
	(24,19,'2014.7.14','2015.9.14'),
	(25,23,'2011.1.20',NULL),
	(26,37,'2016.8.20',NULL),
	(27,35,'2013.3.1',NULL),
	(28,5,'2014.8.14','2015.10.14'),
	(29,35,'2010.8.17',NULL),
	(30,50,'2015.1.29','2016.3.29'),
	(31,37,'2014.7.16','2015.9.16'),
	(32,46,'2015.9.16','2016.11.16'),
	(33,48,'2016.9.14','2017.11.14'),
	(34,23,'2014.5.12','2015.7.12'),
	(35,38,'2015.3.23',NULL),
	(36,12,'2012.4.21',NULL),
	(37,41,'2015.9.28','2016.11.28'),
	(38,37,'2015.7.3','2016.9.3'),
	(39,24,'2014.3.15',NULL),
	(40,1,'2010.4.4',NULL),
	(41,12,'2010.7.7',NULL),
	(42,28,'2012.9.10',NULL),
	(43,25,'2011.3.22',NULL),
	(44,17,'2017.1.21',NULL),
	(45,30,'2016.5.27',NULL),
	(46,37,'2013.7.22','2014.9.22'),
	(47,38,'2017.3.14',NULL),
	(48,20,'2018.6.12','2019.8.12'),
	(49,23,'2016.4.18','2017.6.18'),
	(50,9,'2011.5.6','2012.7.6');


/*Foreign keys*/

ALTER TABLE GRAD ADD CONSTRAINT FK_Grad_drzavaID FOREIGN KEY (drzavaID) REFERENCES Drzava(drzavaID);
ALTER TABLE Stadion ADD CONSTRAINT FK_Stadion_gradID FOREIGN KEY (gradID) REFERENCES Grad(gradID);
ALTER TABLE Klub ADD CONSTRAINT FK_Klub_stadionID FOREIGN KEY (stadionID) REFERENCES Stadion(stadionID);
ALTER TABLE Utakmica ADD CONSTRAINT FK_Utakmica_domacinID FOREIGN KEY (domacinID) REFERENCES Klub(klubID);
ALTER TABLE Utakmica ADD CONSTRAINT FK_Utakmica_gostID FOREIGN KEY (gostID) REFERENCES Klub(klubID);
ALTER TABLE Utakmica ADD CONSTRAINT FK_Utakmica_takmicenjeID FOREIGN KEY (takmicenjeID) REFERENCES Takmicenje(takmicenjeID);
ALTER TABLE Igra ADD CONSTRAINT FK_Igra_igracID FOREIGN KEY (igracID) REFERENCES Igrac(igracID);
ALTER TABLE Igra ADD CONSTRAINT FK_Igra_klubID FOREIGN KEY (klubID) REFERENCES Klub(klubID);

/*
	USE master;
	DROP DATABASE A9;
*/

