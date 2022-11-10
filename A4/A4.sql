/*CREATE DATABASE A4;
USE A4;*/

CREATE TABLE Klijent(
	klijentID int not null,
	ime varchar(40),
	prezime varchar(50),
	adresa varchar(70),
	gradID int,
	telefon varchar(20),
	email varchar(40),
	aktivan_klijent varchar(5)
);

CREATE TABLE Kucica(
	kucicaID int not null,
	kategorijaID int,
	naziv varchar(50),
	broj_soba int,
	adresa varchar(70),
	seloID int,
	smernice_kako_stici text
);
	
CREATE TABLE Grad (
	gradID int not null,
	grad varchar(30),
	pozivni_broj varchar(50),
	postanski_broj int,
	broj_stanovnika int,
	regionID int

);

CREATE TABLE Kategorija(
	kategorijaID int not null,
	naziv varchar(50),
	opis text
);

CREATE TABLE Selo(
	seloID int not null,
	naziv varchar(50),
	gradID int
);

CREATE TABLE Region(
	regionID int not null,
	naziv varchar(50),
	opis text
);

CREATE TABLE Rezervacija(
	Rbr int not null,
	kucicaID int not null,
	klijentID int not null,
	datum_rezervisanja date ,
	vreme_rezervacije time,
	pocetak_rezervacije time,
	kraj_rezervacije time
);

CREATE TABLE Usluga(
	uslugaID int not null,
	naziv varchar(50),
	opis text
);

CREATE TABLE Poseduje_usluge(
	kucicaID int not null,
	uslugaID int not null,
	cena_od float,
	cena_do float
);

/*Primary keys*/
ALTER TABLE Rezervacija ADD CONSTRAINT PK_Rezervacija PRIMARY KEY (Rbr,kucicaID,klijentID);
ALTER TABLE Region ADD CONSTRAINT PK_Region PRIMARY KEY(regionID);
ALTER TABLE Selo ADD CONSTRAINT PK_Selo PRIMARY KEY (seloID);
ALTER TABLE Grad ADD CONSTRAINT PK_Grad PRIMARY KEY (gradID);
ALTER TABLE Klijent ADD CONSTRAINT PK_Klijent PRIMARY KEY (KlijentID);
ALTER TABLE Kucica ADD CONSTRAINT PK_Kucica PRIMARY KEY (kucicaID);
ALTER TABLE Kategorija ADD CONSTRAINT PK_Kategorija PRIMARY KEY (kategorijaID);
ALTER TABLE Usluga ADD CONSTRAINT PK_Usluga PRIMARY KEY (uslugaID);
ALTER TABLE Poseduje_usluge ADD CONSTRAINT PK_Poseduje_usluge PRIMARY KEY (kucicaID,uslugaID);

/*Constraints*/
ALTER TABLE Poseduje_usluge ADD CONSTRAINT Cena CHECK (cena_od<cena_do);
ALTER TABLE Klijent ADD CONSTRAINT Aktivan CHECK (aktivan_klijent IN ('TRUE','FALSE'));

INSERT INTO Region VALUES
	(1,'Region1','opis'),
	(2,'Region2','opis');

INSERT INTO Grad VALUES 
	(1,'Grad1','123546',15000,178000,1),
	(2,'Grad2','123546',18000,128000,2),
	(3,'Grad3','123546',19000,138000,1),
	(4,'Grad4','123546',12000,158000,2),
	(5,'Grad5','123546',13000,198000,1);

INSERT INTO Selo VALUES
	(1,'Selo1',1),
	(2,'Selo2',1),
	(3,'Selo3',1),
	(4,'Selo4',2),
	(5,'Selo5',2),
	(6,'Selo6',2),
	(7,'Selo7',2),
	(8,'Selo8',2),
	(9,'Selo9',3),
	(10,'Sel010',3),
	(11,'Selo11',3),
	(12,'Selo12',3),
	(13,'Selo13',3),
	(14,'Selo14',4),
	(15,'Selo15',4),
	(16,'Selo16',4),
	(17,'Selo17',5),
	(18,'Selo18',5),
	(19,'Selo19',5),
	(20,'Selo20',5);

INSERT INTO Usluga VALUES
	(1,'Usluga1','opis'),
	(2,'Usluga2','opis'),
	(3,'Usluga3','opis'),
	(4,'Usluga4','opis'),
	(5,'Usluga5','opis');

INSERT INTO Kategorija VALUES
	(1,'Kategorija1','opis'),
	(2,'Kategorija2','opis'),
	(3,'Kategorija3','opis');

INSERT INTO Kucica VALUES
	(1,1,'Kucica1',8,'Adresa1',19,'Smernice'),
	(2,2,'Kucica2',8,'Adresa2',7,'Smernice'),
	(3,1,'Kucica3',2,'Adresa3',14,'Smernice'),
	(4,1,'Kucica4',1,'Adresa4',10,'Smernice'),
	(5,1,'Kucica5',2,'Adresa5',15,'Smernice'),
	(6,2,'Kucica6',1,'Adresa6',18,'Smernice'),
	(7,2,'Kucica7',3,'Adresa7',12,'Smernice'),
	(8,1,'Kucica8',6,'Adresa8',12,'Smernice'),
	(9,3,'Kucica9',4,'Adresa9',17,'Smernice'),
	(10,2,'Kucica10',1,'Adresa10',7,'Smernice'),
	(11,3,'Kucica11',8,'Adresa11',5,'Smernice'),
	(12,3,'Kucica12',7,'Adresa12',11,'Smernice'),
	(13,2,'Kucica13',8,'Adresa13',18,'Smernice'),
	(14,3,'Kucica14',8,'Adresa14',5,'Smernice'),
	(15,1,'Kucica15',1,'Adresa15',3,'Smernice'),
	(16,2,'Kucica16',1,'Adresa16',9,'Smernice'),
	(17,2,'Kucica17',8,'Adresa17',13,'Smernice'),
	(18,2,'Kucica18',8,'Adresa18',13,'Smernice'),
	(19,2,'Kucica19',7,'Adresa19',6,'Smernice'),
	(20,2,'Kucica20',7,'Adresa20',11,'Smernice'),
	(21,1,'Kucica21',7,'Adresa21',3,'Smernice'),
	(22,1,'Kucica22',5,'Adresa22',3,'Smernice'),
	(23,1,'Kucica23',3,'Adresa23',8,'Smernice'),
	(24,1,'Kucica24',2,'Adresa24',5,'Smernice'),
	(25,1,'Kucica25',8,'Adresa25',9,'Smernice'),
	(26,2,'Kucica26',8,'Adresa26',12,'Smernice'),
	(27,2,'Kucica27',8,'Adresa27',7,'Smernice'),
	(28,3,'Kucica28',1,'Adresa28',2,'Smernice'),
	(29,2,'Kucica29',8,'Adresa29',1,'Smernice'),
	(30,1,'Kucica30',2,'Adresa30',20,'Smernice'),
	(31,2,'Kucica31',5,'Adresa31',1,'Smernice'),
	(32,1,'Kucica32',1,'Adresa32',3,'Smernice'),
	(33,3,'Kucica33',4,'Adresa33',12,'Smernice'),
	(34,1,'Kucica34',8,'Adresa34',16,'Smernice'),
	(35,2,'Kucica35',3,'Adresa35',16,'Smernice'),
	(36,1,'Kucica36',5,'Adresa36',19,'Smernice'),
	(37,3,'Kucica37',2,'Adresa37',19,'Smernice'),
	(38,1,'Kucica38',8,'Adresa38',18,'Smernice'),
	(39,1,'Kucica39',1,'Adresa39',15,'Smernice'),
	(40,1,'Kucica40',6,'Adresa40',12,'Smernice'),
	(41,2,'Kucica41',6,'Adresa41',3,'Smernice'),
	(42,1,'Kucica42',8,'Adresa42',14,'Smernice'),
	(43,1,'Kucica43',6,'Adresa43',20,'Smernice'),
	(44,1,'Kucica44',2,'Adresa44',10,'Smernice'),
	(45,2,'Kucica45',4,'Adresa45',2,'Smernice'),
	(46,1,'Kucica46',4,'Adresa46',15,'Smernice'),
	(47,1,'Kucica47',3,'Adresa47',7,'Smernice'),
	(48,1,'Kucica48',4,'Adresa48',20,'Smernice'),
	(49,1,'Kucica49',5,'Adresa49',13,'Smernice'),
	(50,2,'Kucica50',2,'Adresa50',20,'Smernice'),
	(51,3,'Kucica51',1,'Adresa51',16,'Smernice'),
	(52,3,'Kucica52',7,'Adresa52',5,'Smernice'),
	(53,1,'Kucica53',5,'Adresa53',9,'Smernice'),
	(54,3,'Kucica54',2,'Adresa54',20,'Smernice'),
	(55,2,'Kucica55',7,'Adresa55',1,'Smernice'),
	(56,3,'Kucica56',6,'Adresa56',9,'Smernice'),
	(57,3,'Kucica57',6,'Adresa57',13,'Smernice'),
	(58,1,'Kucica58',6,'Adresa58',7,'Smernice'),
	(59,1,'Kucica59',8,'Adresa59',6,'Smernice'),
	(60,1,'Kucica60',4,'Adresa60',8,'Smernice'),
	(61,3,'Kucica61',1,'Adresa61',10,'Smernice'),
	(62,3,'Kucica62',8,'Adresa62',2,'Smernice'),
	(63,3,'Kucica63',1,'Adresa63',13,'Smernice'),
	(64,1,'Kucica64',7,'Adresa64',16,'Smernice'),
	(65,2,'Kucica65',2,'Adresa65',1,'Smernice'),
	(66,3,'Kucica66',2,'Adresa66',12,'Smernice'),
	(67,1,'Kucica67',5,'Adresa67',18,'Smernice'),
	(68,2,'Kucica68',3,'Adresa68',11,'Smernice'),
	(69,2,'Kucica69',4,'Adresa69',8,'Smernice'),
	(70,3,'Kucica70',6,'Adresa70',18,'Smernice'),
	(71,1,'Kucica71',5,'Adresa71',5,'Smernice'),
	(72,2,'Kucica72',1,'Adresa72',4,'Smernice'),
	(73,3,'Kucica73',8,'Adresa73',19,'Smernice'),
	(74,3,'Kucica74',6,'Adresa74',14,'Smernice'),
	(75,3,'Kucica75',8,'Adresa75',16,'Smernice'),
	(76,1,'Kucica76',6,'Adresa76',10,'Smernice'),
	(77,3,'Kucica77',8,'Adresa77',17,'Smernice'),
	(78,2,'Kucica78',1,'Adresa78',18,'Smernice'),
	(79,3,'Kucica79',7,'Adresa79',15,'Smernice'),
	(80,3,'Kucica80',6,'Adresa80',11,'Smernice'),
	(81,3,'Kucica81',3,'Adresa81',7,'Smernice'),
	(82,2,'Kucica82',8,'Adresa82',6,'Smernice'),
	(83,3,'Kucica83',2,'Adresa83',3,'Smernice'),
	(84,2,'Kucica84',7,'Adresa84',5,'Smernice'),
	(85,1,'Kucica85',1,'Adresa85',17,'Smernice'),
	(86,3,'Kucica86',4,'Adresa86',7,'Smernice'),
	(87,3,'Kucica87',5,'Adresa87',15,'Smernice'),
	(88,1,'Kucica88',2,'Adresa88',16,'Smernice'),
	(89,2,'Kucica89',2,'Adresa89',9,'Smernice'),
	(90,2,'Kucica90',5,'Adresa90',6,'Smernice'),
	(91,2,'Kucica91',5,'Adresa91',7,'Smernice'),
	(92,1,'Kucica92',2,'Adresa92',10,'Smernice'),
	(93,2,'Kucica93',1,'Adresa93',2,'Smernice'),
	(94,2,'Kucica94',2,'Adresa94',9,'Smernice'),
	(95,2,'Kucica95',4,'Adresa95',2,'Smernice'),
	(96,1,'Kucica96',1,'Adresa96',2,'Smernice'),
	(97,2,'Kucica97',2,'Adresa97',8,'Smernice'),
	(98,3,'Kucica98',2,'Adresa98',2,'Smernice'),
	(99,2,'Kucica99',7,'Adresa99',3,'Smernice'),
	(100,3,'Kucica100',6,'Adresa100',14,'Smernice'),
	(101,3,'Kucica101',2,'Adresa101',13,'Smernice'),
	(102,3,'Kucica102',4,'Adresa102',5,'Smernice'),
	(103,1,'Kucica103',2,'Adresa103',18,'Smernice'),
	(104,1,'Kucica104',8,'Adresa104',7,'Smernice'),
	(105,1,'Kucica105',3,'Adresa105',7,'Smernice'),
	(106,3,'Kucica106',5,'Adresa106',14,'Smernice'),
	(107,2,'Kucica107',4,'Adresa107',3,'Smernice'),
	(108,3,'Kucica108',3,'Adresa108',8,'Smernice'),
	(109,1,'Kucica109',1,'Adresa109',10,'Smernice'),
	(110,2,'Kucica110',5,'Adresa110',9,'Smernice'),
	(111,2,'Kucica111',7,'Adresa111',8,'Smernice'),
	(112,3,'Kucica112',6,'Adresa112',1,'Smernice'),
	(113,3,'Kucica113',5,'Adresa113',2,'Smernice'),
	(114,1,'Kucica114',6,'Adresa114',17,'Smernice'),
	(115,1,'Kucica115',6,'Adresa115',7,'Smernice'),
	(116,3,'Kucica116',2,'Adresa116',17,'Smernice'),
	(117,2,'Kucica117',4,'Adresa117',5,'Smernice'),
	(118,2,'Kucica118',7,'Adresa118',6,'Smernice'),
	(119,1,'Kucica119',4,'Adresa119',19,'Smernice'),
	(120,3,'Kucica120',8,'Adresa120',7,'Smernice');


INSERT INTO Poseduje_usluge VALUES
	(4,5,250,1000),
	(8,1,250,1000),
	(40,5,250,1000),
	(4,1,250,1000),
	(43,4,250,1000),
	(109,2,250,1000),
	(79,1,250,1000),
	(22,3,250,1000),
	(72,2,250,1000),
	(86,2,250,1000),
	(95,1,250,1000),
	(25,1,250,1000),
	(24,5,250,1000),
	(34,2,250,1000),
	(59,5,250,1000),
	(8,4,250,1000),
	(32,3,250,1000),
	(39,4,250,1000),
	(106,5,250,1000),
	(103,2,250,1000),
	(120,5,250,1000),
	(10,1,250,1000),
	(39,2,250,1000),
	(67,1,250,1000),
	(51,3,250,1000),
	(5,3,250,1000),
	(69,1,250,1000),
	(85,1,250,1000),
	(107,2,250,1000),
	(82,4,250,1000),
	(67,3,250,1000),
	(68,2,250,1000),
	(13,1,250,1000),
	(105,2,250,1000),
	(91,3,250,1000),
	(44,4,250,1000),
	(61,3,250,1000),
	(4,2,250,1000),
	(118,1,250,1000),
	(74,5,250,1000),
	(84,2,250,1000),
	(55,3,250,1000),
	(70,4,250,1000),
	(115,2,250,1000),
	(12,4,250,1000),
	(17,3,250,1000),
	(31,1,250,1000),
	(100,3,250,1000),
	(38,4,250,1000);

INSERT INTO Klijent VALUES 
	(1,'Klijent1','Klijent1','Adresa1',4,'0658923541','email1@gmail.com','FALSE'),
	(2,'Klijent2','Klijent2','Adresa2',2,'0658923541','email2@gmail.com','TRUE'),
	(3,'Klijent3','Klijent3','Adresa3',1,'0658923541','email3@gmail.com','FALSE'),
	(4,'Klijent4','Klijent4','Adresa4',2,'0658923541','email4@gmail.com','TRUE'),
	(5,'Klijent5','Klijent5','Adresa5',4,'0658923541','email5@gmail.com','FALSE'),
	(6,'Klijent6','Klijent6','Adresa6',5,'0658923541','email6@gmail.com','TRUE'),
	(7,'Klijent7','Klijent7','Adresa7',2,'0658923541','email7@gmail.com','TRUE'),
	(8,'Klijent8','Klijent8','Adresa8',5,'0658923541','email8@gmail.com','TRUE'),
	(9,'Klijent9','Klijent9','Adresa9',3,'0658923541','email9@gmail.com','FALSE'),
	(10,'Klijent10','Klijent10','Adresa10',1,'0658923541','email10@gmail.com','TRUE'),
	(11,'Klijent11','Klijent11','Adresa11',3,'0658923541','email11@gmail.com','TRUE'),
	(12,'Klijent12','Klijent12','Adresa12',2,'0658923541','email12@gmail.com','TRUE'),
	(13,'Klijent13','Klijent13','Adresa13',1,'0658923541','email13@gmail.com','TRUE'),
	(14,'Klijent14','Klijent14','Adresa14',2,'0658923541','email14@gmail.com','TRUE'),
	(15,'Klijent15','Klijent15','Adresa15',2,'0658923541','email15@gmail.com','FALSE'),
	(16,'Klijent16','Klijent16','Adresa16',2,'0658923541','email16@gmail.com','TRUE'),
	(17,'Klijent17','Klijent17','Adresa17',4,'0658923541','email17@gmail.com','TRUE'),
	(18,'Klijent18','Klijent18','Adresa18',1,'0658923541','email18@gmail.com','FALSE'),
	(19,'Klijent19','Klijent19','Adresa19',4,'0658923541','email19@gmail.com','TRUE'),
	(20,'Klijent20','Klijent20','Adresa20',5,'0658923541','email20@gmail.com','FALSE'),
	(21,'Klijent21','Klijent21','Adresa21',2,'0658923541','email21@gmail.com','FALSE'),
	(22,'Klijent22','Klijent22','Adresa22',4,'0658923541','email22@gmail.com','FALSE'),
	(23,'Klijent23','Klijent23','Adresa23',2,'0658923541','email23@gmail.com','TRUE'),
	(24,'Klijent24','Klijent24','Adresa24',5,'0658923541','email24@gmail.com','FALSE'),
	(25,'Klijent25','Klijent25','Adresa25',5,'0658923541','email25@gmail.com','TRUE'),
	(26,'Klijent26','Klijent26','Adresa26',3,'0658923541','email26@gmail.com','FALSE'),
	(27,'Klijent27','Klijent27','Adresa27',3,'0658923541','email27@gmail.com','FALSE'),
	(28,'Klijent28','Klijent28','Adresa28',5,'0658923541','email28@gmail.com','TRUE'),
	(29,'Klijent29','Klijent29','Adresa29',2,'0658923541','email29@gmail.com','FALSE'),
	(30,'Klijent30','Klijent30','Adresa30',2,'0658923541','email30@gmail.com','FALSE'),
	(31,'Klijent31','Klijent31','Adresa31',3,'0658923541','email31@gmail.com','TRUE'),
	(32,'Klijent32','Klijent32','Adresa32',5,'0658923541','email32@gmail.com','TRUE'),
	(33,'Klijent33','Klijent33','Adresa33',2,'0658923541','email33@gmail.com','FALSE'),
	(34,'Klijent34','Klijent34','Adresa34',4,'0658923541','email34@gmail.com','TRUE'),
	(35,'Klijent35','Klijent35','Adresa35',2,'0658923541','email35@gmail.com','TRUE'),
	(36,'Klijent36','Klijent36','Adresa36',4,'0658923541','email36@gmail.com','TRUE'),
	(37,'Klijent37','Klijent37','Adresa37',4,'0658923541','email37@gmail.com','TRUE'),
	(38,'Klijent38','Klijent38','Adresa38',4,'0658923541','email38@gmail.com','FALSE'),
	(39,'Klijent39','Klijent39','Adresa39',4,'0658923541','email39@gmail.com','TRUE'),
	(40,'Klijent40','Klijent40','Adresa40',2,'0658923541','email40@gmail.com','TRUE'),
	(41,'Klijent41','Klijent41','Adresa41',3,'0658923541','email41@gmail.com','FALSE'),
	(42,'Klijent42','Klijent42','Adresa42',1,'0658923541','email42@gmail.com','FALSE'),
	(43,'Klijent43','Klijent43','Adresa43',2,'0658923541','email43@gmail.com','FALSE'),
	(44,'Klijent44','Klijent44','Adresa44',4,'0658923541','email44@gmail.com','TRUE'),
	(45,'Klijent45','Klijent45','Adresa45',2,'0658923541','email45@gmail.com','FALSE'),
	(46,'Klijent46','Klijent46','Adresa46',3,'0658923541','email46@gmail.com','FALSE'),
	(47,'Klijent47','Klijent47','Adresa47',5,'0658923541','email47@gmail.com','TRUE'),
	(48,'Klijent48','Klijent48','Adresa48',3,'0658923541','email48@gmail.com','TRUE'),
	(49,'Klijent49','Klijent49','Adresa49',5,'0658923541','email49@gmail.com','FALSE'),
	(50,'Klijent50','Klijent50','Adresa50',4,'0658923541','email50@gmail.com','FALSE');


INSERT INTO Rezervacija VALUES
	




/*Foreign keys*/
ALTER TABLE Rezervacija ADD CONSTRAINT FK_Rezervacija_klijenID FOREIGN KEY (klijentID) REFERENCES Klijent(klijentID) ON DELETE CASCADE;
ALTER TABLE Rezervacija ADD CONSTRAINT FK_Rezervacija_kucicaID FOREIGN KEY (kucicaID) REFERENCES Kucica(kucicaID) ON DELETE CASCADE;
ALTER TABLE Kucica ADD CONSTRAINT FK_Kucica_kategorijaID FOREIGN KEY (kategorijaID) REFERENCES Kategorija(kategorijaID) ON DELETE CASCADE;
ALTER TABLE Kucica ADD CONSTRAINT FK_Kucica_seloID FOREIGN KEY (seloID) REFERENCES Selo(seloID) ON DELETE CASCADE;
ALTER TABLE SELO ADD CONSTRAINT FK_Selo_gradID FOREIGN KEY (gradID) REFERENCES Grad(gradID) ON DELETE CASCADE;
ALTER TABLE Klijent ADD CONSTRAINT FK_Klijent_gradID FOREIGN KEY (gradID) REFERENCES Grad(gradID);
ALTER TABLE Grad ADD CONSTRAINT FK_Grad_regionID FOREIGN KEY (regionID) REFERENCES Region(regionID) ON DELETE CASCADE;
ALTER TABLE Poseduje_usluge ADD CONSTRAINT FK_Poseduje_usluge_kucicaID FOREIGN KEY (kucicaID) REFERENCES Kucica(kucicaID) ON DELETE CASCADE;
ALTER TABLE Poseduje_usluge ADD CONSTRAINT FK_Poseduje_usluge_uslugaID FOREIGN KEY (uslugaID) REFERENCES Usluga(uslugaID) ON DELETE CASCADE;





/*USE master;
DROP DATABASE A4;*/