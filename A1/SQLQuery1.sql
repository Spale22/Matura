
SELECT Ime + ' ' + Prezime AS Citalac, YEAR(DatumUzimanja) AS Godina,(SELECT COUNT(KnjigaID) FROM Na_Citanju WHERE CitalacID=2 AND DatumVracanja IS NOT NULL AND  = YEAR(DatumUzimanja)) AS Broj_iznajmljivanja,(SELECT COUNT(KnjigaID) FROM Na_Citanju WHERE CitalacID=2 AND DatumVracanja IS NULL) AS Nije_Vracen FROM Na_Citanju JOIN Citalac ON Na_citanju.CitalacID = Citalac.CitalacID WHERE Na_citanju.CitalacID=2;


SELECT * FROM Na_Citanju ORDER BY CitalacID
