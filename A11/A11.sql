/*
	CREATE DATABASE A11;
	USE A11;
*/

CREATE TABLE Kategorija(
	kategorijaID int IDENTITY(1,1),
	naziv varchar(50),
	opis text
);

CREATE TABLE Izdavac(
	izdavacID int IDENTITY(1,1),
	naziv varchar(50)
);

CREATE TABLE FormatKnjige(
	formatID int IDENTITY(1,1),
	oznaka varchar(10),
	opis text
);

CREATE TABLE Izdanje(
	knjigaID int not null,
	broj_izdanja int not null,
	izdavacID int,
	formatID int,
	cena float
);

CREATE TABLE Autor(
	autorID int IDENTITY(1,1),
	ime varchar(50),
	prezime varchar(70),
	datum_rodjenja date
);

CREATE TABLE Autor_Izdanje(
	knjigaID int not null,
	broj_izdanja int not null,
	autorID int not null
);

CREATE TABLE Knjiga(
	knjigaID int IDENTITY(1,1),
	naziv varchar(50),
	broj_strana int,
	kategorijaID int,
	komentar text
);

/*Primary key*/
ALTER TABLE Knjiga ADD CONSTRAINT PK_Knjiga PRIMARY KEY (knjigaID);
ALTER TABLE Autor_Izdanje ADD CONSTRAINT PK_Autor_Izdanje PRIMARY KEY (knjigaID,broj_izdanja,autorID);
ALTER TABLE Autor ADD CONSTRAINT PK_Autor PRIMARY KEY (autorID);
ALTER TABLE Izdanje ADD CONSTRAINT PK_Izdanje PRIMARY KEY (knjigaID,broj_izdanja);
ALTER TABLE FormatKnjige ADD CONSTRAINT PK_FormatKnjige PRIMARY KEY (formatID);
ALTER TABLE Izdavac ADD CONSTRAINT PK_Izdavac PRIMARY KEY (izdavacID);
ALTER TABLE Kategorija ADD CONSTRAINT PK_Kategorija PRIMARY KEY (kategorijaID);


INSERT INTO Kategorija VALUES
	('Kategorija1','opis'),
	('Kategorija2','opis'),
	('Kategorija3','opis'),
	('Kategorija4','opis'),
	('Kategorija5','opis'),
	('Kategorija6','opis'),
	('Kategorija7','opis'),
	('Kategorija8','opis'),
	('Kategorija9','opis'),
	('Kategorija10','opis');

INSERT INTO Izdavac VALUES
	('Izdavac1'),
	('Izdavac2'),
	('Izdavac3'),
	('Izdavac4'),
	('Izdavac5'),
	('Izdavac6'),
	('Izdavac7'),
	('Izdavac8'),
	('Izdavac9'),
	('Izdavac10'),
	('Izdavac11'),
	('Izdavac12'),
	('Izdavac13'),
	('Izdavac14'),
	('Izdavac15'),
	('Izdavac16'),
	('Izdavac17'),
	('Izdavac18'),
	('Izdavac19'),
	('Izdavac20'),
	('Izdavac21'),
	('Izdavac22'),
	('Izdavac23'),
	('Izdavac24'),
	('Izdavac25');

INSERT INTO FormatKnjige VALUES
	('A1','opis'),
	('A2','opis'),
	('A3','opis'),
	('A4','opis'),
	('A5','opis');

INSERT INTO Knjiga VALUES
	('Knjiga1',137,7,'komentar'),
	('Knjiga2',81,3,'komentar'),
	('Knjiga3',432,2,'komentar'),
	('Knjiga4',147,8,'komentar'),
	('Knjiga5',322,10,'komentar'),
	('Knjiga6',408,5,'komentar'),
	('Knjiga7',449,3,'komentar'),
	('Knjiga8',449,7,'komentar'),
	('Knjiga9',431,5,'komentar'),
	('Knjiga10',372,10,'komentar'),
	('Knjiga11',326,8,'komentar'),
	('Knjiga12',318,8,'komentar'),
	('Knjiga13',396,9,'komentar'),
	('Knjiga14',266,8,'komentar'),
	('Knjiga15',265,3,'komentar'),
	('Knjiga16',313,2,'komentar'),
	('Knjiga17',86,4,'komentar'),
	('Knjiga18',199,5,'komentar'),
	('Knjiga19',163,3,'komentar'),
	('Knjiga20',106,2,'komentar'),
	('Knjiga21',417,2,'komentar'),
	('Knjiga22',336,10,'komentar'),
	('Knjiga23',254,6,'komentar'),
	('Knjiga24',468,9,'komentar'),
	('Knjiga25',269,2,'komentar'),
	('Knjiga26',441,1,'komentar'),
	('Knjiga27',328,6,'komentar'),
	('Knjiga28',97,4,'komentar'),
	('Knjiga29',358,5,'komentar'),
	('Knjiga30',259,2,'komentar'),
	('Knjiga31',206,1,'komentar'),
	('Knjiga32',281,10,'komentar'),
	('Knjiga33',443,5,'komentar'),
	('Knjiga34',162,5,'komentar'),
	('Knjiga35',235,5,'komentar'),
	('Knjiga36',168,7,'komentar'),
	('Knjiga37',458,7,'komentar'),
	('Knjiga38',456,6,'komentar'),
	('Knjiga39',125,7,'komentar'),
	('Knjiga40',269,1,'komentar'),
	('Knjiga41',424,10,'komentar'),
	('Knjiga42',389,3,'komentar'),
	('Knjiga43',178,4,'komentar'),
	('Knjiga44',396,1,'komentar'),
	('Knjiga45',222,7,'komentar'),
	('Knjiga46',313,9,'komentar'),
	('Knjiga47',372,1,'komentar'),
	('Knjiga48',413,10,'komentar'),
	('Knjiga49',246,9,'komentar'),
	('Knjiga50',357,2,'komentar'),
	('Knjiga51',323,1,'komentar'),
	('Knjiga52',412,5,'komentar'),
	('Knjiga53',429,9,'komentar'),
	('Knjiga54',353,2,'komentar'),
	('Knjiga55',262,1,'komentar'),
	('Knjiga56',190,4,'komentar'),
	('Knjiga57',358,7,'komentar'),
	('Knjiga58',184,5,'komentar'),
	('Knjiga59',167,1,'komentar'),
	('Knjiga60',163,2,'komentar'),
	('Knjiga61',356,9,'komentar'),
	('Knjiga62',117,6,'komentar'),
	('Knjiga63',103,5,'komentar'),
	('Knjiga64',497,2,'komentar'),
	('Knjiga65',409,10,'komentar'),
	('Knjiga66',192,1,'komentar'),
	('Knjiga67',230,10,'komentar'),
	('Knjiga68',227,5,'komentar'),
	('Knjiga69',277,4,'komentar'),
	('Knjiga70',307,10,'komentar'),
	('Knjiga71',216,1,'komentar'),
	('Knjiga72',174,8,'komentar'),
	('Knjiga73',333,10,'komentar'),
	('Knjiga74',248,10,'komentar'),
	('Knjiga75',383,3,'komentar'),
	('Knjiga76',331,8,'komentar'),
	('Knjiga77',470,4,'komentar'),
	('Knjiga78',215,9,'komentar'),
	('Knjiga79',221,1,'komentar'),
	('Knjiga80',389,4,'komentar'),
	('Knjiga81',143,7,'komentar'),
	('Knjiga82',165,8,'komentar'),
	('Knjiga83',106,4,'komentar'),
	('Knjiga84',180,3,'komentar'),
	('Knjiga85',121,3,'komentar'),
	('Knjiga86',310,10,'komentar'),
	('Knjiga87',307,4,'komentar'),
	('Knjiga88',296,2,'komentar'),
	('Knjiga89',191,10,'komentar'),
	('Knjiga90',447,2,'komentar'),
	('Knjiga91',384,2,'komentar'),
	('Knjiga92',147,8,'komentar'),
	('Knjiga93',266,1,'komentar'),
	('Knjiga94',91,10,'komentar'),
	('Knjiga95',121,6,'komentar'),
	('Knjiga96',74,4,'komentar'),
	('Knjiga97',148,2,'komentar'),
	('Knjiga98',463,9,'komentar'),
	('Knjiga99',296,6,'komentar'),
	('Knjiga100',457,9,'komentar');

INSERT INTO Izdanje VALUES
	(1,1,16,1,1637.58),
	(1,2,14,1,1843.43),
	(1,3,18,5,891.89),
	(1,4,13,4,1893.31),
	(2,1,16,1,1637.58),
	(2,2,14,1,1843.43),
	(2,3,18,5,891.89),
	(2,4,13,4,1893.31),
	(2,5,20,2,1022.74),
	(3,1,9,2,820.1),
	(3,2,8,2,831.72),
	(3,3,15,5,2421.63),
	(3,4,24,5,1760.23),
	(3,5,21,1,772.78),
	(3,6,9,5,1344.84),
	(4,1,9,4,746.6),
	(4,2,7,4,1326.39),
	(4,3,21,2,2148.45),
	(4,4,15,2,2056.56),
	(4,5,18,1,2268.15),
	(5,1,15,4,832.8),
	(6,1,10,1,2422.60),
	(6,2,13,1,1108.25),
	(6,3,24,3,785.66),
	(6,4,8,2,1795.24),
	(6,5,3,4,2111.77),
	(6,6,7,4,1215.23),
	(7,1,18,3,1942.50),
	(7,2,20,1,2413.98),
	(7,3,8,2,1077.44),
	(7,4,6,4,2093.23),
	(8,1,8,1,1626.5),
	(8,2,21,3,1674.3),
	(9,1,2,2,1243.72),
	(9,2,16,5,2021.97),
	(9,3,21,3,1666.74),
	(10,1,15,1,1924.3),
	(12,1,21,5,2257.1),
	(12,2,14,5,1497.13),
	(13,1,15,5,2475.15),
	(13,2,12,2,2408.66),
	(13,3,17,3,1800.36),
	(13,4,18,2,2432.23),
	(14,1,15,1,1759.42),
	(14,2,10,4,1350.15),
	(14,3,6,3,1062.28),
	(14,4,19,5,1020.73),
	(16,1,25,3,1398.28),
	(16,2,23,4,1479.1),
	(17,1,14,1,878.63),
	(17,2,23,4,2245.33),
	(17,3,8,3,1219.21),
	(19,1,1,2,1974.75),
	(19,2,10,5,2074.43),
	(19,3,16,4,2245.99),
	(19,4,17,2,1250.25),
	(20,1,25,2,1295.83),
	(20,2,3,1,2432.30),
	(20,3,13,5,1549.86),
	(20,4,5,4,1034.88),
	(20,5,24,2,780.18),
	(20,6,22,1,833.69),
	(22,1,11,4,2332.11),
	(22,2,14,1,826.57),
	(23,1,22,4,2124.90),
	(23,2,3,4,1508.88),
	(25,1,15,3,2387.67),
	(25,2,3,4,2356.26),
	(28,1,8,4,2030.69),
	(28,2,18,1,1405.39),
	(28,3,9,3,2124.62),
	(28,4,11,2,955.14),
	(28,5,12,5,1467.43),
	(28,6,5,1,1427.52),
	(29,1,13,1,2138.37),
	(29,2,16,4,2494.49),
	(29,3,10,3,900.6),
	(29,4,6,2,1696.6),
	(29,5,13,4,2217.78),
	(29,6,21,3,1289.96),
	(30,1,12,2,1864.65),
	(30,2,20,2,1115.22),
	(30,3,18,2,869.59),
	(30,4,1,4,1935.79),
	(33,1,1,1,1166.54),
	(33,2,22,2,1915.35),
	(33,3,15,4,1003.98),
	(33,4,20,5,2078.20),
	(33,5,11,2,2193.59),
	(34,1,23,5,1617.18),
	(34,2,12,3,1535.99),
	(35,1,25,4,1474.53),
	(36,1,13,1,2110.77),
	(36,2,8,1,2328.67),
	(36,3,12,3,1122.33),
	(36,4,19,2,1614.25),
	(36,5,12,2,1559.50),
	(36,6,4,2,2049.36),
	(37,1,23,2,1337.41),
	(37,2,19,3,1699.24),
	(38,1,7,1,1880.57),
	(38,2,14,3,1402.21),
	(38,3,10,5,2401.14),
	(38,4,18,2,1573.91),
	(38,5,14,2,2414.3),
	(38,6,20,2,1481.43),
	(39,1,10,5,1690.27),
	(39,2,18,1,1923.9),
	(40,1,1,3,1764.87),
	(40,2,20,5,903.93),
	(40,3,23,4,1444.28),
	(40,4,6,1,2264.50),
	(40,5,6,1,1784.22),
	(40,6,3,5,1735.23),
	(41,1,5,4,2211.94),
	(42,1,24,2,792.84),
	(42,2,5,5,1273.67),
	(42,3,16,5,2343.84),
	(42,4,10,4,719.9),
	(43,1,22,4,2084.50),
	(44,1,2,5,2042.2),
	(44,2,24,2,1879.60),
	(44,3,10,2,2486.24),
	(44,4,22,1,1108.36),
	(44,5,21,5,1017.55),
	(44,6,14,4,1241.27),
	(45,1,23,2,936.98),
	(45,2,19,1,1018.16),
	(45,3,1,1,1027.10),
	(45,4,5,1,2424.2),
	(47,1,16,5,941.80),
	(47,2,22,5,2180.7),
	(47,3,20,3,2405.40),
	(47,4,12,3,1559.39),
	(50,1,16,4,906.81),
	(50,2,3,5,2426.5),
	(50,3,7,4,2174.22),
	(51,1,13,1,1889.42),
	(51,2,13,1,1342.28),
	(51,3,5,4,1348.58),
	(52,1,16,4,1804.62),
	(53,1,2,5,1582.40),
	(53,2,25,3,767.6),
	(53,3,24,5,2160.57),
	(53,4,12,5,1374.41),
	(53,5,23,3,2333.7),
	(54,1,23,4,1149.44),
	(54,2,25,4,1115.87),
	(54,3,7,2,1476.63),
	(54,4,21,4,1420.5),
	(54,5,3,1,944.38),
	(54,6,11,1,1515.46),
	(55,1,6,2,1077.79),
	(55,2,18,2,1970.56),
	(55,3,23,1,763.24),
	(55,4,24,1,2086.80),
	(56,1,18,4,1384.93),
	(57,1,6,5,1368.77),
	(57,2,10,4,1929.46),
	(57,3,18,2,2115.84),
	(57,4,19,2,737.9),
	(58,1,23,4,833.93),
	(58,2,15,2,2143.16),
	(58,3,2,2,1728.27),
	(59,1,20,1,1900.60),
	(59,2,4,2,1459.94),
	(59,3,24,5,2279.43),
	(60,1,18,3,899.26),
	(60,2,10,4,865.19),
	(60,3,20,4,2244.68),
	(61,1,16,3,1817.32),
	(61,2,11,1,1058.27),
	(61,3,15,4,1020.14),
	(61,4,6,4,1889.58),
	(62,1,20,1,1598.13),
	(62,2,17,2,780.79),
	(62,3,25,4,1008.26),
	(62,4,25,3,2156.92),
	(62,5,14,4,2235.32),
	(62,6,16,3,2078.24),
	(63,1,4,4,2378.12),
	(64,1,1,3,1803.84),
	(65,1,17,1,1619.94),
	(65,2,6,3,1648.44),
	(65,3,9,1,709.59),
	(65,4,7,2,1096.69),
	(65,5,4,5,1159.31),
	(65,6,7,3,1178.93),
	(66,1,15,1,1913.78),
	(66,2,20,4,1866.13),
	(66,3,15,1,2022.2),
	(67,1,16,4,892.10),
	(67,2,11,2,1030.55),
	(67,3,12,3,2314.49),
	(67,4,22,4,1344.53),
	(68,1,6,5,1731.43),
	(68,2,16,3,2235.65),
	(68,3,14,2,1343.46),
	(68,4,18,2,1573.68),
	(69,1,5,3,1066.17),
	(69,2,25,1,2056.96),
	(69,3,4,3,2098.30),
	(70,1,3,2,1772.96),
	(70,2,23,5,1489.25),
	(70,3,1,2,1157.44),
	(70,4,23,5,2187.10),
	(70,5,20,2,1440.81),
	(70,6,10,3,2227.33),
	(71,1,6,5,2174.47),
	(71,2,13,5,837.35),
	(71,3,15,1,820.86),
	(72,1,8,4,1135.24),
	(72,2,5,2,2409.72),
	(72,3,3,1,2369.87),
	(72,4,10,2,1357.49),
	(72,5,15,4,1494.27),
	(73,1,17,5,1814.78),
	(73,2,13,2,1020.10),
	(73,3,8,4,2066.24),
	(76,1,15,1,1196.62),
	(76,2,10,4,960.72),
	(76,3,23,3,954.71),
	(76,4,18,5,727.50),
	(76,5,16,3,1109.62),
	(77,1,16,3,1902.86),
	(77,2,20,4,2129.40),
	(77,3,5,4,1338.17),
	(77,4,16,5,1523.39),
	(77,5,21,5,2175.53),
	(78,1,19,1,1349.65),
	(79,1,6,2,1143.14),
	(79,2,16,4,1449.3),
	(79,3,24,4,1794.76),
	(80,1,2,2,1280.72),
	(80,2,24,4,1683.9),
	(80,3,24,3,892.80),
	(80,4,18,3,861.48),
	(81,1,7,2,1068.31),
	(81,2,11,3,967.4),
	(81,3,25,3,2046.60),
	(81,4,25,4,2114.6),
	(81,5,7,4,1030.91),
	(81,6,1,2,1733.11),
	(82,1,8,4,950.33),
	(82,2,24,2,1288.55),
	(84,1,8,3,1247.66),
	(84,2,22,1,1941.95),
	(85,1,20,3,2447.77),
	(86,1,19,3,1887.90),
	(86,2,15,5,765.73),
	(88,1,4,4,716.70),
	(88,2,2,2,1457.5),
	(88,3,24,2,1573.50),
	(88,4,25,1,1317.74),
	(88,5,8,2,1355.31),
	(88,6,23,2,2417.81),
	(89,1,13,4,1457.98),
	(89,2,4,2,1722.46),
	(89,3,10,3,803.17),
	(89,4,25,5,709.38),
	(90,1,2,2,2204.25),
	(90,2,12,3,1713.82),
	(90,3,15,4,1363.78),
	(92,1,21,1,929.59),
	(92,2,13,5,809.77),
	(92,3,1,5,768.59),
	(92,4,14,2,1737.33),
	(92,5,10,2,2377.45),
	(93,1,15,5,1293.2),
	(95,1,5,3,1787.20),
	(95,2,17,2,1997.23),
	(95,3,25,5,1227.51),
	(95,4,10,2,1197.39),
	(95,5,23,2,2280.3),
	(95,6,7,2,1146.38),
	(97,1,15,3,1183.21),
	(97,2,20,3,1341.15),
	(97,3,23,1,1427.72),
	(97,4,10,2,2192.6),
	(97,5,16,3,868.84),
	(98,1,2,5,1013.7),
	(98,2,3,1,903.58),
	(98,3,24,2,1103.19),
	(99,1,20,1,2426.76),
	(99,2,2,4,979.24),
	(99,3,13,1,2467.20),
	(99,4,22,4,1051.22),
	(99,5,17,4,1215.17),
	(100,1,13,3,869.15),
	(100,2,17,3,1137.56);

INSERT INTO Autor VALUES
	('Autor1','Autor1','1998.9.19'),
	('Autor2','Autor2','1979.6.21'),
	('Autor3','Autor3','1983.9.22'),
	('Autor4','Autor4','1941.8.4'),
	('Autor5','Autor5','1958.3.17'),
	('Autor6','Autor6','1949.7.12'),
	('Autor7','Autor7','1957.4.19'),
	('Autor8','Autor8','1921.5.20'),
	('Autor9','Autor9','1925.5.18'),
	('Autor10','Autor10','1920.6.9'),
	('Autor11','Autor11','1920.9.23'),
	('Autor12','Autor12','1929.6.21'),
	('Autor13','Autor13','1967.8.22'),
	('Autor14','Autor14','1998.9.26'),
	('Autor15','Autor15','1990.9.5'),
	('Autor16','Autor16','1983.7.10'),
	('Autor17','Autor17','1962.8.16'),
	('Autor18','Autor18','1983.9.7'),
	('Autor19','Autor19','1963.9.15'),
	('Autor20','Autor20','1997.7.4');

INSERT INTO Autor_Izdanje VALUES
	(1,0,16),
	(2,5,10),
	(3,6,15),
	(4,5,7),
	(5,1,15),
	(6,6,6),
	(7,4,10),
	(8,2,15),
	(9,3,5),
	(10,1,18),
	(11,0,2),
	(12,2,3),
	(13,4,17),
	(14,4,18),
	(15,0,5),
	(16,2,4),
	(17,3,11),
	(18,0,7),
	(19,4,8),
	(20,6,16),
	(21,0,4),
	(22,2,8),
	(23,2,2),
	(24,0,14),
	(25,2,14),
	(26,0,18),
	(27,0,15),
	(28,6,20),
	(29,6,20),
	(30,4,20),
	(31,0,11),
	(32,0,18),
	(33,5,16),
	(34,2,9),
	(35,1,2),
	(36,6,6),
	(37,2,1),
	(38,6,16),
	(39,2,20),
	(40,6,15),
	(41,1,11),
	(42,4,17),
	(43,1,20),
	(44,6,1),
	(45,4,8),
	(46,0,7),
	(47,4,7),
	(48,0,17),
	(49,0,6),
	(50,3,17),
	(51,3,7),
	(52,1,2),
	(53,5,3),
	(54,6,15),
	(55,4,8),
	(56,1,8),
	(57,4,9),
	(58,3,2),
	(59,3,14),
	(60,3,17),
	(61,4,12),
	(62,6,10),
	(63,1,16),
	(64,1,5),
	(65,6,7),
	(66,3,5),
	(67,4,7),
	(68,4,9),
	(69,3,17),
	(70,6,19),
	(71,3,4),
	(72,5,15),
	(73,3,8),
	(74,0,14),
	(75,0,6),
	(76,5,8),
	(77,5,8),
	(78,1,1),
	(79,3,6),
	(80,4,7),
	(81,6,12),
	(82,2,18),
	(83,0,15),
	(84,2,3),
	(85,1,14),
	(86,2,9),
	(87,0,16),
	(88,6,2),
	(89,4,1),
	(90,3,14),
	(91,0,18),
	(92,5,19),
	(93,1,3),
	(94,0,3),
	(95,6,4),
	(96,0,1),
	(97,5,1),
	(98,3,16),
	(99,5,15),
	(100,2,3);

/*Foreign key*/
ALTER TABLE Izdanje ADD CONSTRAINT FK_Izdanje_izdavacID FOREIGN KEY (izdavacID) REFERENCES Izdavac(izdavacID);
ALTER TABLE Izdanje ADD CONSTRAINT FK_Izdanje_formatID FOREIGN KEY (formatID) REFERENCES FormatKnjige(formatID);
ALTER TABLE Izdanje ADD CONSTRAINT FK_Izdanje_knjigaID FOREIGN KEY (knjigaID) REFERENCES Knjiga(knjigaID);
ALTER TABLE Knjiga ADD CONSTRAINT FK_Knjiga_kategorijaID FOREIGN KEY (kategorijaID) REFERENCES Kategorija(kategorijaID);
ALTER TABLE Autor_Izdanje ADD CONSTRAINT FK_Autor_Izdanje_autorID FOREIGN KEY (autorID) REFERENCES Autor(autorID);
ALTER TABLE Autor_Izdanje ADD CONSTRAINT FK_Autor_Izdanje_knjigaID FOREIGN KEY (knjigaID) REFERENCES Knjiga(knjigaID);


/*Dopuna*/

CREATE TABLE Uposlenik(
	uposlenikID int IDENTITY(1,1),
	ime varchar(50),
	prezime varchar(70),
	funkcija varchar(50)
);

CREATE TABLE Uzeo(
	uposlenikID int not null,
	knjigaID int not null,
	uzeo date not null,
	vratio date
);

ALTER TABLE Uposlenik ADD CONSTRAINT PK_Uposlenik PRIMARY KEY (uposlenikID);
ALTER TABLE Uzeo ADD CONSTRAINT PK_Uzeo PRIMARY KEY (uposlenikID,knjigaID,uzeo);

ALTER TABLE Uzeo ADD CONSTRAINT datum CHECK(uzeo<vratio);
ALTER TABLE Izdavac ADD adresa varchar(100);


ALTER TABLE Uzeo ADD CONSTRAINT FK_Uzeo_uposlenikID FOREIGN KEY (uposlenikID) REFERENCES Uposlenik(uposlenikID);
ALTER TABLE Uzeo ADD CONSTRAINT FK_Uzeo_knjigaID FOREIGN KEY (knjigaID) REFERENCES Knjiga(knjigaID);

/*
	USE master;
	DROP DATABASE A11;
*/