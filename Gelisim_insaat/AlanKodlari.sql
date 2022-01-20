/*Personel Tablosu deðer kodlarý*/

INSERT INTO Personel VALUES (101,'12345678901','Hakan','Toygun',1998,'hakantoygun98@gmail.com','05071291723','Bekar','Zeytinburnu','12000',1001);
INSERT INTO Personel VALUES (102,'27892342043','Oðuzhan','Beyazkuþ',1999,'oguz.bey@gmail.com','05539678543','Bekar','Güngören','9000',1001);
INSERT INTO Personel VALUES (103,'30369201264','Þahin','Bölük',1979,'sahinblk1907@gmail.com','05056384294','Evli','Baþakþehir','7000',1002);
INSERT INTO Personel VALUES (104,'74968537157','Erdem','Demirci',1994,'erdemdmrci01@gmail.com','05521498635','Bekar','Esenyurt','6800',1002);
INSERT INTO Personel VALUES (105,'69834751984','Meltem','Susmaz',1989,'meltem1905ssmz@gmail.com','05556320197','Bekar','Beþiktaþ','6200',1003);
INSERT INTO Personel VALUES (106,'36973281025','Ayþe','Kuruçay',1980,'ayse_1980@gmail.com','05397641278','Dul','Þiþli','4250',1005);
INSERT INTO Personel VALUES (107,'97036045971','Emre','Çakýr',1996,'emrecakir177@gmail.com','05326789461','Bekar','Kaðýthane','4900',1004);
INSERT INTO Personel VALUES (108,'67852049278','Aslý','Yýlmaz',1991,'asliyilmaz@gmail.com','05343210684','Evli','Beylikdüzü','5200',1003);



/*MalzemeBilgi Tablosundaki deðerleri girdim*/

INSERT INTO MalzemeBilgi VALUES (2001,'Kiremit',10,1000);
UPDATE MalzemeBilgi SET malzemeAdi='Tuðla' WHERE malzemeAdi='Kiremit'; /*Burada Kiremit girdiðim adý Tuðla olarak deðiþtirdim */
INSERT INTO MalzemeBilgi VALUES (2002,'Cam',5,200);
INSERT INTO MalzemeBilgi VALUES (2003,'Sýva',10,50);
INSERT INTO MalzemeBilgi VALUES (2004,'Çivi',1,5000);
INSERT INTO MalzemeBilgi VALUES (2005,'Alçý',8,50);
INSERT INTO MalzemeBilgi VALUES (2006,'Kapý',150,210);
INSERT INTO MalzemeBilgi VALUES (2007,'Mermer',30,1000);
INSERT INTO MalzemeBilgi VALUES (2008,'Demir',20,500);
INSERT INTO MalzemeBilgi VALUES (2009,'Boru',5,600);


/*Projeler tablosundaki deðerleri girdim*/
INSERT INTO Projeler VALUES (123,'Kalaycý',7,'Apartman','kalorifer',600000,'Zeytinburnu');
INSERT INTO Projeler VALUES (124,'Selenyum',20,'Site','yerden ýsýtma',1400000,'Bakýrköy');
INSERT INTO Projeler VALUES (125,'Nova',15,'Site','yerden ýsýtma',1800000,'Beþiktaþ');
INSERT INTO Projeler VALUES (138,'Zümrüt',8,'Apartman','kalorifer',750000,'Güngören');
INSERT INTO Projeler VALUES (126,'Yalýkavak',3,'Villa','yerden ýsýtma',2000000,'Sarýyer');
INSERT INTO Projeler VALUES (127,'Sungurlar',2,'Villa','yerden ýsýtma',1700000,'Beylikdüzü');
INSERT INTO Projeler VALUES (128,'Deniz',4,'Apartman','kalorifer',500000,'Baðcýlar');
INSERT INTO Projeler VALUES (129,'Yeterler',14,'Site','kalorifer',830000,'Kaðýthane');
INSERT INTO Projeler VALUES (130,'Bahçe',5,'Apartman','yerden ýsýtma',5900000,'Bahçelievler');

/*AlinanMalzemeler tablosundaki deðerleri girdim*/
/*Burada baþtaki deðer(MalzemeBilgi tablosunun malzemeId'sinden veri çekilmiþtir),ardýndan alýnan adet,alýnma tarihi,alýnan fiyat yazýlmýþtýr
ve (alan kiþi yani gorevliId, ProjedeCalisanlar tablosundan veri çekilmiþtir) */
INSERT INTO AlinanMalzemeler VALUES(2001,1200,'01.01.2022',10,1002);
INSERT INTO AlinanMalzemeler VALUES(2002,200,'02.01.2022',5,1002);
INSERT INTO AlinanMalzemeler VALUES(2006,50,'05.01.2022',150,1002);


/*ProjeMalzemeleri tablosundaki deðerleri girdim*/
/* Burada baþtaki deðer(123 olan deðer Projeler tablosundaki binaId'den veri çekilmiþtir. Ortadaki deðer ise MalzemeBilgi tablosundaki malzemeId'den veri çekilmiþtir)*/
INSERT INTO ProjeMalzemeleri VALUES(123,2001,20);
INSERT INTO ProjeMalzemeleri VALUES(123,2002,50);
INSERT INTO ProjeMalzemeleri VALUES(123,2005,40);
INSERT INTO ProjeMalzemeleri VALUES(123,2001,1000);

/*ProjedeCalisanlar tablsoundaki deðerleri girdim*/
/*Burada baþtaki deðer(123 veya 124 olan deðerler Projeler tablosundaki binaId'den veri çekilmiþtir. Diðer deðer ise Personel tablosundaki Personel_id'den veri çekilmiþtir)*/
INSERT INTO ProjedeCalisanlar VALUES(123,101);
INSERT INTO ProjedeCalisanlar VALUES(123,102);
INSERT INTO ProjedeCalisanlar VALUES(123,103);

INSERT INTO ProjedeCalisanlar VALUES(124,101);
INSERT INTO ProjedeCalisanlar VALUES(124,102);
INSERT INTO ProjedeCalisanlar VALUES(124,105);



