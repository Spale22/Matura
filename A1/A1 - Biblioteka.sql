CREATE DATABASE Biblioteka;

USE Biblioteka;

/*Table creation*/
CREATE TABLE Citalac(
	CitalacID int not null,
	MaticniBroj varchar(20),
	Ime varchar(20),
	Prezime varchar(35),
	Adresa varchar(40)
);

CREATE TABLE Knjiga(
	KnjigaID int not null,
	UDK int,
	ISBN varchar(30),
	Naziv varchar(30)
);

CREATE TABLE Napisali(
	AutorID int not null,
	KnjigaID int not null
);

CREATE TABLE Autor(
	AutorID int not null,
	Ime varchar(20),
	Prezime varchar(35),
	DatumRodjenja date,
	Adresa varchar(40),
	Zvanje varchar(30)
);

CREATE TABLE Izdavac(
	IzdavacID int not null,
	NazivIzdavaca varchar(30),
	Adresa varchar(40)
);

CREATE TABLE Izdali(
	IzdavacID int not null,
	KnjigaID int not null,
	Godina int
);

CREATE TABLE Na_Citanju(
	KnjigaID int not null,
	CitalacID int not null,
	DatumUzimanja date not null,
	DatunVracanja date
);

CREATE TABLE Primerak(
	KnjigaID int not null,
	PrimerakID int not null
);

/*Primary keys*/
ALTER TABLE Citalac ADD CONSTRAINT PK_Citalac PRIMARY KEY (CitalacID);
ALTER TABLE Knjiga ADD CONSTRAINT PK_Knjiga PRIMARY KEY (KnjigaID);
ALTER TABLE Izdavac ADD CONSTRAINT PK_Izdavac PRIMARY KEY (IzdavacID);
ALTER TABLE Autor ADD CONSTRAINT PK_Autor PRIMARY KEY (AutorID);
ALTER TABLE Izdali ADD CONSTRAINT PK_Izdali PRIMARY KEY (IzdavacID, KnjigaID);
ALTER TABLE Primerak ADD CONSTRAINT PK_Primerak PRIMARY KEY (KnjigaID, PrimerakID);
ALTER TABLE Na_Citanju ADD CONSTRAINT PK_Na_Citanju PRIMARY KEY (KnjigaID, CitalacID, DatumUzimanja);
ALTER TABLE Napisali ADD CONSTRAINT PK_Napisali PRIMARY KEY (AutorID, KnjigaID);

/*Foreign keys*/
ALTER TABLE Na_Citanju ADD CONSTRAINT FK_CitalacID_Na_Citanju FOREIGN KEY (CitalacID) REFERENCES Citalac(CitalacID);
ALTER TABLE Na_Citanju ADD CONSTRAINT FK_KnjigaID_Na_Citanju FOREIGN KEY (KnjigaID) REFERENCES Knjiga(KnjigaID);
ALTER TABLE Primerak ADD CONSTRAINT FK_KnjigaID_Primerak FOREIGN KEY (KnjigaID) REFERENCES Knjiga(KnjigaID);
ALTER TABLE Napisali ADD CONSTRAINT FK_AutorID_Napisali FOREIGN KEY (AutorID) REFERENCES Autor(AutorID);
ALTER TABLE Napisali ADD CONSTRAINT FK_KnjigaID_Napisali FOREIGN KEY (KnjigaID) REFERENCES Knjiga(KnjigaID);
ALTER TABLE Izdali ADD CONSTRAINT FK_IzdavacID_Izdali FOREIGN KEY (IzdavacID) REFERENCES Izdavac(IzdavacID);
ALTER TABLE Izdali ADD CONSTRAINT FK_KnjigaID_Izdali FOREIGN KEY (KnjigaID) REFERENCES Knjiga(KnjigaID);



USE master;
DROP DATABASE Biblioteka;