Zad 1.

2.
	INSERT INTO postac VALUES (default, 

'Bjorn', 'wiking', '1978-07-10', 35);
	INSERT INTO postac VALUES (default, 

'Drozd', 'ptak', '2006-05-28', 5);
	INSERT INTO postac VALUES (default, 

'Tesciowa', 'kobieta', '1932-10-23', 78);

3. 
	UPDATE postac SET wiek=88 WHERE 

id_postaci=3;

Zad 2.

1. 
	CREATE TABLE walizka (id_walizki int AUTO_INCREMENT PRIMARY KEY NOT NULL, pojemnosc int UNSIGNED, kolor enum('rozowy', 'czerwony', 'teczowy', 'zolty'), id_wlasciciela int, FOREIGN KEY (id_wlasciciela) REFERENCES postac(id_postaci) ON DELETE CASCADE);

2. 
	ALTER TABLE walizka ALTER kolor set default 'rozowy';

3. 
	INSERT INTO walizka VALUES (default, 20, 'czerwony', 1);

	INSERT INTO walizka VALUES (default, 15, 'teczowy', 3);
	
Zad 3.

1.
	CREATE TABLE izba (adres_budynku varchar(100), nazwa_izby varchar(100), primary key(adres_budynku, nazwa_izby), metraz int UNSIGNED, wlasciciel int, FOREIGN KEY (wlasciciel) REFERENCES postac(id_postaci) ON DELETE SET NULL);
	
2.
	ALTER TABLE izba ADD COLUMN kolor_izby varchar(30) DEFAULT 'czarny' AFTER metraz;	
	
3. 
	INSERT INTO izba VALUES ('wikingowa 3', 'spizarnia', 100, default, 1);
	
Zad 4.

1.
	CREATE TABLE przetwory (id_przetworu int PRIMARY KEY AUTO_INCREMENT NOT NULL, rok_produkcji int(4) DEFAULT '1654', id_wykonawcy int, FOREIGN KEY (id_wykonawcy) REFERENCES postac(id_postaci), zawartosc varchar(150), dodatek varchar(150) DEFAULT 'papryczka chilli', id_konsumenta int, FOREIGN KEY (id_konsumenta) REFERENCES postac(id_postaci));
	
2.
	INSERT INTO przetwory VALUES (default, default, 1, 'bigos', default, 3);
	
Zad 5.

1.
	INSERT INTO postac VALUES (default, 'Kasztan', 'wiking', '1978-07-10', 35);
	INSERT INTO postac VALUES (default, 'Okon', 'wiking', '1973-02-11', 40);
	INSERT INTO postac VALUES (default, 'Biszkopt', 'wiking', '1972-01-30', 41);
	INSERT INTO postac VALUES (default, 'Banan', 'wiking', '1975-03-28', 38);
	INSERT INTO postac VALUES (default, 'Olaf', 'wiking', '1977-09-14', 36);
	
2.
	CREATE TABLE statek (nazwa_statku varchar(100) PRIMARY KEY NOT NULL, rodzaj_statku enum('karawela', 'galeon', 'okret wojenny', 'szalupa'), data_wodowania DATE, max_ladownosc int unsigned);
	
3.
	INSERT INTO statek VALUES ('Bananowy okret', 'karawela', '2021-11-20', 100);
	INSERT INTO statek VALUES ('Kasztanowy statek', 'galeon', '2021-11-25', 250);
	
4.
	ALTER TABLE postac ADD COLUMN funkcja varchar(50);
	
5.
	UPDATE postac SET funkcja='kapitan' WHERE nazwa='Bjorn'; 
	
6. 
	ALTER TABLE postac ADD FOREIGN KEY (nazwa) REFERENCES statek(nazwa_statku);
	
7.
	
	
8.
	DELETE FROM izba WHERE nazwa_izby='spizarnia';
	
9.
	DROP TABLE izba;
	