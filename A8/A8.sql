/*
	CREATE DATABASE A8;
	USE A8;
*/

CREATE TABLE Drzava (
	drzavaID int not null,
	drzava varchar(70),
	pozivni_broj varchar(20),
	broj_stanovnika int
);

CREATE TABLE Grad(
	gradID int not null,
	grad varchar(70),
	pozivni_broj varchar(20),
	postanski_broj varchar(20),
	broj_stanovnika int,
	drzavaID int
);

CREATE TABLE Period (
	periodID int not null,
	period varchar(30),
	opis text
);

CREATE TABLE Tip_Antikviteta(
	tip_antikvitetaID int not null,
	tip varchar(70),
	slika varchar(200)
);

CREATE TABLE Arheolog(
	arheologID int not null,
	ime varchar(50),
	prezime varchar(70),
	datum_rodjenja date,
	mail varchar(100),
	zivi_u text
);

CREATE TABLE Lokalitet(
	lokalitetID int not null,
	koordinate_duzina float,
	koordinate_sirina float,
	opis text,
	naziv varchar(100),
	gradID int
);

CREATE TABLE Antikvitet(
	antikvitetID int not null,
	periodID int,
	tip_antikvitetaID int,
	lokalitetID int,
	arheologID int,
	datum_pronalaska date,
	vreme_pronalaska time
);

CREATE TABLE Muzej(
	muzejID int not null,
	naziv varchar(70),
	sajt varchar(100),
	mail varchar(100),
	adresa text,
	telefon varchar(20),
	gradID int
);

CREATE TABLE Antikvitet_prikazan(
	antikvitetID int not null,
	muzejID int not null
);


/*Primary keys*/
ALTER TABLE Drzava ADD CONSTRAINT PK_Drzava PRIMARY KEY (drzavaID);
ALTER TABLE Grad ADD CONSTRAINT PK_Grad PRIMARY KEY (gradID);
ALTER TABLE Period ADD CONSTRAINT PK_Period PRIMARY KEY (periodID);
ALTER TABLE Tip_Antikviteta ADD CONSTRAINT PK_Tip_Antikviteta PRIMARY KEY (tip_antikvitetaID);
ALTER TABLE Arheolog ADD CONSTRAINT PK_Arherolog PRIMARY KEY (arheologID);
ALTER TABLE Lokalitet ADD CONSTRAINT PK_Lokalitet PRIMARY KEY (lokalitetID);
ALTER TABLE Antikvitet ADD CONSTRAINT PK_Antikvitet PRIMARY KEY (antikvitetID);
ALTER TABLE Muzej ADD CONSTRAINT PK_Muzej PRIMARY KEY (muzejID);
ALTER TABLE Antikvitet_prikazan ADD CONSTRAINT PK_Antikvitet_prikazan PRIMARY KEY (muzejID,antikvitetID);

INSERT INTO Drzava VALUES
	(1,'Drzava1','123456',674000),
	(2,'Drzava2','123456',328000),
	(3,'Drzava3','123456',694000),
	(4,'Drzava4','123456',427000),
	(5,'Drzava5','123456',180000),
	(6,'Drzava6','123456',623000),
	(7,'Drzava7','123456',627000),
	(8,'Drzava8','123456',528000),
	(9,'Drzava9','123456',688000),
	(10,'Drzava10','123456',672000);

INSERT INTO Grad VALUES
	(1,'Grad1','123456','123456',54000,8),
	(2,'Grad2','123456','123456',10000,2),
	(3,'Grad3','123456','123456',66000,3),
	(4,'Grad4','123456','123456',84000,1),
	(5,'Grad5','123456','123456',74000,4),
	(6,'Grad6','123456','123456',23000,4),
	(7,'Grad7','123456','123456',43000,9),
	(8,'Grad8','123456','123456',63000,3),
	(9,'Grad9','123456','123456',12000,2),
	(10,'Grad10','123456','123456',74000,2),
	(11,'Grad11','123456','123456',12000,5),
	(12,'Grad12','123456','123456',74000,8),
	(13,'Grad13','123456','123456',49000,5),
	(14,'Grad14','123456','123456',20000,3),
	(15,'Grad15','123456','123456',77000,5),
	(16,'Grad16','123456','123456',43000,6),
	(17,'Grad17','123456','123456',76000,8),
	(18,'Grad18','123456','123456',21000,7),
	(19,'Grad19','123456','123456',12000,5),
	(20,'Grad20','123456','123456',10000,4),
	(21,'Grad21','123456','123456',68000,9),
	(22,'Grad22','123456','123456',27000,7),
	(23,'Grad23','123456','123456',23000,2),
	(24,'Grad24','123456','123456',39000,6),
	(25,'Grad25','123456','123456',56000,4),
	(26,'Grad26','123456','123456',12000,9),
	(27,'Grad27','123456','123456',83000,9),
	(28,'Grad28','123456','123456',66000,4),
	(29,'Grad29','123456','123456',37000,9),
	(30,'Grad30','123456','123456',71000,6),
	(31,'Grad31','123456','123456',87000,5),
	(32,'Grad32','123456','123456',53000,5),
	(33,'Grad33','123456','123456',81000,3),
	(34,'Grad34','123456','123456',87000,5),
	(35,'Grad35','123456','123456',16000,8),
	(36,'Grad36','123456','123456',21000,3),
	(37,'Grad37','123456','123456',22000,7),
	(38,'Grad38','123456','123456',69000,10),
	(39,'Grad39','123456','123456',52000,4),
	(40,'Grad40','123456','123456',30000,7),
	(41,'Grad41','123456','123456',78000,10),
	(42,'Grad42','123456','123456',81000,8),
	(43,'Grad43','123456','123456',51000,1),
	(44,'Grad44','123456','123456',77000,6),
	(45,'Grad45','123456','123456',83000,6),
	(46,'Grad46','123456','123456',19000,4),
	(47,'Grad47','123456','123456',59000,5),
	(48,'Grad48','123456','123456',84000,6),
	(49,'Grad49','123456','123456',19000,3),
	(50,'Grad50','123456','123456',28000,10);

INSERT INTO Period VALUES
	(1,'Period1','Opis'),
	(2,'Period2','Opis'),
	(3,'Period3','Opis'),
	(4,'Period4','Opis'),
	(5,'Period5','Opis'),
	(6,'Period6','Opis'),
	(7,'Period7','Opis'),
	(8,'Period8','Opis'),
	(9,'Period9','Opis'),
	(10,'Period10','Opis');

INSERT INTO Tip_Antikviteta VALUES
	(1,'Tip1','C:\Users\Velja\Desktop\Matura\A8\Matura\A8\Matura_Zadatak_A8\Matura_Zadatak_A8\Images\image1.jpg'),
	(2,'Tip2','C:\Users\Velja\Desktop\Matura\A8\Matura\A8\Matura_Zadatak_A8\Matura_Zadatak_A8\Images\image2.jpg'),
	(3,'Tip3','C:\Users\Velja\Desktop\Matura\A8\Matura\A8\Matura_Zadatak_A8\Matura_Zadatak_A8\Images\image3.jpg'),
	(4,'Tip4','C:\Users\Velja\Desktop\Matura\A8\Matura\A8\Matura_Zadatak_A8\Matura_Zadatak_A8\Images\image4.jpg'),
	(5,'Tip5','C:\Users\Velja\Desktop\Matura\A8\Matura\A8\Matura_Zadatak_A8\Matura_Zadatak_A8\Images\image5.jpg');

INSERT INTO Arheolog VALUES
	(1,'Arheolog1','Arheolog1','1980.5.1','arheolog@gmail.com','zivi'),
	(2,'Arheolog2','Arheolog2','1978.3.23','arheolog@gmail.com','zivi'),
	(3,'Arheolog3','Arheolog3','1978.8.27','arheolog@gmail.com','zivi'),
	(4,'Arheolog4','Arheolog4','1982.8.22','arheolog@gmail.com','zivi'),
	(5,'Arheolog5','Arheolog5','1984.5.11','arheolog@gmail.com','zivi'),
	(6,'Arheolog6','Arheolog6','1976.2.12','arheolog@gmail.com','zivi'),
	(7,'Arheolog7','Arheolog7','1978.3.18','arheolog@gmail.com','zivi'),
	(8,'Arheolog8','Arheolog8','1979.7.11','arheolog@gmail.com','zivi'),
	(9,'Arheolog9','Arheolog9','1977.2.13','arheolog@gmail.com','zivi'),
	(10,'Arheolog10','Arheolog10','1982.9.26','arheolog@gmail.com','zivi'),
	(11,'Arheolog11','Arheolog11','1976.9.12','arheolog@gmail.com','zivi'),
	(12,'Arheolog12','Arheolog12','1978.7.8','arheolog@gmail.com','zivi'),
	(13,'Arheolog13','Arheolog13','1983.4.10','arheolog@gmail.com','zivi'),
	(14,'Arheolog14','Arheolog14','1975.10.6','arheolog@gmail.com','zivi'),
	(15,'Arheolog15','Arheolog15','1980.6.2','arheolog@gmail.com','zivi'),
	(16,'Arheolog16','Arheolog16','1978.3.24','arheolog@gmail.com','zivi'),
	(17,'Arheolog17','Arheolog17','1975.12.2','arheolog@gmail.com','zivi'),
	(18,'Arheolog18','Arheolog18','1976.8.12','arheolog@gmail.com','zivi'),
	(19,'Arheolog19','Arheolog19','1981.2.24','arheolog@gmail.com','zivi'),
	(20,'Arheolog20','Arheolog20','1981.1.2','arheolog@gmail.com','zivi');

INSERT INTO Lokalitet VALUES
	(1,-165.10,133.10,'opis','Lokalitet1',35),
	(2,167.27,247.27,'opis','Lokalitet2',43),
	(3,32.20,12.20,'opis','Lokalitet3',33),
	(4,-62.28,142.28,'opis','Lokalitet4',36),
	(5,-164.13,194.13,'opis','Lokalitet5',8),
	(6,93.25,127.25,'opis','Lokalitet6',29),
	(7,-56.27,187.27,'opis','Lokalitet7',23),
	(8,52.23,287.23,'opis','Lokalitet8',43),
	(9,-176.22,83.22,'opis','Lokalitet9',11),
	(10,-28.10,255.10,'opis','Lokalitet10',23),
	(11,-161.2,313.2,'opis','Lokalitet11',32),
	(12,171.14,6.14,'opis','Lokalitet12',11),
	(13,169.6,141.6,'opis','Lokalitet13',50),
	(14,146.13,137.13,'opis','Lokalitet14',35),
	(15,4.10,272.10,'opis','Lokalitet15',23),
	(16,93.6,162.6,'opis','Lokalitet16',40),
	(17,-94.19,304.19,'opis','Lokalitet17',5),
	(18,52.9,267.9,'opis','Lokalitet18',17),
	(19,-108.3,348.3,'opis','Lokalitet19',45),
	(20,-73.18,79.18,'opis','Lokalitet20',17),
	(21,-165.15,256.15,'opis','Lokalitet21',13),
	(22,35.28,289.28,'opis','Lokalitet22',32),
	(23,102.21,21.21,'opis','Lokalitet23',34),
	(24,-47.21,321.21,'opis','Lokalitet24',31),
	(25,61.12,95.12,'opis','Lokalitet25',7),
	(26,-48.17,136.17,'opis','Lokalitet26',12),
	(27,-146.23,309.23,'opis','Lokalitet27',47),
	(28,-79.12,200.12,'opis','Lokalitet28',15),
	(29,-122.12,2.12,'opis','Lokalitet29',3),
	(30,167.6,340.6,'opis','Lokalitet30',22),
	(31,148.10,6.10,'opis','Lokalitet31',30),
	(32,-162.29,226.29,'opis','Lokalitet32',16),
	(33,-83.7,178.7,'opis','Lokalitet33',2),
	(34,114.28,167.28,'opis','Lokalitet34',34),
	(35,-128.5,92.5,'opis','Lokalitet35',38),
	(36,-174.11,357.11,'opis','Lokalitet36',12),
	(37,60.15,142.15,'opis','Lokalitet37',19),
	(38,-4.19,234.19,'opis','Lokalitet38',37),
	(39,-155.7,346.7,'opis','Lokalitet39',18),
	(40,-158.6,352.6,'opis','Lokalitet40',24),
	(41,140.20,172.20,'opis','Lokalitet41',40),
	(42,-59.14,128.14,'opis','Lokalitet42',35),
	(43,-166.27,266.27,'opis','Lokalitet43',36),
	(44,104.13,162.13,'opis','Lokalitet44',46),
	(45,59.27,32.27,'opis','Lokalitet45',33),
	(46,-135.24,217.24,'opis','Lokalitet46',31),
	(47,127.28,177.28,'opis','Lokalitet47',43),
	(48,-93.18,220.18,'opis','Lokalitet48',9),
	(49,-152.25,247.25,'opis','Lokalitet49',27),
	(50,-64.26,202.26,'opis','Lokalitet50',16),
	(51,151.10,289.10,'opis','Lokalitet51',38),
	(52,89.28,333.28,'opis','Lokalitet52',31),
	(53,16.20,109.20,'opis','Lokalitet53',49),
	(54,-160.10,187.10,'opis','Lokalitet54',15),
	(55,58.28,19.28,'opis','Lokalitet55',43),
	(56,-40.14,223.14,'opis','Lokalitet56',22),
	(57,-131.19,265.19,'opis','Lokalitet57',6),
	(58,35.18,315.18,'opis','Lokalitet58',6),
	(59,-109.22,220.22,'opis','Lokalitet59',17),
	(60,-82.26,24.26,'opis','Lokalitet60',47),
	(61,18.9,125.9,'opis','Lokalitet61',48),
	(62,152.4,225.4,'opis','Lokalitet62',29),
	(63,-56.26,203.26,'opis','Lokalitet63',14),
	(64,45.27,16.27,'opis','Lokalitet64',16),
	(65,-56.18,323.18,'opis','Lokalitet65',1),
	(66,-74.1,301.1,'opis','Lokalitet66',34),
	(67,75.23,211.23,'opis','Lokalitet67',23),
	(68,101.1,6.1,'opis','Lokalitet68',30),
	(69,-115.9,3.9,'opis','Lokalitet69',3),
	(70,-69.15,186.15,'opis','Lokalitet70',26),
	(71,46.22,26.22,'opis','Lokalitet71',2),
	(72,179.14,115.14,'opis','Lokalitet72',8),
	(73,68.29,158.29,'opis','Lokalitet73',19),
	(74,-18.19,309.19,'opis','Lokalitet74',36),
	(75,-63.7,231.7,'opis','Lokalitet75',17),
	(76,126.23,239.23,'opis','Lokalitet76',17),
	(77,18.3,102.3,'opis','Lokalitet77',32),
	(78,89.29,315.29,'opis','Lokalitet78',42),
	(79,-38.12,37.12,'opis','Lokalitet79',12),
	(80,-151.20,354.20,'opis','Lokalitet80',20),
	(81,-141.22,223.22,'opis','Lokalitet81',18),
	(82,-167.5,230.5,'opis','Lokalitet82',17),
	(83,-47.21,208.21,'opis','Lokalitet83',34),
	(84,-77.20,61.20,'opis','Lokalitet84',49),
	(85,-75.15,153.15,'opis','Lokalitet85',36),
	(86,-99.12,307.12,'opis','Lokalitet86',41),
	(87,-20.29,55.29,'opis','Lokalitet87',18),
	(88,-9.19,148.19,'opis','Lokalitet88',18),
	(89,170.7,302.7,'opis','Lokalitet89',12),
	(90,146.9,157.9,'opis','Lokalitet90',46),
	(91,-131.8,277.8,'opis','Lokalitet91',9),
	(92,-123.16,117.16,'opis','Lokalitet92',12),
	(93,-22.27,151.27,'opis','Lokalitet93',33),
	(94,0.5,342.5,'opis','Lokalitet94',13),
	(95,-105.26,339.26,'opis','Lokalitet95',45),
	(96,57.25,285.25,'opis','Lokalitet96',49),
	(97,160.21,135.21,'opis','Lokalitet97',23),
	(98,158.2,155.2,'opis','Lokalitet98',43),
	(99,-134.17,206.17,'opis','Lokalitet99',23),
	(100,37.19,86.19,'opis','Lokalitet100',7),
	(101,39.27,271.27,'opis','Lokalitet101',3),
	(102,-7.25,350.25,'opis','Lokalitet102',2),
	(103,63.1,350.1,'opis','Lokalitet103',49),
	(104,14.8,147.8,'opis','Lokalitet104',18),
	(105,153.7,104.7,'opis','Lokalitet105',40),
	(106,46.9,34.9,'opis','Lokalitet106',1),
	(107,-50.16,27.16,'opis','Lokalitet107',47),
	(108,-47.19,254.19,'opis','Lokalitet108',49),
	(109,-77.9,278.9,'opis','Lokalitet109',46),
	(110,137.14,283.14,'opis','Lokalitet110',49),
	(111,12.23,242.23,'opis','Lokalitet111',49),
	(112,-33.10,33.10,'opis','Lokalitet112',37),
	(113,-65.16,84.16,'opis','Lokalitet113',16),
	(114,-175.15,313.15,'opis','Lokalitet114',26),
	(115,-12.21,323.21,'opis','Lokalitet115',21),
	(116,-20.19,329.19,'opis','Lokalitet116',49),
	(117,-64.20,18.20,'opis','Lokalitet117',39),
	(118,-133.14,126.14,'opis','Lokalitet118',7),
	(119,111.8,91.8,'opis','Lokalitet119',48),
	(120,-65.18,115.18,'opis','Lokalitet120',14),
	(121,92.18,291.18,'opis','Lokalitet121',7),
	(122,-116.28,120.28,'opis','Lokalitet122',21),
	(123,-80.13,273.13,'opis','Lokalitet123',50),
	(124,-147.16,26.16,'opis','Lokalitet124',31),
	(125,-172.19,289.19,'opis','Lokalitet125',19),
	(126,-32.18,198.18,'opis','Lokalitet126',49),
	(127,97.15,140.15,'opis','Lokalitet127',39),
	(128,42.6,193.6,'opis','Lokalitet128',8),
	(129,-73.19,152.19,'opis','Lokalitet129',32),
	(130,-70.23,184.23,'opis','Lokalitet130',50),
	(131,-149.15,93.15,'opis','Lokalitet131',19),
	(132,147.2,173.2,'opis','Lokalitet132',37),
	(133,81.28,227.28,'opis','Lokalitet133',26),
	(134,63.25,86.25,'opis','Lokalitet134',11),
	(135,-102.11,229.11,'opis','Lokalitet135',40),
	(136,116.24,71.24,'opis','Lokalitet136',38),
	(137,23.20,105.20,'opis','Lokalitet137',34),
	(138,-29.10,320.10,'opis','Lokalitet138',26),
	(139,-175.8,235.8,'opis','Lokalitet139',8),
	(140,-158.2,78.2,'opis','Lokalitet140',15),
	(141,-57.2,277.2,'opis','Lokalitet141',50),
	(142,38.14,244.14,'opis','Lokalitet142',4),
	(143,23.13,159.13,'opis','Lokalitet143',34),
	(144,-129.5,1.5,'opis','Lokalitet144',45),
	(145,-16.24,268.24,'opis','Lokalitet145',32),
	(146,106.10,136.10,'opis','Lokalitet146',42),
	(147,-66.15,151.15,'opis','Lokalitet147',2),
	(148,167.5,253.5,'opis','Lokalitet148',1),
	(149,27.13,28.13,'opis','Lokalitet149',3),
	(150,-122.4,292.4,'opis','Lokalitet150',45);

INSERT INTO Antikvitet VALUES
	(1,10,5,1,7,'1995.5.29','19:34'),
	(2,5,2,2,3,'1995.12.21','22:59'),
	(3,4,3,3,14,'1998.6.4','21:48'),
	(4,9,1,4,19,'1997.9.26','20:39'),
	(5,6,5,5,11,'1997.7.3','23:46'),
	(6,7,4,6,6,'1994.8.25','16:18'),
	(7,4,1,7,5,'1998.3.6','15:15'),
	(8,2,4,8,15,'1995.6.26','22:11'),
	(9,3,3,9,7,'1998.11.4','17:25'),
	(10,1,3,10,5,'1995.8.10','13:36'),
	(11,7,4,11,10,'1997.9.21','17:43'),
	(12,10,3,12,9,'1993.11.10','15:45'),
	(13,2,5,13,15,'1997.4.17','15:35'),
	(14,9,4,14,11,'1995.11.25','17:11'),
	(15,2,1,15,7,'1997.9.1','15:29'),
	(16,1,4,16,13,'1990.9.6','16:56'),
	(17,2,4,17,14,'1990.11.12','15:36'),
	(18,3,3,18,10,'1996.12.27','21:47'),
	(19,2,1,19,13,'1991.11.16','10:57'),
	(20,6,5,20,12,'1990.5.11','22:10'),
	(21,3,1,21,15,'1992.5.13','12:32'),
	(22,3,3,22,15,'1998.6.22','15:23'),
	(23,7,4,23,20,'1991.9.7','11:34'),
	(24,9,4,24,4,'1997.10.10','13:49'),
	(25,4,1,25,19,'1991.6.18','17:52'),
	(26,7,2,26,17,'1997.11.1','18:28'),
	(27,8,1,27,13,'1996.9.20','14:24'),
	(28,8,5,28,4,'1995.7.10','19:55'),
	(29,1,5,29,18,'1995.8.8','23:41'),
	(30,1,4,30,4,'1995.5.9','19:39'),
	(31,4,5,31,10,'1994.8.16','12:17'),
	(32,4,1,32,2,'1992.12.28','15:59'),
	(33,4,2,33,14,'1998.11.1','21:29'),
	(34,5,1,34,11,'1996.11.20','10:29'),
	(35,8,1,35,6,'1997.4.6','15:19'),
	(36,5,5,36,6,'1996.10.21','19:13'),
	(37,9,4,37,2,'1992.5.22','19:12'),
	(38,9,1,38,17,'1992.11.13','14:45'),
	(39,7,5,39,4,'1998.7.17','21:18'),
	(40,6,4,40,5,'1997.10.3','18:44'),
	(41,4,3,41,1,'1998.6.23','12:43'),
	(42,7,3,42,17,'1993.4.4','14:26'),
	(43,1,1,43,13,'1996.11.20','18:56'),
	(44,2,2,44,15,'1993.8.25','14:45'),
	(45,9,1,45,13,'1992.4.12','14:14'),
	(46,6,5,46,5,'1998.8.15','10:35'),
	(47,10,2,47,19,'1991.5.25','21:53'),
	(48,2,2,48,4,'1992.4.24','11:34'),
	(49,3,4,49,18,'1996.6.3','12:22'),
	(50,1,1,50,16,'1996.3.20','15:36'),
	(51,6,5,51,6,'1996.9.4','16:26'),
	(52,1,1,52,16,'1997.8.3','23:13'),
	(53,7,5,53,20,'1991.6.9','12:34'),
	(54,10,2,54,4,'1994.3.3','21:25'),
	(55,9,5,55,5,'1990.3.9','22:12'),
	(56,8,4,56,14,'1994.11.9','20:16'),
	(57,10,2,57,2,'1998.11.6','12:49'),
	(58,1,5,58,19,'1996.4.28','14:32'),
	(59,3,4,59,8,'1991.12.28','10:48'),
	(60,3,5,60,15,'1994.3.20','19:30'),
	(61,2,2,61,1,'1991.7.27','15:47'),
	(62,6,4,62,9,'1996.5.6','22:55'),
	(63,8,5,63,13,'1998.6.19','12:51'),
	(64,7,4,64,10,'1991.11.20','19:24'),
	(65,6,2,65,19,'1992.5.4','23:17'),
	(66,9,3,66,1,'1994.12.8','17:15'),
	(67,7,5,67,10,'1992.5.23','11:38'),
	(68,7,4,68,3,'1995.5.8','22:35'),
	(69,8,2,69,8,'1994.10.16','19:29'),
	(70,4,3,70,7,'1991.9.20','22:35'),
	(71,7,5,71,14,'1993.9.12','10:52'),
	(72,3,3,72,17,'1993.9.13','22:22'),
	(73,8,4,73,11,'1991.4.2','15:24'),
	(74,10,5,74,6,'1998.6.28','22:58'),
	(75,8,2,75,19,'1996.12.16','21:24'),
	(76,4,1,76,17,'1997.11.10','20:26'),
	(77,2,1,77,13,'1992.11.22','15:22'),
	(78,1,4,78,8,'1990.11.2','16:43'),
	(79,7,3,79,10,'1996.4.3','14:48'),
	(80,9,2,80,12,'1997.4.17','16:31'),
	(81,6,1,81,14,'1992.4.19','11:20'),
	(82,9,2,82,17,'1998.11.22','16:43'),
	(83,9,1,83,13,'1991.12.1','12:25'),
	(84,6,1,84,4,'1992.5.17','11:37'),
	(85,6,1,85,3,'1995.7.7','17:28'),
	(86,2,4,86,1,'1991.7.11','22:53'),
	(87,1,2,87,9,'1998.10.9','17:52'),
	(88,9,1,88,8,'1990.12.25','23:10'),
	(89,7,3,89,11,'1996.8.23','13:39'),
	(90,3,4,90,4,'1996.12.1','22:32'),
	(91,7,2,91,13,'1994.8.6','21:23'),
	(92,3,1,92,6,'1991.11.16','15:47'),
	(93,6,3,93,6,'1992.3.5','14:25'),
	(94,5,5,94,17,'1992.10.22','23:11'),
	(95,4,1,95,1,'1991.9.13','16:45'),
	(96,1,4,96,11,'1991.4.2','20:15'),
	(97,5,5,97,19,'1997.10.16','16:12'),
	(98,4,3,98,15,'1991.12.15','16:58'),
	(99,7,3,99,1,'1997.10.6','11:50'),
	(100,7,1,100,6,'1998.4.3','11:35'),
	(101,6,4,101,15,'1998.4.5','14:53'),
	(102,6,1,102,17,'1997.8.9','20:50'),
	(103,8,4,103,3,'1995.6.27','15:52'),
	(104,8,3,104,11,'1991.8.15','22:28'),
	(105,3,5,105,7,'1996.5.15','20:20'),
	(106,8,2,106,7,'1998.7.9','14:28'),
	(107,8,3,107,6,'1990.5.17','12:44'),
	(108,9,2,108,2,'1994.3.4','15:59'),
	(109,3,4,109,6,'1990.10.1','18:14'),
	(110,5,4,110,8,'1994.8.12','15:31'),
	(111,3,5,111,20,'1992.4.25','11:18'),
	(112,5,2,112,3,'1997.5.9','12:18'),
	(113,7,2,113,16,'1991.4.7','18:49'),
	(114,1,5,114,1,'1995.5.21','11:29'),
	(115,3,5,115,17,'1992.10.3','21:10'),
	(116,5,1,116,20,'1998.3.23','22:59'),
	(117,2,3,117,13,'1992.5.8','13:20'),
	(118,8,3,118,16,'1998.3.13','22:37'),
	(119,6,1,119,18,'1993.5.25','15:30'),
	(120,4,5,120,5,'1992.6.18','20:54'),
	(121,7,5,121,3,'1991.10.26','12:50'),
	(122,1,2,122,6,'1991.7.26','23:50'),
	(123,8,3,123,15,'1993.12.15','19:40'),
	(124,9,4,124,12,'1991.6.28','21:37'),
	(125,5,5,125,15,'1992.5.23','21:51'),
	(126,2,1,126,6,'1994.9.8','23:42'),
	(127,1,3,127,9,'1990.6.10','22:53'),
	(128,1,3,128,7,'1991.4.1','16:43'),
	(129,5,3,129,20,'1996.6.22','18:21'),
	(130,7,1,130,1,'1990.10.8','22:32'),
	(131,9,4,131,3,'1992.10.21','12:35'),
	(132,6,1,132,9,'1995.6.19','19:31'),
	(133,5,1,133,13,'1991.12.8','14:28'),
	(134,7,5,134,12,'1998.6.25','11:51'),
	(135,4,5,135,17,'1991.3.3','23:25'),
	(136,8,3,136,11,'1995.9.28','22:51'),
	(137,7,4,137,18,'1996.11.24','16:27'),
	(138,7,2,138,20,'1996.3.9','12:10'),
	(139,1,1,139,15,'1993.3.16','15:31'),
	(140,2,5,140,4,'1991.7.22','20:35'),
	(141,5,1,141,9,'1996.6.10','10:53'),
	(142,7,5,142,20,'1993.5.8','13:14'),
	(143,2,1,143,13,'1992.12.14','20:21'),
	(144,9,2,144,11,'1996.3.10','23:56'),
	(145,3,1,145,19,'1992.4.13','19:24'),
	(146,9,4,146,11,'1998.4.2','12:51'),
	(147,1,5,147,13,'1995.10.13','17:45'),
	(148,3,3,148,10,'1992.10.9','21:16'),
	(149,2,4,149,1,'1997.10.29','23:20'),
	(150,9,5,150,17,'1998.8.24','11:14');

INSERT INTO Muzej VALUES
	(1,'Muzej1','www.muzej.com','muzej@gmail.com','Adresa','1234567',43),
	(2,'Muzej2','www.muzej.com','muzej@gmail.com','Adresa','1234567',12),
	(3,'Muzej3','www.muzej.com','muzej@gmail.com','Adresa','1234567',36),
	(4,'Muzej4','www.muzej.com','muzej@gmail.com','Adresa','1234567',20),
	(5,'Muzej5','www.muzej.com','muzej@gmail.com','Adresa','1234567',39),
	(6,'Muzej6','www.muzej.com','muzej@gmail.com','Adresa','1234567',50),
	(7,'Muzej7','www.muzej.com','muzej@gmail.com','Adresa','1234567',18),
	(8,'Muzej8','www.muzej.com','muzej@gmail.com','Adresa','1234567',24),
	(9,'Muzej9','www.muzej.com','muzej@gmail.com','Adresa','1234567',26),
	(10,'Muzej10','www.muzej.com','muzej@gmail.com','Adresa','1234567',13),
	(11,'Muzej11','www.muzej.com','muzej@gmail.com','Adresa','1234567',34),
	(12,'Muzej12','www.muzej.com','muzej@gmail.com','Adresa','1234567',10),
	(13,'Muzej13','www.muzej.com','muzej@gmail.com','Adresa','1234567',15),
	(14,'Muzej14','www.muzej.com','muzej@gmail.com','Adresa','1234567',12),
	(15,'Muzej15','www.muzej.com','muzej@gmail.com','Adresa','1234567',27),
	(16,'Muzej16','www.muzej.com','muzej@gmail.com','Adresa','1234567',39),
	(17,'Muzej17','www.muzej.com','muzej@gmail.com','Adresa','1234567',12),
	(18,'Muzej18','www.muzej.com','muzej@gmail.com','Adresa','1234567',49),
	(19,'Muzej19','www.muzej.com','muzej@gmail.com','Adresa','1234567',34),
	(20,'Muzej20','www.muzej.com','muzej@gmail.com','Adresa','1234567',30),
	(21,'Muzej21','www.muzej.com','muzej@gmail.com','Adresa','1234567',12),
	(22,'Muzej22','www.muzej.com','muzej@gmail.com','Adresa','1234567',30),
	(23,'Muzej23','www.muzej.com','muzej@gmail.com','Adresa','1234567',12),
	(24,'Muzej24','www.muzej.com','muzej@gmail.com','Adresa','1234567',5),
	(25,'Muzej25','www.muzej.com','muzej@gmail.com','Adresa','1234567',41),
	(26,'Muzej26','www.muzej.com','muzej@gmail.com','Adresa','1234567',23),
	(27,'Muzej27','www.muzej.com','muzej@gmail.com','Adresa','1234567',23),
	(28,'Muzej28','www.muzej.com','muzej@gmail.com','Adresa','1234567',43),
	(29,'Muzej29','www.muzej.com','muzej@gmail.com','Adresa','1234567',22),
	(30,'Muzej30','www.muzej.com','muzej@gmail.com','Adresa','1234567',47),
	(31,'Muzej31','www.muzej.com','muzej@gmail.com','Adresa','1234567',48),
	(32,'Muzej32','www.muzej.com','muzej@gmail.com','Adresa','1234567',3),
	(33,'Muzej33','www.muzej.com','muzej@gmail.com','Adresa','1234567',47),
	(34,'Muzej34','www.muzej.com','muzej@gmail.com','Adresa','1234567',13),
	(35,'Muzej35','www.muzej.com','muzej@gmail.com','Adresa','1234567',26),
	(36,'Muzej36','www.muzej.com','muzej@gmail.com','Adresa','1234567',19),
	(37,'Muzej37','www.muzej.com','muzej@gmail.com','Adresa','1234567',35),
	(38,'Muzej38','www.muzej.com','muzej@gmail.com','Adresa','1234567',23),
	(39,'Muzej39','www.muzej.com','muzej@gmail.com','Adresa','1234567',18),
	(40,'Muzej40','www.muzej.com','muzej@gmail.com','Adresa','1234567',28),
	(41,'Muzej41','www.muzej.com','muzej@gmail.com','Adresa','1234567',34),
	(42,'Muzej42','www.muzej.com','muzej@gmail.com','Adresa','1234567',38),
	(43,'Muzej43','www.muzej.com','muzej@gmail.com','Adresa','1234567',42),
	(44,'Muzej44','www.muzej.com','muzej@gmail.com','Adresa','1234567',19),
	(45,'Muzej45','www.muzej.com','muzej@gmail.com','Adresa','1234567',14),
	(46,'Muzej46','www.muzej.com','muzej@gmail.com','Adresa','1234567',42),
	(47,'Muzej47','www.muzej.com','muzej@gmail.com','Adresa','1234567',30),
	(48,'Muzej48','www.muzej.com','muzej@gmail.com','Adresa','1234567',18),
	(49,'Muzej49','www.muzej.com','muzej@gmail.com','Adresa','1234567',15),
	(50,'Muzej50','www.muzej.com','muzej@gmail.com','Adresa','1234567',50);

INSERT INTO Antikvitet_prikazan VALUES
	(1,4),
	(2,50),
	(3,9),
	(4,6),
	(5,5),
	(6,13),
	(7,13),
	(8,40),
	(9,34),
	(10,13),
	(11,22),
	(12,36),
	(13,1),
	(14,39),
	(15,46),
	(16,19),
	(17,5),
	(18,25),
	(19,48),
	(20,25),
	(21,4),
	(22,48),
	(23,12),
	(24,17),
	(25,24),
	(26,40),
	(27,19),
	(28,49),
	(29,17),
	(30,43),
	(31,6),
	(32,45),
	(33,46),
	(34,8),
	(35,26),
	(36,45),
	(37,40),
	(38,6),
	(39,2),
	(40,10),
	(41,47),
	(42,10),
	(43,34),
	(44,2),
	(45,41),
	(46,49),
	(47,30),
	(48,19),
	(49,43),
	(50,12),
	(51,20),
	(52,33),
	(53,36),
	(54,27),
	(55,46),
	(56,7),
	(57,38),
	(58,42),
	(59,33),
	(60,16),
	(61,45),
	(62,15),
	(63,24),
	(64,42),
	(65,8),
	(66,27),
	(67,40),
	(68,44),
	(69,13),
	(70,2),
	(71,30),
	(72,50),
	(73,24),
	(74,38),
	(75,28),
	(76,45),
	(77,15),
	(78,11),
	(79,27),
	(80,25),
	(81,10),
	(82,50),
	(83,7),
	(84,6),
	(85,24),
	(86,24),
	(87,10),
	(88,20),
	(89,12),
	(90,20),
	(91,7),
	(92,48),
	(93,24),
	(94,37),
	(95,15),
	(96,33),
	(97,36),
	(98,43),
	(99,45),
	(100,14),
	(101,10),
	(102,37),
	(103,7),
	(104,41),
	(105,33),
	(106,20),
	(107,9),
	(108,48),
	(109,49),
	(110,1),
	(111,43),
	(112,28),
	(113,16),
	(114,8),
	(115,7),
	(116,46),
	(117,8),
	(118,19),
	(119,18),
	(120,35),
	(121,18),
	(122,21),
	(123,32),
	(124,44),
	(125,46),
	(126,32),
	(127,27),
	(128,37),
	(129,24),
	(130,46),
	(131,9),
	(132,22),
	(133,16),
	(134,13),
	(135,16),
	(136,23),
	(137,43),
	(138,16),
	(139,23),
	(140,4),
	(141,15),
	(142,13),
	(143,21),
	(144,12),
	(145,28),
	(146,29),
	(147,32),
	(148,17),
	(149,31),
	(150,19);

/*Foreign keys*/
ALTER TABLE Grad ADD CONSTRAINT FK_Grad_drzavaID FOREIGN KEY (drzavaID) REFERENCES Drzava(drzavaID) ON DELETE CASCADE;
ALTER TABLE Lokalitet ADD CONSTRAINT FK_Lokalitet_gradID FOREIGN KEY (gradID) REFERENCES Grad(gradID) ON DELETE CASCADE;
ALTER TABLE Antikvitet ADD CONSTRAINT FK_Antikvitet_lokalitetID FOREIGN KEY (lokalitetID) REFERENCES Lokalitet(lokalitetID) ON DELETE CASCADE;
ALTER TABLE Antikvitet ADD CONSTRAINT FK_Antikvitet_periodID FOREIGN KEY (periodID) REFERENCES Period(periodID) ON DELETE CASCADE;
ALTER TABLE Antikvitet ADD CONSTRAINT FK_Antikvitet_tip_antikvitetaID FOREIGN KEY (tip_antikvitetaID) REFERENCES Tip_Antikviteta(tip_antikvitetaID) ON DELETE CASCADE;
ALTER TABLE Antikvitet ADD CONSTRAINT FK_Antikvitet_arheologID FOREIGN KEY (arheologID) REFERENCES Arheolog(arheologID) ON DELETE CASCADE;
ALTER TABLE Antikvitet_prikazan ADD CONSTRAINT FK_Antikvitet_prikazan_antikvitetID FOREIGN KEY (antikvitetID) REFERENCES Antikvitet(antikvitetID) ON DELETE CASCADE;
ALTER TABLE Antikvitet_prikazan ADD CONSTRAINT FK_Antikvitet_prikazan_muzejID FOREIGN KEY (muzejID) REFERENCES Muzej(muzejID) ON DELETE CASCADE;


/*
	USE master;
	DROP DATABASE A8;
*/
