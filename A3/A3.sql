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
	projekat_zavrsen date,
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

ALTER TABLE Kvalifikacija ADD CONSTRAINT PK_Kvalifikacija PRIMARY KEY (kvalifikacijaID);
ALTER TABLE Radnik ADD CONSTRAINT PK_Radnik PRIMARY KEY (radnikID);
ALTER TABLE Angazman ADD CONSTRAINT PK_Angazman PRIMARY KEY (radnikID, projekatID, datum_angazovanja);
ALTER TABLE Projekat ADD CONSTRAINT PK_Projekat PRIMARY KEY (projekatID);
ALTER TABLE Istorija_rm_radnika ADD CONSTRAINT PK_Istorija_rm_radnika PRIMARY KEY (radnikID, radno_mestoID, datum_pocetka);
ALTER TABLE Radno_mesto ADD CONSTRAINT PK_Radno_mesto PRIMARY KEY (radno_mestoID);

ALTER TABLE Radnik ADD CONSTRAINT FK_Radnik_kvalifikacijaID FOREIGN KEY (kvalifikacijaID) REFERENCES Kvalifikacija(kvalifikacijaID);
ALTER TABLE Angazman ADD CONSTRAINT FK_Angazman_radnikID FOREIGN KEY (radnikID) REFERENCES Radnik(radnikID);
ALTER TABLE Istorija_rm_radnika ADD CONSTRAINT FK_Istorija_rm_radnika_radnikID FOREIGN KEY (radnikID) REFERENCES Radnik(radnikID);
ALTER TABLE Angazman ADD CONSTRAINT FK_Angazman_projekaID FOREIGN KEY (projekatID) REFERENCES Projekat(projekatID);
ALTER TABLE Istorija_rm_radnika ADD CONSTRAINT FK_Istorija_rm_radnika_radno_mestoID FOREIGN KEY (radno_mestoID) REFERENCES Radno_mesto(radno_mestoID);