CREATE DATABASE A3;
USE A3;

CREATE TABLE Kvalifikacija(
	kvalifikacijaID int not null,
	naziv varchar(50),
	koeficijent int
);

CREATE TABLE Radnik (
	radnikID int not null,
	ime varchar(30),
	prezime varchar(45),
	datum_rodjenja date,
	datum_zaposlenja date,
	kvalifikacijaID int,
	telefon varchar(35)	
);

CREATE TABLE Angazman(
	radnikID int not null,
	projekatID int not null,
	datum_angazovanja date not null,  
	broj_sati int,
	opis_posla varchar(100)
);

CREATE TABLE Projekat(
	projekatID int not null,
	naziv varchar(50),
	datum_pocetka date,
	budzet int,
	projekat_zavrsen varchar(5),
	opis varchar(100)
);	

CREATE TABLE Istorija_rm_radnika(
	radnikID int not null,
	radno_mestoID int not null,
	datum_pocetka date not null,
	datum_zavrsetka date
);

CREATE TABLE Radno_mesto(
	radno_mestoID int not null,
	naziv varchar(50),
	opis varchar(100),
	pocetna_plata int,
	najvisa_plata int	
);

CREATE TABLE Podizvodjac(
	podizvodjacID int not null,
	naziv varchar(30),
	telefon varchar(35),
	broj_radnika int
);

CREATE TABLE Angazman_podizvodjaca(
	podizvodjacID int not null,
	projekatID int not null,
	datum_angazovanja date not null,  
	datum_kraja_angazovanja date 
);



/*Primary keys*/
ALTER TABLE Kvalifikacija ADD CONSTRAINT PK_Kvalifikacija PRIMARY KEY (kvalifikacijaID);
ALTER TABLE Radnik ADD CONSTRAINT PK_Radnik PRIMARY KEY (radnikID);
ALTER TABLE Podizvodjac ADD CONSTRAINT PK_Proizvodjac PRIMARY KEY (podizvodjacID);
ALTER TABLE Angazman ADD CONSTRAINT PK_Angazman PRIMARY KEY (radnikID, projekatID, datum_angazovanja);
ALTER TABLE Projekat ADD CONSTRAINT PK_Projekat PRIMARY KEY (projekatID);
ALTER TABLE Istorija_rm_radnika ADD CONSTRAINT PK_Istorija_rm_radnika PRIMARY KEY (radnikID, radno_mestoID, datum_pocetka);
ALTER TABLE Radno_mesto ADD CONSTRAINT PK_Radno_mesto PRIMARY KEY (radno_mestoID);
ALTER TABLE Angazman_podizvodjaca ADD CONSTRAINT PK_Angazman_podizvodjaca PRIMARY KEY (podizvodjacID,projekatID,datum_angazovanja);

/*Constraints*/
ALTER TABLE Angazman_podizvodjaca ADD CONSTRAINT Angazman_podizvodjaca_datum_angazovanja CHECK(datum_angazovanja<datum_kraja_angazovanja);
ALTER TABLE Angazman_podizvodjaca ADD CONSTRAINT Angazman_podizvodjaca_datum_angazovanja_defautl DEFAULT GETDATE()  FOR datum_angazovanja;
ALTER TABLE Angazman_podizvodjaca ADD CONSTRAINT Angazman_podizvodjaca_datum_kraja_angazovanja_defautl DEFAULT DATEFROMPARTS(YEAR(GETDATE()), 12, 31) FOR datum_kraja_angazovanja;


INSERT INTO Kvalifikacija VALUES
	(1,'Kvalif1',20),
	(2,'Kvalif2',21),
	(3,'Kvalif3',22);

INSERT INTO Radnik VALUES
	(1,'Radnik1','Radnik1','1991.01.01','2009.05.05',1,'0611231231'),
	(2,'Radnik2','Radnik2','1992.02.10','2010.01.11',1,'0611231232'),
	(3,'Radnik3','Radnik3','1993.11.08','2011.02.12',2,'0611231233'),
	(4,'Radnik4','Radnik4','1994.12.05','2012.03.13',3,'0611231234'),
	(5,'Radnik5','Radnik5','1995.06.11','2013.04.14',2,'0611231235'),
	(6,'Radnik6','Radnik6','1991.01.01','2009.05.05',1,'0611231231'),
	(7,'Radnik7','Radnik7','1992.02.10','2010.01.11',1,'0611231232'),
	(8,'Radnik8','Radnik8','1993.11.08','2011.02.12',2,'0611231233'),
	(9,'Radnik9','Radnik9','1994.12.05','2012.03.13',3,'0611231234'),
	(10,'Radnik10','Radnik10','1995.06.11','2013.04.14',2,'0611231235'),
	(11,'Radnik11','Radnik11','1991.01.01','2009.05.05',1,'0611231231'),
	(12,'Radnik12','Radnik12','1992.02.10','2010.01.11',1,'0611231232'),
	(13,'Radnik13','Radnik13','1993.11.08','2011.02.12',2,'0611231233'),
	(14,'Radnik14','Radnik14','1994.12.05','2012.03.13',3,'0611231234'),
	(15,'Radnik15','Radnik15','1995.06.11','2013.04.14',2,'0611231235'),
	(16,'Radnik16','Radnik16','1991.01.01','2009.05.05',1,'0611231231'),
	(17,'Radnik17','Radnik17','1992.02.10','2010.01.11',1,'0611231232'),
	(18,'Radnik18','Radnik18','1993.11.08','2011.02.12',2,'0611231233'),
	(19,'Radnik19','Radnik19','1994.12.05','2012.03.13',3,'0611231234'),
	(20,'Radnik20','Radnik20','1995.06.11','2013.04.14',2,'0611231235'),
	(21,'Radnik21','Radnik21','1991.01.01','2009.05.05',1,'0611231231'),
	(22,'Radnik22','Radnik22','1992.02.10','2010.01.11',1,'0611231232'),
	(23,'Radnik23','Radnik23','1993.11.08','2011.02.12',2,'0611231233'),
	(24,'Radnik24','Radnik24','1994.12.05','2012.03.13',3,'0611231234'),
	(25,'Radnik25','Radnik25','1995.06.11','2013.04.14',2,'0611231235');

INSERT INTO Podizvodjac VALUES
	(1,'Podizvodjac1','0611231231',5),
	(2,'Podizvodjac2','0611231232',6),
	(3,'Podizvodjac3','0611231233',3),
	(4,'Podizvodjac4','0611231234',8),
	(5,'Podizvodjac5','0611231235',12);

INSERT INTO Radno_mesto VALUES
	(1,'Radno Mesto 1','Opis Radno mesto ',50000,150000),
	(2,'Radno Mesto 2','Opis Radno mesto ',70000,250000),
	(3,'Radno Mesto 3','Opis Radno mesto ',60000,220000);

INSERT INTO Projekat VALUES
	(1,'Projekat1','2007.11.15',150000,'TRUE','Opis projekta'),
	(2,'Projekat2','2008.11.15',1100000,'TRUE','Opis projekta'),
	(3,'Projekat3','2009.11.15',1120000,'FALSE','Opis projekta'),
	(4,'Projekat4','2012.11.15',11110000,'FALSE','Opis projekta'),
	(5,'Projekat5','2016.11.15',1150000,'TRUE','Opis projekta'),
	(6,'Projekat6','2017.11.15',11110000,'TRUE','Opis projekta'),
	(7,'Projekat7','2018.11.15',11110000,'TRUE','Opis projekta'),
	(8,'Projekat8','2019.11.15',11110000,'FALSE','Opis projekta'),
	(9,'Projekat9','2021.11.15',11110000,'TRUE','Opis projekta'),
	(10,'Projekat10','2007.11.15',150000,'FALSE','Opis projekta'),
	(11,'Projekat11','2008.11.15',1100000,'FALSE','Opis projekta'),
	(12,'Projekat12','2009.11.15',1120000,'TRUE','Opis projekta'),
	(13,'Projekat13','2012.11.15',11110000,'FALSE','Opis projekta'),
	(14,'Projekat14','2016.11.15',1150000,'TRUE','Opis projekta'),
	(15,'Projekat15','2017.11.15',11110000,'TRUE','Opis projekta'),
	(16,'Projekat16','2018.11.15',11110000,'TRUE','Opis projekta'),
	(17,'Projekat17','2019.11.15',11110000,'FALSE','Opis projekta'),
	(18,'Projekat18','2021.11.15',11110000,'TRUE','Opis projekta'),
	(19,'Projekat19','2007.11.15',150000,'FALSE','Opis projekta'),
	(20,'Projekat20','2008.11.15',1100000,'FALSE','Opis projekta'),
	(21,'Projekat21','2009.11.15',1120000,'TRUE','Opis projekta'),
	(22,'Projekat22','2012.11.15',11110000,'FALSE','Opis projekta'),
	(23,'Projekat23','2016.11.15',1150000,'TRUE','Opis projekta'),
	(24,'Projekat24','2017.11.15',11110000,'TRUE','Opis projekta'),
	(25,'Projekat25','2018.11.15',11110000,'TRUE','Opis projekta');

INSERT INTO Angazman VALUES
	(1,1,'2007.12.15',110,'Opis'),
	(2,2,'2008.12.15',120,'Opis'),
	(3,3,'2009.12.15',130,'Opis'),
	(4,4,'2012.12.15',140,'Opis'),
	(5,5,'2016.12.15',150,'Opis'),
	(6,6,'2017.12.15',160,'Opis'),
	(7,7,'2018.12.15',170,'Opis'),
	(8,8,'2019.12.15',180,'Opis'),
	(9,9,'2021.12.15',190,'Opis'),
	(10,10,'2007.12.15',200,'Opis'),
	(11,11,'2008.12.15',210,'Opis'),
	(12,12,'2009.12.15',220,'Opis'),
	(13,13,'2012.12.15',230,'Opis'),
	(14,14,'2016.12.15',240,'Opis'),
	(15,15,'2017.12.15',250,'Opis'),
	(16,16,'2018.12.15',260,'Opis'),
	(17,17,'2019.12.15',270,'Opis'),
	(18,18,'2021.12.15',280,'Opis'),
	(19,19,'2007.12.15',290,'Opis'),
	(20,20,'2008.12.15',300,'Opis'),
	(21,21,'2009.12.15',310,'Opis'),
	(22,22,'2012.12.15',320,'Opis'),
	(23,23,'2016.12.15',330,'Opis'),
	(24,24,'2017.12.15',340,'Opis'),
	(25,25,'2018.12.15',350,'Opis');


INSERT INTO Angazman_podizvodjaca VALUES
	(1,1,'2007.12.15','2010.12.11'),
	(2,2,'2008.12.15','2010.09.11'),
	(3,3,'2009.12.15','2011.12.11'),
	(2,7,'2018.12.15','2020.12.11'),
	(3,8,'2019.12.15','2021.12.11'),
	(4,9,'2021.12.15','2022.04.11'),
	(5,19,'2007.12.15','2010.12.11'),
	(1,20,'2008.12.15','2010.09.11'),
	(2,21,'2009.12.15','2011.12.11'),
	(5,15,'2017.12.15','2018.12.11'),
	(1,16,'2018.12.15','2020.12.11'),
	(2,17,'2019.12.15','2021.12.11'),
	(3,18,'2021.12.15','2022.04.11');

INSERT INTO Istorija_rm_radnika VALUES
	(1,1,'2009.05.05',NULL),
	(2,3,'2010.01.11','2015.01.11'),
	(3,2,'2011.02.12','2017.02.12'),
	(4,1,'2012.03.13','2018.03.13'),
	(5,2,'2013.04.14',NULL);

/*Foreign keys*/
ALTER TABLE Radnik ADD CONSTRAINT FK_Radnik_kvalifikacijaID FOREIGN KEY (kvalifikacijaID) REFERENCES Kvalifikacija(kvalifikacijaID);
ALTER TABLE Angazman ADD CONSTRAINT FK_Angazman_radnikID FOREIGN KEY (radnikID) REFERENCES Radnik(radnikID);
ALTER TABLE Istorija_rm_radnika ADD CONSTRAINT FK_Istorija_rm_radnika_radnikID FOREIGN KEY (radnikID) REFERENCES Radnik(radnikID);
ALTER TABLE Angazman ADD CONSTRAINT FK_Angazman_projekaID FOREIGN KEY (projekatID) REFERENCES Projekat(projekatID);
ALTER TABLE Istorija_rm_radnika ADD CONSTRAINT FK_Istorija_rm_radnika_radno_mestoID FOREIGN KEY (radno_mestoID) REFERENCES Radno_mesto(radno_mestoID);
ALTER TABLE Angazman_podizvodjaca ADD CONSTRAINT FK_Angazman_podizvodjaca_projekatID FOREIGN KEY (projekatID) REFERENCES Projekat(projekatID);
ALTER TABLE Angazman_podizvodjaca ADD CONSTRAINT FK_Angazman_podizvodjaca_podizvodjacID FOREIGN KEY (podizvodjacID) REFERENCES Podizvodjac(podizvodjacID);




USE master;
DROP DATABASE A3;