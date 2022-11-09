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

INSERT INTO Klijent VALUES 
	(1,'Klijent1','Klijent1','Adresa1',1,'0658923541','email1@gmail.com','TRUE'),


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

INSERT INTO Grad VALUES 
	(1,'Grad1','123546',15000,178000,1),
	(2,'Grad2','123546',18000,128000,2),
	(3,'Grad3','123546',19000,138000,1),
	(4,'Grad4','123546',12000,158000,2),
	(5,'Grad5','123546',13000,198000,1);

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

INSERT INTO Region VALUES
	(1,'Selo1',1),
	(2,'Selo2',1),
	(3,'Selo3',1),
	(4,'Selo4',2),
	(5,'Selo5',2),
	(6,'Selo1',2),
	(7,'Selo2',2),
	(8,'Selo3',2),
	(9,'Selo4',3),
	(10,'Selo5',3),
	(11,'Selo1',3),
	(12,'Selo2',3),
	(13,'Selo3',3),
	(14,'Selo4',4),
	(15,'Selo5',4),
	(16,'Selo1',4),
	(17,'Selo2',5),
	(18,'Selo3',5),
	(19,'Selo4',5),
	(20,'Selo5',5);

CREATE TABLE Region(
	regionID int not null,
	naziv varchar(50),
	opis text
);

INSERT INTO Region VALUES
	(1,'Region1','opis'),
	(2,'Region2','opis');
	

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