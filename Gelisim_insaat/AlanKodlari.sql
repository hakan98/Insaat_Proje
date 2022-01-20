/*Personel Tablosu de�er kodlar�*/

INSERT INTO Personel VALUES (101,'12345678901','Hakan','Toygun',1998,'hakantoygun98@gmail.com','05071291723','Bekar','Zeytinburnu','12000',1001);
INSERT INTO Personel VALUES (102,'27892342043','O�uzhan','Beyazku�',1999,'oguz.bey@gmail.com','05539678543','Bekar','G�ng�ren','9000',1001);
INSERT INTO Personel VALUES (103,'30369201264','�ahin','B�l�k',1979,'sahinblk1907@gmail.com','05056384294','Evli','Ba�ak�ehir','7000',1002);
INSERT INTO Personel VALUES (104,'74968537157','Erdem','Demirci',1994,'erdemdmrci01@gmail.com','05521498635','Bekar','Esenyurt','6800',1002);
INSERT INTO Personel VALUES (105,'69834751984','Meltem','Susmaz',1989,'meltem1905ssmz@gmail.com','05556320197','Bekar','Be�ikta�','6200',1003);
INSERT INTO Personel VALUES (106,'36973281025','Ay�e','Kuru�ay',1980,'ayse_1980@gmail.com','05397641278','Dul','�i�li','4250',1005);
INSERT INTO Personel VALUES (107,'97036045971','Emre','�ak�r',1996,'emrecakir177@gmail.com','05326789461','Bekar','Ka��thane','4900',1004);
INSERT INTO Personel VALUES (108,'67852049278','Asl�','Y�lmaz',1991,'asliyilmaz@gmail.com','05343210684','Evli','Beylikd�z�','5200',1003);



/*MalzemeBilgi Tablosundaki de�erleri girdim*/

INSERT INTO MalzemeBilgi VALUES (2001,'Kiremit',10,1000);
UPDATE MalzemeBilgi SET malzemeAdi='Tu�la' WHERE malzemeAdi='Kiremit'; /*Burada Kiremit girdi�im ad� Tu�la olarak de�i�tirdim */
INSERT INTO MalzemeBilgi VALUES (2002,'Cam',5,200);
INSERT INTO MalzemeBilgi VALUES (2003,'S�va',10,50);
INSERT INTO MalzemeBilgi VALUES (2004,'�ivi',1,5000);
INSERT INTO MalzemeBilgi VALUES (2005,'Al��',8,50);
INSERT INTO MalzemeBilgi VALUES (2006,'Kap�',150,210);
INSERT INTO MalzemeBilgi VALUES (2007,'Mermer',30,1000);
INSERT INTO MalzemeBilgi VALUES (2008,'Demir',20,500);
INSERT INTO MalzemeBilgi VALUES (2009,'Boru',5,600);


/*Projeler tablosundaki de�erleri girdim*/
INSERT INTO Projeler VALUES (123,'Kalayc�',7,'Apartman','kalorifer',600000,'Zeytinburnu');
INSERT INTO Projeler VALUES (124,'Selenyum',20,'Site','yerden �s�tma',1400000,'Bak�rk�y');
INSERT INTO Projeler VALUES (125,'Nova',15,'Site','yerden �s�tma',1800000,'Be�ikta�');
INSERT INTO Projeler VALUES (138,'Z�mr�t',8,'Apartman','kalorifer',750000,'G�ng�ren');
INSERT INTO Projeler VALUES (126,'Yal�kavak',3,'Villa','yerden �s�tma',2000000,'Sar�yer');
INSERT INTO Projeler VALUES (127,'Sungurlar',2,'Villa','yerden �s�tma',1700000,'Beylikd�z�');
INSERT INTO Projeler VALUES (128,'Deniz',4,'Apartman','kalorifer',500000,'Ba�c�lar');
INSERT INTO Projeler VALUES (129,'Yeterler',14,'Site','kalorifer',830000,'Ka��thane');
INSERT INTO Projeler VALUES (130,'Bah�e',5,'Apartman','yerden �s�tma',5900000,'Bah�elievler');

/*AlinanMalzemeler tablosundaki de�erleri girdim*/
/*Burada ba�taki de�er(MalzemeBilgi tablosunun malzemeId'sinden veri �ekilmi�tir),ard�ndan al�nan adet,al�nma tarihi,al�nan fiyat yaz�lm��t�r
ve (alan ki�i yani gorevliId, ProjedeCalisanlar tablosundan veri �ekilmi�tir) */
INSERT INTO AlinanMalzemeler VALUES(2001,1200,'01.01.2022',10,1002);
INSERT INTO AlinanMalzemeler VALUES(2002,200,'02.01.2022',5,1002);
INSERT INTO AlinanMalzemeler VALUES(2006,50,'05.01.2022',150,1002);


/*ProjeMalzemeleri tablosundaki de�erleri girdim*/
/* Burada ba�taki de�er(123 olan de�er Projeler tablosundaki binaId'den veri �ekilmi�tir. Ortadaki de�er ise MalzemeBilgi tablosundaki malzemeId'den veri �ekilmi�tir)*/
INSERT INTO ProjeMalzemeleri VALUES(123,2001,20);
INSERT INTO ProjeMalzemeleri VALUES(123,2002,50);
INSERT INTO ProjeMalzemeleri VALUES(123,2005,40);
INSERT INTO ProjeMalzemeleri VALUES(123,2001,1000);

/*ProjedeCalisanlar tablsoundaki de�erleri girdim*/
/*Burada ba�taki de�er(123 veya 124 olan de�erler Projeler tablosundaki binaId'den veri �ekilmi�tir. Di�er de�er ise Personel tablosundaki Personel_id'den veri �ekilmi�tir)*/
INSERT INTO ProjedeCalisanlar VALUES(123,101);
INSERT INTO ProjedeCalisanlar VALUES(123,102);
INSERT INTO ProjedeCalisanlar VALUES(123,103);

INSERT INTO ProjedeCalisanlar VALUES(124,101);
INSERT INTO ProjedeCalisanlar VALUES(124,102);
INSERT INTO ProjedeCalisanlar VALUES(124,105);



