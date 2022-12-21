/*
	CREATE DATABASE A23;
	USE A23;
*/

CREATE TABLE Pretplatnik(
	pretplatnikID int IDENTITY(1,1),
	ime varchar(50),
	prezime varchar(70),
	adresa varchar(100),
	telefon varchar(30),
	lozinka varchar(100)
);

CREATE TABLE Pozorisni_Komad(
	komadID int IDENTITY(1,1),
	naziv varchar(100),
	trajanje int,
	broj_cinova int,
	opis text
);

CREATE TABLE Producent(
	producentID int IDENTITY(1,1),
	ime varchar(50),
	prezime varchar(70)
);

CREATE TABLE Pozorisna_Trupa(
	trupaID int IDENTITY(1,1),
	naziv varchar(50)
);

CREATE TABLE Glumac(
	glumacID int IDENTITY(1,1),
	ime varchar(50),
	prezime varchar(70),
	datum_rodjenja date,
	trupaID int
);

CREATE TABLE Predstava(
	komadID int not null,
	datum date not null,
	broj_prodajnih_mesta int,
	cena_karte float,
	producentID int,
	trupaID int
);

CREATE TABLE Rezervacija(
	rezervacijaID int IDENTITY(1,1),
	datum_rezervisanja date,
	pretplatnikID int,
	komadID int,
	datum date,
	broj_mesta int
);

/*Primary keys*/

ALTER TABLE Pretplatnik ADD CONSTRAINT PK_Pretplatnik PRIMARY KEY (pretplatnikID);
ALTER TABLE Pozorisni_Komad ADD CONSTRAINT PK_Pozorisni_Komad PRIMARY KEY (komadID);
ALTER TABLE Producent ADD CONSTRAINT PK_Producent PRIMARY KEY (producentID);
ALTER TABLE Pozorisna_Trupa ADD CONSTRAINT PK_Pozorisna_Trupa PRIMARY KEY (trupaID);
ALTER TABLE Glumac ADD CONSTRAINT PK_Glumac PRIMARY KEY (glumacID);
ALTER TABLE Predstava ADD CONSTRAINT PK_Predstava PRIMARY KEY (komadID,datum);
ALTER TABLE Rezervacija ADD CONSTRAINT PK_Rezervacija PRIMARY KEY (rezervacijaID);


INSERT INTO Pozorisni_Komad VALUES
	('Komad1',114,4,'opis'),
	('Komad2',144,1,'opis'),
	('Komad3',119,2,'opis'),
	('Komad4',103,3,'opis'),
	('Komad5',112,5,'opis'),
	('Komad6',92,2,'opis'),
	('Komad7',61,3,'opis'),
	('Komad8',131,1,'opis'),
	('Komad9',129,3,'opis'),
	('Komad10',84,1,'opis'),
	('Komad11',147,4,'opis'),
	('Komad12',100,5,'opis'),
	('Komad13',113,3,'opis'),
	('Komad14',108,1,'opis'),
	('Komad15',61,3,'opis'),
	('Komad16',102,3,'opis'),
	('Komad17',61,1,'opis'),
	('Komad18',169,1,'opis'),
	('Komad19',157,5,'opis'),
	('Komad20',176,5,'opis');

INSERT INTO Producent VALUES
	('Producent1','Producent1'),
	('Producent2','Producent2'),
	('Producent3','Producent3'),
	('Producent4','Producent4'),
	('Producent5','Producent5'),
	('Producent6','Producent6'),
	('Producent7','Producent7'),
	('Producent8','Producent8'),
	('Producent9','Producent9'),
	('Producent10','Producent10');

INSERT INTO Pozorisna_Trupa VALUES
	('Trupa1'),
	('Trupa2'),
	('Trupa3'),
	('Trupa4'),
	('Trupa5'),
	('Trupa6'),
	('Trupa7'),
	('Trupa8'),
	('Trupa9'),
	('Trupa10');

INSERT INTO Glumac VALUES
	('Glumac1','Glumac1','1997.6.26',4),
	('Glumac2','Glumac2','1995.7.16',10),
	('Glumac3','Glumac3','1996.8.25',3),
	('Glumac4','Glumac4','1995.7.5',9),
	('Glumac5','Glumac5','1991.8.23',8),
	('Glumac6','Glumac6','1993.4.4',2),
	('Glumac7','Glumac7','1996.7.16',2),
	('Glumac8','Glumac8','1997.9.20',1),
	('Glumac9','Glumac9','1996.5.15',2),
	('Glumac10','Glumac10','1992.5.14',4),
	('Glumac11','Glumac11','1990.7.18',9),
	('Glumac12','Glumac12','1991.7.22',7),
	('Glumac13','Glumac13','1993.6.12',1),
	('Glumac14','Glumac14','1990.4.23',1),
	('Glumac15','Glumac15','1996.3.29',1),
	('Glumac16','Glumac16','1997.4.14',8),
	('Glumac17','Glumac17','1998.8.7',6),
	('Glumac18','Glumac18','1990.3.26',3),
	('Glumac19','Glumac19','1991.4.19',6),
	('Glumac20','Glumac20','1991.9.14',10),
	('Glumac21','Glumac21','1990.7.14',6),
	('Glumac22','Glumac22','1990.7.25',8),
	('Glumac23','Glumac23','1998.4.5',8),
	('Glumac24','Glumac24','1996.5.4',5),
	('Glumac25','Glumac25','1990.5.7',9),
	('Glumac26','Glumac26','1994.5.2',4),
	('Glumac27','Glumac27','1998.8.28',2),
	('Glumac28','Glumac28','1992.4.14',2),
	('Glumac29','Glumac29','1994.4.4',1),
	('Glumac30','Glumac30','1998.3.6',9),
	('Glumac31','Glumac31','1997.8.17',7),
	('Glumac32','Glumac32','1995.5.4',9),
	('Glumac33','Glumac33','1995.6.20',8),
	('Glumac34','Glumac34','1991.4.2',10),
	('Glumac35','Glumac35','1993.8.1',9),
	('Glumac36','Glumac36','1998.4.13',8),
	('Glumac37','Glumac37','1993.4.11',7),
	('Glumac38','Glumac38','1990.4.4',3),
	('Glumac39','Glumac39','1998.4.22',8),
	('Glumac40','Glumac40','1998.6.6',4),
	('Glumac41','Glumac41','1996.3.10',10),
	('Glumac42','Glumac42','1990.8.24',8),
	('Glumac43','Glumac43','1993.9.14',7),
	('Glumac44','Glumac44','1993.4.12',7),
	('Glumac45','Glumac45','1990.3.10',1),
	('Glumac46','Glumac46','1991.3.18',10),
	('Glumac47','Glumac47','1993.3.13',3),
	('Glumac48','Glumac48','1993.9.18',2),
	('Glumac49','Glumac49','1992.5.15',8),
	('Glumac50','Glumac50','1998.7.3',3);

INSERT INTO Pretplatnik VALUES
	('Pretplatnik1','Pretplatnik1','Adresa1','0611234561','Lozinka1'),
	('Pretplatnik2','Pretplatnik2','Adresa2','0611234562','Lozinka2'),
	('Pretplatnik3','Pretplatnik3','Adresa3','0611234563','Lozinka3'),
	('Pretplatnik4','Pretplatnik4','Adresa4','0611234564','Lozinka4'),
	('Pretplatnik5','Pretplatnik5','Adresa5','0611234565','Lozinka5'),
	('Pretplatnik6','Pretplatnik6','Adresa6','0611234566','Lozinka6'),
	('Pretplatnik7','Pretplatnik7','Adresa7','0611234567','Lozinka7'),
	('Pretplatnik8','Pretplatnik8','Adresa8','0611234568','Lozinka8'),
	('Pretplatnik9','Pretplatnik9','Adresa9','0611234569','Lozinka9'),
	('Pretplatnik10','Pretplatnik10','Adresa10','06112345610','Lozinka10'),
	('Pretplatnik11','Pretplatnik11','Adresa11','06112345611','Lozinka11'),
	('Pretplatnik12','Pretplatnik12','Adresa12','06112345612','Lozinka12'),
	('Pretplatnik13','Pretplatnik13','Adresa13','06112345613','Lozinka13'),
	('Pretplatnik14','Pretplatnik14','Adresa14','06112345614','Lozinka14'),
	('Pretplatnik15','Pretplatnik15','Adresa15','06112345615','Lozinka15'),
	('Pretplatnik16','Pretplatnik16','Adresa16','06112345616','Lozinka16'),
	('Pretplatnik17','Pretplatnik17','Adresa17','06112345617','Lozinka17'),
	('Pretplatnik18','Pretplatnik18','Adresa18','06112345618','Lozinka18'),
	('Pretplatnik19','Pretplatnik19','Adresa19','06112345619','Lozinka19'),
	('Pretplatnik20','Pretplatnik20','Adresa20','06112345620','Lozinka20'),
	('Pretplatnik21','Pretplatnik21','Adresa21','06112345621','Lozinka21'),
	('Pretplatnik22','Pretplatnik22','Adresa22','06112345622','Lozinka22'),
	('Pretplatnik23','Pretplatnik23','Adresa23','06112345623','Lozinka23'),
	('Pretplatnik24','Pretplatnik24','Adresa24','06112345624','Lozinka24'),
	('Pretplatnik25','Pretplatnik25','Adresa25','06112345625','Lozinka25'),
	('Pretplatnik26','Pretplatnik26','Adresa26','06112345626','Lozinka26'),
	('Pretplatnik27','Pretplatnik27','Adresa27','06112345627','Lozinka27'),
	('Pretplatnik28','Pretplatnik28','Adresa28','06112345628','Lozinka28'),
	('Pretplatnik29','Pretplatnik29','Adresa29','06112345629','Lozinka29'),
	('Pretplatnik30','Pretplatnik30','Adresa30','06112345630','Lozinka30'),
	('Pretplatnik31','Pretplatnik31','Adresa31','06112345631','Lozinka31'),
	('Pretplatnik32','Pretplatnik32','Adresa32','06112345632','Lozinka32'),
	('Pretplatnik33','Pretplatnik33','Adresa33','06112345633','Lozinka33'),
	('Pretplatnik34','Pretplatnik34','Adresa34','06112345634','Lozinka34'),
	('Pretplatnik35','Pretplatnik35','Adresa35','06112345635','Lozinka35'),
	('Pretplatnik36','Pretplatnik36','Adresa36','06112345636','Lozinka36'),
	('Pretplatnik37','Pretplatnik37','Adresa37','06112345637','Lozinka37'),
	('Pretplatnik38','Pretplatnik38','Adresa38','06112345638','Lozinka38'),
	('Pretplatnik39','Pretplatnik39','Adresa39','06112345639','Lozinka39'),
	('Pretplatnik40','Pretplatnik40','Adresa40','06112345640','Lozinka40'),
	('Pretplatnik41','Pretplatnik41','Adresa41','06112345641','Lozinka41'),
	('Pretplatnik42','Pretplatnik42','Adresa42','06112345642','Lozinka42'),
	('Pretplatnik43','Pretplatnik43','Adresa43','06112345643','Lozinka43'),
	('Pretplatnik44','Pretplatnik44','Adresa44','06112345644','Lozinka44'),
	('Pretplatnik45','Pretplatnik45','Adresa45','06112345645','Lozinka45'),
	('Pretplatnik46','Pretplatnik46','Adresa46','06112345646','Lozinka46'),
	('Pretplatnik47','Pretplatnik47','Adresa47','06112345647','Lozinka47'),
	('Pretplatnik48','Pretplatnik48','Adresa48','06112345648','Lozinka48'),
	('Pretplatnik49','Pretplatnik49','Adresa49','06112345649','Lozinka49'),
	('Pretplatnik50','Pretplatnik50','Adresa50','06112345650','Lozinka50');

INSERT INTO Predstava VALUES
	(16,'2022.5.9',148,382.0,2,1),
	(6,'2022.7.20',121,157.0,4,7),
	(11,'2022.9.10',75,317.0,10,6),
	(16,'2022.6.28',79,252.0,4,5),
	(2,'2022.8.22',98,441.0,4,6),
	(16,'2022.9.26',78,192.0,3,6),
	(3,'2022.9.20',106,327.0,5,9),
	(13,'2022.7.13',57,377.0,6,6),
	(12,'2022.4.14',79,377.0,3,10),
	(15,'2022.4.28',162,487.0,9,4),
	(7,'2022.3.27',68,332.0,6,3),
	(7,'2022.6.21',91,360.0,9,10),
	(9,'2022.7.26',48,484.0,1,3),
	(9,'2022.7.21',84,155.0,9,2),
	(7,'2022.8.23',70,287.0,8,2),
	(11,'2022.5.16',127,292.0,4,2),
	(18,'2022.9.13',62,340.0,4,4),
	(5,'2022.7.29',124,307.0,8,10),
	(14,'2022.3.5',186,289.0,3,3),
	(1,'2022.7.9',77,484.0,4,2),
	(13,'2022.9.24',142,314.0,2,1),
	(10,'2022.9.17',79,365.0,7,5),
	(8,'2022.4.15',117,461.0,6,7),
	(8,'2022.5.25',141,316.0,8,8),
	(19,'2022.8.23',89,252.0,1,5),
	(14,'2022.9.10',36,380.0,7,10),
	(3,'2022.4.10',94,343.0,5,6),
	(8,'2022.6.4',54,174.0,3,4),
	(19,'2022.8.9',171,290.0,8,2),
	(1,'2022.9.8',78,262.0,2,3),
	(8,'2022.6.5',148,303.0,1,2),
	(4,'2022.5.18',90,207.0,5,4),
	(4,'2022.6.15',146,370.0,5,8),
	(13,'2022.5.20',120,170.0,2,1),
	(18,'2022.9.28',31,401.0,4,3),
	(10,'2022.5.10',40,342.0,5,8),
	(5,'2022.4.4',179,267.0,3,7),
	(15,'2022.9.24',176,492.0,8,4),
	(8,'2022.8.9',83,483.0,6,5),
	(1,'2022.7.3',57,269.0,1,1),
	(14,'2022.7.11',103,438.0,3,1),
	(14,'2022.9.28',149,151.0,2,9),
	(2,'2022.8.28',90,402.0,8,6),
	(13,'2022.4.15',165,466.0,5,8),
	(6,'2022.5.5',30,362.0,7,5),
	(12,'2022.7.22',195,483.0,4,6),
	(12,'2022.7.21',45,358.0,2,2),
	(11,'2022.4.18',193,264.0,4,7),
	(17,'2022.6.10',59,210.0,10,8),
	(8,'2022.9.24',94,481.0,8,6);

INSERT INTO Rezervacija VALUES
	('2022.5.7',21,16,'2022.5.9',147),
	('2022.7.18',28,6,'2022.7.20',120),
	('2022.7.18',44,6,'2022.7.20',119),
	('2022.7.18',8,6,'2022.7.20',118),
	('2022.7.18',30,6,'2022.7.20',117),
	('2022.9.8',12,11,'2022.9.10',74),
	('2022.9.8',8,11,'2022.9.10',73),
	('2022.9.8',20,11,'2022.9.10',72),
	('2022.9.8',36,11,'2022.9.10',71),
	('2022.9.8',20,11,'2022.9.10',70),
	('2022.9.8',10,11,'2022.9.10',69),
	('2022.9.8',46,11,'2022.9.10',68),
	('2022.6.26',48,16,'2022.6.28',78),
	('2022.6.26',29,16,'2022.6.28',77),
	('2022.6.26',31,16,'2022.6.28',76),
	('2022.6.26',9,16,'2022.6.28',75),
	('2022.6.26',38,16,'2022.6.28',74),
	('2022.6.26',25,16,'2022.6.28',73),
	('2022.6.26',5,16,'2022.6.28',72),
	('2022.6.26',26,16,'2022.6.28',71),
	('2022.8.20',27,2,'2022.8.22',97),
	('2022.8.20',25,2,'2022.8.22',96),
	('2022.8.20',26,2,'2022.8.22',95),
	('2022.8.20',8,2,'2022.8.22',94),
	('2022.8.20',16,2,'2022.8.22',93),
	('2022.8.20',48,2,'2022.8.22',92),
	('2022.8.20',6,2,'2022.8.22',91),
	('2022.8.20',38,2,'2022.8.22',90),
	('2022.8.20',4,2,'2022.8.22',89),
	('2022.9.24',18,16,'2022.9.26',77),
	('2022.9.24',45,16,'2022.9.26',76),
	('2022.9.24',19,16,'2022.9.26',75),
	('2022.9.24',45,16,'2022.9.26',74),
	('2022.9.24',38,16,'2022.9.26',73),
	('2022.9.24',4,16,'2022.9.26',72),
	('2022.9.18',21,3,'2022.9.20',105),
	('2022.9.18',44,3,'2022.9.20',104),
	('2022.9.18',14,3,'2022.9.20',103),
	('2022.9.18',50,3,'2022.9.20',102),
	('2022.9.18',29,3,'2022.9.20',101),
	('2022.9.18',33,3,'2022.9.20',100),
	('2022.9.18',32,3,'2022.9.20',99),
	('2022.9.18',26,3,'2022.9.20',98),
	('2022.7.11',15,13,'2022.7.13',56),
	('2022.7.11',40,13,'2022.7.13',55),
	('2022.7.11',37,13,'2022.7.13',54),
	('2022.7.11',34,13,'2022.7.13',53),
	('2022.7.11',26,13,'2022.7.13',52),
	('2022.7.11',32,13,'2022.7.13',51),
	('2022.7.11',38,13,'2022.7.13',50),
	('2022.4.12',8,12,'2022.4.14',78),
	('2022.4.26',11,15,'2022.4.28',161),
	('2022.4.26',19,15,'2022.4.28',160),
	('2022.4.26',46,15,'2022.4.28',159),
	('2022.4.26',12,15,'2022.4.28',158),
	('2022.4.26',16,15,'2022.4.28',157),
	('2022.4.26',3,15,'2022.4.28',156),
	('2022.4.26',47,15,'2022.4.28',155),
	('2022.4.26',44,15,'2022.4.28',154),
	('2022.4.26',10,15,'2022.4.28',153),
	('2022.4.26',18,15,'2022.4.28',152),
	('2022.3.25',44,7,'2022.3.27',67),
	('2022.3.25',10,7,'2022.3.27',66),
	('2022.3.25',6,7,'2022.3.27',65),
	('2022.3.25',21,7,'2022.3.27',64),
	('2022.6.19',15,7,'2022.6.21',90),
	('2022.6.19',28,7,'2022.6.21',89),
	('2022.6.19',22,7,'2022.6.21',88),
	('2022.6.19',20,7,'2022.6.21',87),
	('2022.6.19',27,7,'2022.6.21',86),
	('2022.6.19',3,7,'2022.6.21',85),
	('2022.6.19',7,7,'2022.6.21',84),
	('2022.6.19',13,7,'2022.6.21',83),
	('2022.6.19',37,7,'2022.6.21',82),
	('2022.6.19',19,7,'2022.6.21',81),
	('2022.7.24',34,9,'2022.7.26',47),
	('2022.7.24',20,9,'2022.7.26',46),
	('2022.7.24',27,9,'2022.7.26',45),
	('2022.7.24',39,9,'2022.7.26',44),
	('2022.7.24',5,9,'2022.7.26',43),
	('2022.7.24',49,9,'2022.7.26',42),
	('2022.7.24',40,9,'2022.7.26',41),
	('2022.7.19',18,9,'2022.7.21',83),
	('2022.7.19',40,9,'2022.7.21',82),
	('2022.7.19',7,9,'2022.7.21',81),
	('2022.7.19',1,9,'2022.7.21',80),
	('2022.7.19',14,9,'2022.7.21',79),
	('2022.7.19',5,9,'2022.7.21',78),
	('2022.7.19',5,9,'2022.7.21',77),
	('2022.7.19',7,9,'2022.7.21',76),
	('2022.8.21',34,7,'2022.8.23',69),
	('2022.8.21',13,7,'2022.8.23',68),
	('2022.8.21',30,7,'2022.8.23',67),
	('2022.8.21',39,7,'2022.8.23',66),
	('2022.8.21',40,7,'2022.8.23',65),
	('2022.8.21',17,7,'2022.8.23',64),
	('2022.8.21',22,7,'2022.8.23',63),
	('2022.5.14',18,11,'2022.5.16',126),
	('2022.5.14',31,11,'2022.5.16',125),
	('2022.5.14',12,11,'2022.5.16',124),
	('2022.5.14',14,11,'2022.5.16',123),
	('2022.5.14',12,11,'2022.5.16',122),
	('2022.5.14',20,11,'2022.5.16',121),
	('2022.5.14',30,11,'2022.5.16',120),
	('2022.5.14',16,11,'2022.5.16',119),
	('2022.9.11',20,18,'2022.9.13',61),
	('2022.9.11',10,18,'2022.9.13',60),
	('2022.7.27',26,5,'2022.7.29',123),
	('2022.7.27',37,5,'2022.7.29',122),
	('2022.7.27',24,5,'2022.7.29',121),
	('2022.7.27',11,5,'2022.7.29',120),
	('2022.7.27',29,5,'2022.7.29',119),
	('2022.7.27',26,5,'2022.7.29',118),
	('2022.3.3',43,14,'2022.3.5',185),
	('2022.3.3',48,14,'2022.3.5',184),
	('2022.3.3',12,14,'2022.3.5',183),
	('2022.3.3',11,14,'2022.3.5',182),
	('2022.7.7',3,1,'2022.7.9',76),
	('2022.7.7',40,1,'2022.7.9',75),
	('2022.7.7',28,1,'2022.7.9',74),
	('2022.7.7',49,1,'2022.7.9',73),
	('2022.9.22',39,13,'2022.9.24',141),
	('2022.9.22',12,13,'2022.9.24',140),
	('2022.9.22',11,13,'2022.9.24',139),
	('2022.9.15',48,10,'2022.9.17',78),
	('2022.4.13',16,8,'2022.4.15',116),
	('2022.5.23',10,8,'2022.5.25',140),
	('2022.5.23',35,8,'2022.5.25',139),
	('2022.5.23',42,8,'2022.5.25',138),
	('2022.5.23',50,8,'2022.5.25',137),
	('2022.5.23',4,8,'2022.5.25',136),
	('2022.5.23',49,8,'2022.5.25',135),
	('2022.5.23',20,8,'2022.5.25',134),
	('2022.8.21',27,19,'2022.8.23',88),
	('2022.9.8',29,14,'2022.9.10',35),
	('2022.9.8',5,14,'2022.9.10',34),
	('2022.9.8',45,14,'2022.9.10',33),
	('2022.9.8',41,14,'2022.9.10',32),
	('2022.9.8',46,14,'2022.9.10',31),
	('2022.9.8',16,14,'2022.9.10',30),
	('2022.9.8',36,14,'2022.9.10',29),
	('2022.9.8',44,14,'2022.9.10',28),
	('2022.9.8',43,14,'2022.9.10',27),
	('2022.4.8',37,3,'2022.4.10',93),
	('2022.4.8',2,3,'2022.4.10',92),
	('2022.4.8',15,3,'2022.4.10',91),
	('2022.4.8',25,3,'2022.4.10',90),
	('2022.4.8',18,3,'2022.4.10',89),
	('2022.4.8',33,3,'2022.4.10',88),
	('2022.4.8',48,3,'2022.4.10',87),
	('2022.4.8',26,3,'2022.4.10',86),
	('2022.4.8',22,3,'2022.4.10',85),
	('2022.4.8',26,3,'2022.4.10',84),
	('2022.6.2',2,8,'2022.6.4',53),
	('2022.6.2',43,8,'2022.6.4',52),
	('2022.6.2',2,8,'2022.6.4',51),
	('2022.6.2',30,8,'2022.6.4',50),
	('2022.6.2',11,8,'2022.6.4',49),
	('2022.6.2',5,8,'2022.6.4',48),
	('2022.8.7',48,19,'2022.8.9',170),
	('2022.8.7',45,19,'2022.8.9',169),
	('2022.8.7',28,19,'2022.8.9',168),
	('2022.8.7',5,19,'2022.8.9',167),
	('2022.8.7',38,19,'2022.8.9',166),
	('2022.8.7',12,19,'2022.8.9',165),
	('2022.8.7',44,19,'2022.8.9',164),
	('2022.9.6',8,1,'2022.9.8',77),
	('2022.9.6',9,1,'2022.9.8',76),
	('2022.6.3',36,8,'2022.6.5',147),
	('2022.6.3',34,8,'2022.6.5',146),
	('2022.6.3',2,8,'2022.6.5',145),
	('2022.6.3',36,8,'2022.6.5',144),
	('2022.6.3',33,8,'2022.6.5',143),
	('2022.6.3',20,8,'2022.6.5',142),
	('2022.6.3',19,8,'2022.6.5',141),
	('2022.6.3',10,8,'2022.6.5',140),
	('2022.6.3',9,8,'2022.6.5',139),
	('2022.5.16',39,4,'2022.5.18',89),
	('2022.5.16',2,4,'2022.5.18',88),
	('2022.5.16',42,4,'2022.5.18',87),
	('2022.5.16',1,4,'2022.5.18',86),
	('2022.5.16',35,4,'2022.5.18',85),
	('2022.5.16',13,4,'2022.5.18',84),
	('2022.5.16',31,4,'2022.5.18',83),
	('2022.5.16',21,4,'2022.5.18',82),
	('2022.5.16',33,4,'2022.5.18',81),
	('2022.5.16',31,4,'2022.5.18',80),
	('2022.6.13',25,4,'2022.6.15',145),
	('2022.6.13',32,4,'2022.6.15',144),
	('2022.6.13',47,4,'2022.6.15',143),
	('2022.6.13',41,4,'2022.6.15',142),
	('2022.6.13',42,4,'2022.6.15',141),
	('2022.6.13',3,4,'2022.6.15',140),
	('2022.6.13',23,4,'2022.6.15',139),
	('2022.6.13',43,4,'2022.6.15',138),
	('2022.6.13',31,4,'2022.6.15',137),
	('2022.5.18',35,13,'2022.5.20',119),
	('2022.5.18',50,13,'2022.5.20',118),
	('2022.5.18',40,13,'2022.5.20',117),
	('2022.5.18',5,13,'2022.5.20',116),
	('2022.5.18',12,13,'2022.5.20',115),
	('2022.5.18',37,13,'2022.5.20',114),
	('2022.5.18',39,13,'2022.5.20',113),
	('2022.5.18',48,13,'2022.5.20',112),
	('2022.5.18',36,13,'2022.5.20',111),
	('2022.5.18',12,13,'2022.5.20',110),
	('2022.9.26',11,18,'2022.9.28',30),
	('2022.9.26',1,18,'2022.9.28',29),
	('2022.9.26',49,18,'2022.9.28',28),
	('2022.9.26',12,18,'2022.9.28',27),
	('2022.9.26',20,18,'2022.9.28',26),
	('2022.9.26',1,18,'2022.9.28',25),
	('2022.9.26',13,18,'2022.9.28',24),
	('2022.9.26',18,18,'2022.9.28',23),
	('2022.9.26',49,18,'2022.9.28',22),
	('2022.5.8',21,10,'2022.5.10',39),
	('2022.4.2',16,5,'2022.4.4',178),
	('2022.4.2',46,5,'2022.4.4',177),
	('2022.4.2',11,5,'2022.4.4',176),
	('2022.9.22',49,15,'2022.9.24',175),
	('2022.8.7',49,8,'2022.8.9',82),
	('2022.8.7',13,8,'2022.8.9',81),
	('2022.8.7',24,8,'2022.8.9',80),
	('2022.8.7',44,8,'2022.8.9',79),
	('2022.8.7',32,8,'2022.8.9',78),
	('2022.8.7',9,8,'2022.8.9',77),
	('2022.7.1',12,1,'2022.7.3',56),
	('2022.7.1',21,1,'2022.7.3',55),
	('2022.7.1',14,1,'2022.7.3',54),
	('2022.7.1',35,1,'2022.7.3',53),
	('2022.7.1',24,1,'2022.7.3',52),
	('2022.7.1',38,1,'2022.7.3',51),
	('2022.7.9',34,14,'2022.7.11',102),
	('2022.7.9',14,14,'2022.7.11',101),
	('2022.7.9',38,14,'2022.7.11',100),
	('2022.9.26',37,14,'2022.9.28',148),
	('2022.8.26',35,2,'2022.8.28',89),
	('2022.8.26',2,2,'2022.8.28',88),
	('2022.8.26',40,2,'2022.8.28',87),
	('2022.8.26',50,2,'2022.8.28',86),
	('2022.4.13',4,13,'2022.4.15',164),
	('2022.4.13',15,13,'2022.4.15',163),
	('2022.4.13',14,13,'2022.4.15',162),
	('2022.4.13',7,13,'2022.4.15',161),
	('2022.4.13',27,13,'2022.4.15',160),
	('2022.5.3',25,6,'2022.5.5',29),
	('2022.5.3',24,6,'2022.5.5',28),
	('2022.5.3',28,6,'2022.5.5',27),
	('2022.5.3',47,6,'2022.5.5',26),
	('2022.5.3',47,6,'2022.5.5',25),
	('2022.5.3',36,6,'2022.5.5',24),
	('2022.7.20',40,12,'2022.7.22',194),
	('2022.7.20',20,12,'2022.7.22',193),
	('2022.7.20',24,12,'2022.7.22',192),
	('2022.7.20',49,12,'2022.7.22',191),
	('2022.7.19',35,12,'2022.7.21',44),
	('2022.7.19',22,12,'2022.7.21',43),
	('2022.7.19',7,12,'2022.7.21',42),
	('2022.4.16',7,11,'2022.4.18',192),
	('2022.6.8',12,17,'2022.6.10',58),
	('2022.6.8',10,17,'2022.6.10',57),
	('2022.6.8',15,17,'2022.6.10',56),
	('2022.9.22',45,8,'2022.9.24',93),
	('2022.9.22',15,8,'2022.9.24',92);


/*Foreign keys*/

ALTER TABLE Glumac ADD CONSTRAINT FK_Glumac_trupaID FOREIGN KEY (trupaID) REFERENCES Pozorisna_Trupa(trupaID);
ALTER TABLE Predstava ADD CONSTRAINT FK_Predstava_trupaID FOREIGN KEY (trupaID) REFERENCES Pozorisna_Trupa(trupaID);
ALTER TABLE Predstava ADD CONSTRAINT FK_Predstava_producentID FOREIGN KEY (producentID) REFERENCES Producent(producentID);
ALTER TABLE Predstava ADD CONSTRAINT FK_Predstava_komadID FOREIGN KEY (komadID) REFERENCES Pozorisni_Komad(komadID);
ALTER TABLE Rezervacija ADD CONSTRAINT FK_Rezervacija_komadID_i_datum FOREIGN KEY (komadID,datum) REFERENCES Predstava(komadID,datum);
ALTER TABLE Rezervacija ADD CONSTRAINT FK_Rezervacija_pretplatnikID FOREIGN KEY (pretplatnikID) REFERENCES Pretplatnik(pretplatnikID);

/*Dopuna*/

CREATE TABLE Autor(
	autorID int IDENTITY(1,1),
	ime varchar(50),
	prezime varchar(70),
	datum_rodjenja date,
	godina_izdanja_dela int
);

ALTER TABLE Autor ADD CONSTRAINT PK_Autor PRIMARY KEY (autorID);
ALTER TABLE Pozorisni_Komad ADD autorID int;
ALTER TABLE Pozorisni_Komad ADD CONSTRAINT FK_Pozorisni_Komad_autorID FOREIGN KEY (autorID) REFERENCES Autor(autorID);
ALTER TABLE Pretplatnik ADD ostvareni_poeni int;


/*
	USE master;
	DROP DATABASE A23;
*/