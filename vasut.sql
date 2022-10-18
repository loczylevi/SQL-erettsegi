USE vasut;

/*3. Készítsen lekérdezést, amely az adatbázisban tárolt adatok alapján megjeleníti a jelenleg
Magyarországon kívül található állomások nevét és ország jelét, az állomásnév szerint
ábécérendben! (3kulfold)*/

SELECT allomas.nev, allomas.orszag FROM allomas WHERE allomas.orszag <> "" ORDER BY allomas.nev;


/*4. A 80-as vonal az egyik leghosszabb hazánkban. Készítsen lekérdezést, amely a kiinduló
állomástól mért távolság sorrendjében megjeleníti a működő állomások nevét, típusát és az
indulási állomástól mért távolságát! (480)*/

SELECT allomas.nev, allomas.tipus, hely.tav FROM allomas,hely WHERE hely.vonalid = "80" AND allomas.mukodo <> '-1' AND allomas.id = hely.allomasid ORDER BY hely.tav;

/*5. Készítsen lekérdezést, amely megadja az egyes vonalak hosszát, azaz az első és az utolsó
hely távolságát! Jelenítse meg a vonal azonosítóját és a hossz értékét! (5vonalhossz)*/ 


SELECT hely.vonalid, MAX(hely.tav) FROM hely GROUP BY hely.vonalid;
