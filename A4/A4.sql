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

ALTER TABLE Rezervacija ADD CONSTRAINT PK_Rezervacija PRIMARY KEY (Rbr,kucicaID,klijentID);
ALTER TABLE Region ADD CONSTRAINT PK_Region PRIMARY KEY(regionID);
ALTER TABLE Selo ADD CONSTRAINT PK_Selo PRIMARY KEY (seloID);
ALTER TABLE Grad ADD CONSTRAINT PK_Grad PRIMARY KEY (gradID);
ALTER TABLE Klijent ADD CONSTRAINT PK_Klijent PRIMARY KEY (KlijentID);
ALTER TABLE Kucica ADD CONSTRAINT PK_Kucica PRIMARY KEY (kucicaID);
ALTER TABLE Kategorija ADD CONSTRAINT PK_Kategorija PRIMARY KEY (kategorijaID);

ALTER TABLE Rezervacija ADD CONSTRAINT FK_Rezervacija_klijenID FOREIGN KEY (klijentID) REFERENCES Klijent(klijentID) ON DELETE CASCADE;
ALTER TABLE Rezervacija ADD CONSTRAINT FK_Rezervacija_kucicaID FOREIGN KEY (kucicaID) REFERENCES Kucica(kucicaID) ON DELETE CASCADE;
ALTER TABLE Kucica ADD CONSTRAINT FK_Kucica_kategorijaID FOREIGN KEY (kategorijaID) REFERENCES Kategorija(kategorijaID) ON DELETE CASCADE;
ALTER TABLE Kucica ADD CONSTRAINT FK_Kucica_seloID FOREIGN KEY (seloID) REFERENCES Selo(seloID) ON DELETE CASCADE;
ALTER TABLE SELO ADD CONSTRAINT FK_Selo_gradID FOREIGN KEY (gradID) REFERENCES Grad(gradID) ON DELETE CASCADE;
ALTER TABLE Klijent ADD CONSTRAINT FK_Klijent_gradID FOREIGN KEY (gradID) REFERENCES Grad(gradID);
ALTER TABLE Grad ADD CONSTRAINT FK_Grad_regionID FOREIGN KEY (regionID) REFERENCES Region(regionID) ON DELETE CASCADE;




/*USE master;
DROP DATABASE A4;*/