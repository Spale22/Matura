SELECT YEAR(Na_Citanju.datum_uzimanja) AS Godina,
(SELECT COUNT(*) FROM Na_Citanju 
JOIN Napisali ON Na_Citanju.knjigaID = Napisali.knjigaID
JOIN Autor ON Napisali.autorID = Autor.autorID
WHERE Autor.ime = 'Autor5' AND Autor.prezime = 'Autor5' ) AS Broj 
FROM Na_Citanju JOIN Napisali ON Na_Citanju.knjigaID = Napisali.knjigaID 
JOIN Autor ON Napisali.autorID = Autor.autorID
WHERE YEAR(Na_Citanju.datum_uzimanja) BETWEEN 2012 AND YEAR(GETDATE()) AND Autor.ime = 'Autor5' AND Autor.prezime = 'Autor5' 
GROUP BY YEAR(Na_Citanju.datum_uzimanja);