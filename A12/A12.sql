/*
	CREATE DATABASE A12;
	USE A12;
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

/*Primary keys*/
ALTER TABLE Drzava ADD CONSTRAINT PK_Drzava PRIMARY KEY (drzavaID);
ALTER TABLE Takmicenje ADD CONSTRAINT PK_Takmicenje PRIMARY KEY(takmicenjeID);
ALTER TABLE Grad ADD CONSTRAINT PK_Grad PRIMARY KEY (gradID);
ALTER TABLE Stadion ADD CONSTRAINT PK_Stadion PRIMARY KEY (stadionID);
ALTER TABLE Klub ADD CONSTRAINT PK_Klub PRIMARY KEY (klubID);
ALTER TABLE Utakmica ADD CONSTRAINT PK_Utakmica PRIMARY KEY (utakmicaID);

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
	('Klub2',2,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub3',13,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub4',7,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub5',14,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub6',19,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub7',5,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub8',11,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub9',10,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub10',14,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub11',11,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub12',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub13',5,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub14',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub15',11,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub16',14,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub17',4,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub18',12,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub19',18,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub20',1,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub21',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub22',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub23',17,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub24',10,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub25',19,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub26',16,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub27',20,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub28',4,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub29',10,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub30',1,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub31',1,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub32',9,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub33',7,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub34',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub35',5,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub36',18,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub37',3,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub38',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub39',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub40',16,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub41',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub42',6,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub43',6,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub44',2,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub45',8,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg'),
	('Klub46',16,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image1.jpg'),
	('Klub47',15,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image2.jpg'),
	('Klub48',9,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image3.jpg'),
	('Klub49',9,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image4.jpg'),
	('Klub50',3,'klub@gmail.com','www.klub.com','156456789952','C:\Users\Velja\Desktop\Matura\A9\Matura\A9\Matura_Zadatak_A9\Matura_Zadatak_A9\Klubovi\image5.jpg');

INSERT INTO Utakmica VALUES
	('2022.6.10','21:47',20,10,38,0,1),
	('2022.3.18','15:29',6,42,21,0,2),
	('2022.9.24','4:33',1,26,33,0,3),
	('2022.4.28','5:25',16,3,13,3,1),
	('2022.4.19','19:55',6,11,23,2,1),
	('2022.8.27','13:38',7,24,43,0,3),
	('2022.6.2','8:28',3,37,20,2,0),
	('2022.3.22','20:40',4,26,28,0,2),
	('2022.8.2','13:57',1,23,2,3,1),
	('2022.4.19','15:46',10,31,7,2,2),
	('2022.9.26','13:13',11,37,49,1,3),
	('2022.7.8','18:11',1,7,45,0,0),
	('2022.5.17','2:53',7,16,21,0,3),
	('2022.7.11','7:21',10,22,40,2,1),
	('2022.3.23','13:49',20,32,33,1,2),
	('2022.6.7','15:34',17,23,26,3,0),
	('2022.7.3','13:21',13,19,43,1,0),
	('2022.6.13','19:26',5,21,41,3,0),
	('2022.6.18','14:30',5,47,39,3,3),
	('2022.4.4','12:52',15,36,14,0,2),
	('2022.8.25','4:18',19,32,31,0,3),
	('2022.8.8','23:20',14,2,11,3,0),
	('2022.6.8','21:39',10,40,24,2,0),
	('2022.6.20','17:13',2,6,45,0,3),
	('2022.3.11','15:57',17,4,49,0,2),
	('2022.9.2','11:34',13,38,28,2,3),
	('2022.7.6','9:26',15,19,20,0,1),
	('2022.4.20','5:54',7,33,3,0,2),
	('2022.6.18','11:49',13,23,10,2,2),
	('2022.8.2','1:58',11,18,11,0,3),
	('2022.7.23','16:23',12,37,30,2,1),
	('2022.5.2','18:49',9,27,7,0,0),
	('2022.6.25','13:57',3,9,44,2,0),
	('2022.6.9','4:52',14,5,40,1,1),
	('2022.9.8','2:45',4,47,6,3,2),
	('2022.8.1','14:34',17,27,13,3,1),
	('2022.5.19','15:34',9,48,34,0,1),
	('2022.4.17','9:42',20,49,10,0,3),
	('2022.3.22','16:41',17,19,33,0,2),
	('2022.6.29','11:40',12,45,36,1,3),
	('2022.8.14','20:15',1,4,27,3,0),
	('2022.3.4','1:42',7,34,39,0,0),
	('2022.8.20','19:22',17,16,18,0,0),
	('2022.9.18','23:34',19,26,7,1,2),
	('2022.9.27','16:39',3,47,9,2,3),
	('2022.7.23','16:49',17,19,43,3,3),
	('2022.3.15','15:37',16,40,45,2,1),
	('2022.4.19','4:35',11,43,49,3,1),
	('2022.5.4','13:53',2,17,17,3,1),
	('2022.6.5','18:41',13,48,34,0,3),
	('2022.3.10','5:54',15,27,32,3,3),
	('2022.8.3','7:50',17,48,4,1,3),
	('2022.4.6','10:25',5,50,18,1,1),
	('2022.6.18','1:20',17,22,45,3,2),
	('2022.3.14','10:11',5,6,23,2,2),
	('2022.4.20','8:50',12,8,5,1,3),
	('2022.6.23','4:19',11,16,5,0,1),
	('2022.8.18','7:52',19,46,21,3,0),
	('2022.6.7','22:25',18,34,17,0,2),
	('2022.3.22','1:53',3,21,26,1,0),
	('2022.5.28','22:15',19,9,37,2,3),
	('2022.5.10','18:30',8,31,6,2,0),
	('2022.9.7','21:32',18,19,30,3,1),
	('2022.5.29','11:52',8,30,39,3,0),
	('2022.3.11','7:48',12,13,37,3,3),
	('2022.9.20','9:31',16,26,11,2,0),
	('2022.4.28','2:36',11,48,44,1,2),
	('2022.6.17','23:17',13,21,30,3,1),
	('2022.9.7','16:42',15,48,27,2,1),
	('2022.9.27','5:57',13,42,24,2,0),
	('2022.9.17','20:26',18,9,32,0,1),
	('2022.9.24','2:57',17,39,12,1,1),
	('2022.6.17','6:15',1,44,32,3,1),
	('2022.5.16','22:17',14,6,19,2,1),
	('2022.5.18','8:33',1,25,30,2,3),
	('2022.4.29','2:31',15,17,26,0,3),
	('2022.8.25','14:58',14,49,36,0,2),
	('2022.6.22','3:57',12,11,18,3,2),
	('2022.9.29','13:46',11,19,3,1,3),
	('2022.5.29','19:39',13,34,8,2,3),
	('2022.8.13','21:27',16,42,40,0,3),
	('2022.7.10','10:54',2,46,31,2,0),
	('2022.5.3','8:19',19,16,3,1,0),
	('2022.9.25','3:31',16,3,21,1,1),
	('2022.8.19','6:45',19,19,25,1,0),
	('2022.6.15','21:54',20,6,33,2,1),
	('2022.6.20','12:38',6,24,32,3,1),
	('2022.8.8','13:26',10,30,28,3,3),
	('2022.8.21','4:57',15,31,14,2,3),
	('2022.5.1','21:10',16,4,31,3,3),
	('2022.9.7','9:48',2,2,3,2,0),
	('2022.6.6','1:26',8,10,12,3,0),
	('2022.4.16','23:54',7,39,34,1,3),
	('2022.6.23','12:33',15,28,38,2,2),
	('2022.6.2','15:16',18,50,28,2,1),
	('2022.8.29','15:44',16,47,1,1,1),
	('2022.9.29','22:39',2,37,7,2,3),
	('2022.6.2','11:33',12,35,32,2,3),
	('2022.5.5','15:58',7,29,23,3,1),
	('2022.4.22','23:38',9,21,8,3,2),
	('2022.7.28','22:54',1,14,2,3,2),
	('2022.9.9','9:58',2,3,5,2,0),
	('2022.8.27','15:28',3,11,18,3,3),
	('2022.9.29','15:12',7,36,50,0,3),
	('2022.9.16','4:27',19,19,45,2,2),
	('2022.9.9','16:56',10,43,12,1,3),
	('2022.3.8','19:46',11,6,20,0,3),
	('2022.3.24','23:43',20,4,14,0,0),
	('2022.3.13','23:22',10,29,31,1,2),
	('2022.4.1','13:48',17,48,38,3,2),
	('2022.9.5','1:11',20,44,20,3,3),
	('2022.7.10','7:40',14,13,40,0,3),
	('2022.9.24','18:21',3,8,25,0,0),
	('2022.6.9','23:10',19,3,17,1,0),
	('2022.3.29','11:14',18,34,41,3,0),
	('2022.5.18','9:23',20,31,1,3,0),
	('2022.9.23','1:52',11,39,43,3,2),
	('2022.8.18','10:22',6,21,10,3,0),
	('2022.6.26','22:15',9,8,6,0,2),
	('2022.7.6','8:28',1,9,48,1,1),
	('2022.3.6','11:45',5,47,8,0,1),
	('2022.7.3','7:57',2,12,21,2,3),
	('2022.4.25','8:53',15,18,9,0,2),
	('2022.4.12','14:21',6,47,47,0,2),
	('2022.8.23','15:10',20,20,40,1,0),
	('2022.5.21','3:14',20,25,15,3,2),
	('2022.4.5','11:15',11,4,10,3,2),
	('2022.8.13','18:28',1,46,33,2,3),
	('2022.4.6','21:57',2,15,12,3,1),
	('2022.7.4','11:15',19,27,22,3,3),
	('2022.3.19','6:39',17,1,39,0,0),
	('2022.5.28','16:19',9,15,37,0,2),
	('2022.7.6','3:17',18,33,31,2,3),
	('2022.4.19','12:22',19,13,47,2,0),
	('2022.6.19','9:54',4,3,13,3,3),
	('2022.8.13','16:17',8,44,47,3,2),
	('2022.9.29','18:39',20,13,8,2,1),
	('2022.6.3','23:31',6,46,14,0,1),
	('2022.4.21','1:12',18,49,36,3,0),
	('2022.4.2','6:40',7,7,34,0,2),
	('2022.4.27','16:15',15,30,33,2,3),
	('2022.9.10','4:47',18,9,22,2,0),
	('2022.6.25','3:49',18,7,7,3,2),
	('2022.4.28','19:52',16,13,19,0,1),
	('2022.8.4','23:31',9,10,9,3,2),
	('2022.9.13','4:13',4,30,3,0,0),
	('2022.6.14','2:36',20,38,3,1,3),
	('2022.3.3','13:56',8,43,45,2,2),
	('2022.3.4','11:55',13,6,32,0,2),
	('2022.5.3','18:19',17,33,4,3,2),
	('2022.4.8','3:21',8,46,22,0,2),
	('2022.9.1','1:26',4,28,50,3,3),
	('2022.7.16','20:57',19,41,10,2,1),
	('2022.3.24','7:55',17,24,15,2,1),
	('2022.6.26','18:36',10,24,22,2,0),
	('2022.6.2','21:20',4,45,35,1,1),
	('2022.8.8','8:25',1,35,26,1,1),
	('2022.5.2','5:38',1,26,7,2,0),
	('2022.4.6','2:28',11,12,34,2,2),
	('2022.6.24','15:29',5,25,5,2,1),
	('2022.3.5','20:13',1,4,6,0,2),
	('2022.9.28','1:30',2,34,42,1,0),
	('2022.5.11','18:15',14,19,4,0,2),
	('2022.8.29','19:44',10,25,6,0,1),
	('2022.4.5','4:10',6,24,30,2,2),
	('2022.7.3','18:57',12,38,15,3,0),
	('2022.7.28','12:33',1,1,25,1,0),
	('2022.8.8','12:36',6,50,15,2,1),
	('2022.3.9','3:23',11,48,34,1,3),
	('2022.8.23','10:13',9,35,15,1,0),
	('2022.9.22','3:17',11,44,22,3,1),
	('2022.4.3','19:48',14,49,21,1,1),
	('2022.3.11','10:36',16,29,4,2,2),
	('2022.7.22','20:49',5,41,43,1,3),
	('2022.4.27','18:21',17,39,27,1,1),
	('2022.3.2','4:32',13,8,10,0,0),
	('2022.8.10','23:38',2,44,15,3,0),
	('2022.6.13','20:10',19,13,7,0,1),
	('2022.8.25','12:42',1,18,10,3,2),
	('2022.6.5','3:45',13,2,34,0,0),
	('2022.9.19','20:55',19,2,38,3,0),
	('2022.6.4','3:54',7,22,41,1,1),
	('2022.7.3','8:40',8,6,13,3,2),
	('2022.9.25','19:50',7,40,10,1,2),
	('2022.6.24','21:34',18,2,17,2,3),
	('2022.6.17','20:43',19,8,34,0,0),
	('2022.8.8','7:46',14,6,19,3,0),
	('2022.4.22','19:26',15,4,44,1,2),
	('2022.6.4','5:25',6,37,14,3,1),
	('2022.8.7','22:43',3,14,38,1,3),
	('2022.5.23','4:50',3,2,46,0,3),
	('2022.3.5','21:48',17,31,26,0,3),
	('2022.8.13','23:37',9,44,43,2,2),
	('2022.4.16','14:35',12,13,5,2,2),
	('2022.6.19','1:18',8,9,40,0,2),
	('2022.5.1','10:26',4,46,17,3,0),
	('2022.9.23','8:24',20,28,21,2,2),
	('2022.5.16','14:41',14,13,5,0,2),
	('2022.9.20','1:50',15,11,14,1,2),
	('2022.4.25','9:44',4,35,12,0,3),
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

/*Foreign keys*/

ALTER TABLE GRAD ADD CONSTRAINT FK_Grad_drzavaID FOREIGN KEY (drzavaID) REFERENCES Drzava(drzavaID) ON DELETE CASCADE;
ALTER TABLE Stadion ADD CONSTRAINT FK_Stadion_gradID FOREIGN KEY (gradID) REFERENCES Grad(gradID) ON DELETE CASCADE;
ALTER TABLE Klub ADD CONSTRAINT FK_Klub_stadionID FOREIGN KEY (stadionID) REFERENCES Stadion(stadionID) ON DELETE CASCADE;
ALTER TABLE Utakmica ADD CONSTRAINT FK_Utakmica_domacinID FOREIGN KEY (domacinID) REFERENCES Klub(klubID) ON DELETE CASCADE;
ALTER TABLE Utakmica ADD CONSTRAINT FK_Utakmica_gostID FOREIGN KEY (gostID) REFERENCES Klub(klubID);
ALTER TABLE Utakmica ADD CONSTRAINT FK_Utakmica_takmicenjeID FOREIGN KEY (takmicenjeID) REFERENCES Takmicenje(takmicenjeID) ON DELETE CASCADE;


/*Dopuna*/

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

ALTER TABLE Igrac ADD CONSTRAINT PK_Igrac PRIMARY KEY (igracID);
ALTER TABLE Igra ADD CONSTRAINT PK_Igra PRIMARY KEY (igracID,klubID);

ALTER TABLE Igra ADD CONSTRAINT vreme_igranja CHECK(prestao_da_igra>poceo_da_igra OR prestao_da_igra = NULL);

ALTER TABLE Igra ADD CONSTRAINT FK_Igra_igracID FOREIGN KEY (igracID) REFERENCES Igrac(igracID) ON DELETE CASCADE;
ALTER TABLE Igra ADD CONSTRAINT FK_Igra_klubID FOREIGN KEY (klubID) REFERENCES Klub(klubID) ON DELETE CASCADE;
