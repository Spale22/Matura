CREATE DATABASE A2;

USE A2;

/*Table creation*/
CREATE TABLE Citalac(
	citalacID int not null,
	maticniBroj varchar(20),
	ime varchar(20),
	prezime varchar(35),
	mesto varchar(30),
	adresa varchar(40),
	telefon varchar(15),
	datum_uplate_clanarine date CHECK(datum_uplate_clanarine<= GETDATE())
);

CREATE TABLE Knjiga(
	knjigaID int not null,
	UDK int,
	ISBN varchar(30),
	naziv varchar(30)
);

CREATE TABLE Napisali(
	autorID int not null,
	knjigaID int not null
);

CREATE TABLE Autor(
	autorID int not null,
	ime varchar(20),
	prezime varchar(35),
	datum_rodjenja date
);

CREATE TABLE Izdavac(
	izdavacID int not null,
	naziv_izdavaca varchar(30),
	adresa varchar(40)
);

CREATE TABLE Izdali(
	izdavacID int not null,
	knjigaID int not null,
	godina int
);

CREATE TABLE Na_Citanju(
	knjigaID int not null,
	citalacID int not null,
	datum_uzimanja date not null,
	datum_vracanja date
);

CREATE TABLE Primerak(
	primerakID int not null,
	knjigaID int not null,
	format_primerka varchar(50)
);


/*Primary keys*/
ALTER TABLE Citalac ADD CONSTRAINT PK_Citalac PRIMARY KEY (citalacID);
ALTER TABLE Knjiga ADD CONSTRAINT PK_Knjiga PRIMARY KEY (knjigaID);
ALTER TABLE Izdavac ADD CONSTRAINT PK_Izdavac PRIMARY KEY (izdavacID);
ALTER TABLE Autor ADD CONSTRAINT PK_Autor PRIMARY KEY (autorID);
ALTER TABLE Izdali ADD CONSTRAINT PK_Izdali PRIMARY KEY (izdavacID, knjigaID);
ALTER TABLE Na_Citanju ADD CONSTRAINT PK_Na_Citanju PRIMARY KEY (knjigaID, citalacID, datum_uzimanja);
ALTER TABLE Napisali ADD CONSTRAINT PK_Napisali PRIMARY KEY (autorID, knjigaID);
ALTER TABLE Primerak ADD CONSTRAINT PK_Primerak PRIMARY KEY (primerakID,knjigaID);

/*Foreign keys*/
ALTER TABLE Na_Citanju ADD CONSTRAINT FK_CitalacID_Na_Citanju FOREIGN KEY (citalacID) REFERENCES Citalac(citalacID);
ALTER TABLE Na_Citanju ADD CONSTRAINT FK_KnjigaID_Na_Citanju FOREIGN KEY (knjigaID) REFERENCES Knjiga(knjigaID);
ALTER TABLE Napisali ADD CONSTRAINT FK_AutorID_Napisali FOREIGN KEY (autorID) REFERENCES Autor(autorID);
ALTER TABLE Napisali ADD CONSTRAINT FK_KnjigaID_Napisali FOREIGN KEY (knjigaID) REFERENCES Knjiga(knjigaID);
ALTER TABLE Izdali ADD CONSTRAINT FK_IzdavacID_Izdali FOREIGN KEY (izdavacID) REFERENCES Izdavac(izdavacID);
ALTER TABLE Izdali ADD CONSTRAINT FK_KnjigaID_Izdali FOREIGN KEY (knjigaID) REFERENCES Knjiga(knjigaID);
ALTER TABLE Primerak ADD CONSTRAINT FK_KnjigaID_Primerak FOREIGN KEY (knjigaID) REFERENCES Knjiga(knjigaID); 

INSERT INTO Citalac VALUES
	(1,'1605997740011','Citalac1','Citalac1','Mesto1','Adresa1','0691234561','2015.05.01'),
	(2,'1605997740012','Citalac2','Citalac2','Mesto2','Adresa2','0691234562','2015.05.02'),
	(3,'1605997740013','Citalac3','Citalac3','Mesto3','Adresa3','0691234563','2015.05.03'),
	(4,'1605997740014','Citalac4','Citalac4','Mesto4','Adresa4','0691234564','2015.05.04'),
	(5,'1605997740015','Citalac5','Citalac5','Mesto5','Adresa5','0691234565','2015.05.05'),
	(6,'1605997740016','Citalac6','Citalac6','Mesto6','Adresa6','0691234566','2015.05.06'),
	(7,'1605997740017','Citalac7','Citalac7','Mesto7','Adresa7','0691234567','2015.05.07'),
	(8,'1605997740018','Citalac8','Citalac8','Mesto8','Adresa8','0691234568','2015.05.08'),
	(9,'1605997740019','Citalac9','Citalac9','Mesto9','Adresa9','0691234569','2015.05.09'),
	(10,'1605997740010','Citalac10','Citalac10','Mesto10','Adresa10','0691234510','2015.05.10'),
	(11,'1605997740011','Citalac11','Citalac11','Mesto11','Adresa11','0691234511','2015.05.11'),
	(12,'1605997740012','Citalac12','Citalac12','Mesto12','Adresa12','0691234512','2015.05.12');

INSERT INTO Autor VALUES
	(1,'Autor1','Autor1','1991.11.01'),
	(2,'Autor2','Autor2','1992.12.02'),
	(3,'Autor3','Autor3','1993.01.03'),
	(4,'Autor4','Autor4','1994.02.04'),
	(5,'Autor5','Autor5','1995.03.05');

INSERT INTO Izdavac VALUES
	(1,'Izdavac1','Adresa1'),
	(2,'Izdavac2','Adresa2'),
	(3,'Izdavac3','Adresa3'),
	(4,'Izdavac4','Adresa4'),
	(5,'Izdavac5','Adresa5');

INSERT INTO Knjiga VALUES
	(1,8,'123 45 6789 101 1','Knjiga1'),
	(2,7,'123 45 6789 101 1','Knjiga2'),
	(3,6,'123 45 6789 101 1','Knjiga3'),
	(4,5,'123 45 6789 101 1','Knjiga4'),
	(5,4,'123 45 6789 101 1','Knjiga5'),
	(6,3,'123 45 6789 101 1','Knjiga6'),
	(7,2,'123 45 6789 101 1','Knjiga7'),
	(8,1,'123 45 6789 101 1','Knjiga8');

INSERT INTO Na_Citanju VALUES
	(1,1,'2010.04.01',null),
	(2,1,'2012.05.11','2012.11.02'),
	(3,1,'2013.06.21',null),
	(4,1,'2014.07.01','2014.08.21'),
	(5,1,'2015.08.11','2015.11.03'),
	(6,1,'2016.09.21',null),
	(7,1,'2017.10.01','2017.11.14'),
	(8,1,'2018.11.11',null),
	(1,2,'2010.04.01',null),
	(2,2,'2012.05.11','2012.11.02'),
	(3,2,'2013.06.21',null),
	(4,2,'2014.07.01','2014.08.21'),
	(5,2,'2015.08.11','2015.11.03'),
	(6,2,'2016.09.21',null),
	(7,2,'2017.10.01','2017.11.14'),
	(8,2,'2018.11.11',null),
	(1,3,'2010.04.01',null),
	(2,3,'2012.05.11','2012.11.02'),
	(3,3,'2013.06.21',null),
	(4,3,'2014.07.01','2014.08.21'),
	(5,3,'2015.08.11','2015.11.03'),
	(6,3,'2016.09.21',null),
	(7,3,'2017.10.01','2017.11.14'),
	(8,3,'2018.11.11',null),
	(1,4,'2010.04.01',null),
	(2,4,'2012.05.11','2012.11.02'),
	(3,4,'2013.06.21',null),
	(4,4,'2014.07.01','2014.08.21'),
	(5,4,'2015.08.11','2015.11.03'),
	(6,4,'2016.09.21',null),
	(7,4,'2017.10.01','2017.11.14'),
	(8,4,'2018.11.11',null),
	(1,5,'2010.04.01',null),
	(2,5,'2012.05.11','2012.11.02'),
	(3,5,'2013.06.21',null),
	(4,5,'2014.07.01','2014.08.21'),
	(5,5,'2015.08.11','2015.11.03'),
	(6,5,'2016.09.21',null),
	(7,5,'2017.10.01','2017.11.14'),
	(8,5,'2018.11.11',null),
	(1,6,'2010.04.01',null),
	(2,6,'2012.05.11','2012.11.02'),
	(3,6,'2013.06.21',null),
	(4,6,'2014.07.01','2014.08.21'),
	(5,6,'2015.08.11','2015.11.03'),
	(6,6,'2016.09.21',null),
	(7,6,'2017.10.01','2017.11.14'),
	(8,6,'2018.11.11',null),
	(1,7,'2010.04.01',null),
	(2,7,'2012.05.11','2012.11.02'),
	(3,7,'2013.06.21',null),
	(4,7,'2014.07.01','2014.08.21'),
	(5,7,'2015.08.11','2015.11.03'),
	(6,7,'2016.09.21',null),
	(7,7,'2017.10.01','2017.11.14'),
	(8,7,'2018.11.11',null),
	(1,8,'2010.04.01',null),
	(2,8,'2012.05.11','2012.11.02'),
	(3,8,'2013.06.21',null),
	(4,8,'2014.07.01','2014.08.21'),
	(5,8,'2015.08.11','2015.11.03'),
	(6,8,'2016.09.21',null),
	(7,8,'2017.10.01','2017.11.14'),
	(8,8,'2018.11.11',null),
	(1,9,'2010.04.01',null),
	(2,9,'2012.05.11','2012.11.02'),
	(3,9,'2013.06.21',null),
	(4,9,'2014.07.01','2014.08.21'),
	(5,9,'2015.08.11','2015.11.03'),
	(6,9,'2016.09.21',null),
	(7,9,'2017.10.01','2017.11.14'),
	(8,9,'2018.11.11',null),
	(1,10,'2010.04.01',null),
	(2,10,'2012.05.11','2012.11.02'),
	(3,10,'2013.06.21',null),
	(4,10,'2014.07.01','2014.08.21'),
	(5,10,'2015.08.11','2015.11.03'),
	(6,10,'2016.09.21',null),
	(7,10,'2017.10.01','2017.11.14'),
	(1,11,'2010.04.01',null),
	(2,11,'2012.05.11','2012.11.02'),
	(3,11,'2013.06.21',null),
	(4,11,'2014.07.01','2014.08.21'),
	(5,11,'2015.08.11','2015.11.03'),
	(6,11,'2016.09.21',null),
	(7,11,'2017.10.01','2017.11.14'),
	(8,11,'2018.11.11',null),
	(1,12,'2010.04.01',null),
	(2,12,'2012.05.11','2012.11.02'),
	(3,12,'2013.06.21',null),
	(4,12,'2014.07.01','2014.08.21'),
	(5,12,'2015.08.11','2015.11.03'),
	(6,12,'2016.09.21',null),
	(7,12,'2017.10.01','2017.11.14'),
	(8,12,'2018.11.11',null);
	
INSERT INTO Napisali VALUES
	(1,1),
	(5,2),
	(4,3),
	(3,4),
	(2,5),
	(1,6),
	(5,7),
	(4,8);

INSERT INTO Izdali VALUES
	(1,1,2001),
	(4,2,2002),
	(3,3,2003),
	(2,4,2004),
	(3,5,2005),
	(1,6,2006),
	(5,7,2007),
	(2,8,2008);

INSERT INTO Primerak VALUES
	(1,1,'format1'),
	(2,1,'format2'),
	(3,1,'format3'),
	(4,1,'format4'),
	(5,1,'format5'),
	(6,1,'format6'),
	(7,1,'format7'),
	(8,1,'format8'),
	(9,2,'format1'),
	(10,2,'format2'),
	(11,2,'format3'),
	(12,2,'format4'),
	(13,2,'format5'),
	(14,2,'format6'),
	(15,2,'format7'),
	(16,2,'format8'),
	(17,3,'format1'),
	(18,3,'format2'),
	(19,3,'format3'),
	(20,3,'format4'),
	(21,3,'format5'),
	(22,3,'format6'),
	(23,3,'format7'),
	(24,3,'format8'),
	(25,4,'format1'),
	(26,4,'format2'),
	(27,4,'format3'),
	(28,4,'format4'),
	(29,4,'format5'),
	(30,4,'format6'),
	(31,4,'format7'),
	(32,4,'format8'),
	(33,5,'format1'),
	(34,5,'format2'),
	(35,5,'format3'),
	(36,5,'format4'),
	(37,5,'format5'),
	(38,5,'format6'),
	(39,5,'format7'),
	(40,5,'format8'),
	(41,6,'format1'),
	(42,6,'format2'),
	(43,6,'format3'),
	(44,6,'format4'),
	(45,6,'format5'),
	(46,6,'format6'),
	(47,6,'format7'),
	(48,6,'format8'),
	(49,7,'format1'),
	(50,7,'format2'),
	(51,7,'format3'),
	(52,7,'format4'),
	(53,7,'format5'),
	(54,7,'format6'),
	(55,7,'format7'),
	(56,7,'format8'),
	(57,8,'format1'),
	(58,8,'format2'),
	(59,8,'format3'),
	(60,8,'format4'),
	(61,8,'format5'),
	(62,8,'format6'),
	(63,8,'format7'),
	(64,8,'format8');


USE master;
DROP DATABASE A2;

