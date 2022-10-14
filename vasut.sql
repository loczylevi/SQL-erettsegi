USE vasut;

/*3. Készítsen lekérdezést, amely az adatbázisban tárolt adatok alapján megjeleníti a jelenleg
Magyarországon kívül található állomások nevét és ország jelét, az állomásnév szerint
ábécérendben! (3kulfold)*/

SELECT allomas.nev, allomas.orszag FROM allomas WHERE allomas.orszag <> "" ORDER BY allomas.nev;
