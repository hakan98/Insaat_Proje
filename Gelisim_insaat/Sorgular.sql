/*Alýnan Malzemeleri gösteren sorgu */
SELECT * FROM AlinanMalzemeler; 

/*Projede ProjeMalzemeleri tablosundan MalzemeMiktari'ný çektim MalzemeBilgi tablosundan da malzemeFiyat çekilerek hesaplandý ve çýkan sonuç 
malzemeId ve projeId ile gruplanarak tekrarsýz veri elde edildi*/
SELECT PM.projeId ,PM.malzemeId, SUM(MB.malzemeFiyat*PM.malzemeMiktari) as'PROJEDE KULLANILAN MALZEME TOPLAMI' 
FROM ProjeMalzemeleri PM ,MalzemeBilgi MB  GROUP BY PM.malzemeId,PM.projeId;

/*Projede kullanýlan malzemeler malzemeId'ye göre toplanýp gruplanarak sonuç gösterildi*/
SELECT projeId,malzemeId, SUM(malzemeMiktari) AS' KULLANILAN  MALZEME SAYISI ' 
FROM ProjeMalzemeleri GROUP BY projeId,malzemeId ;


 
 /*Hata gösteriyor ama çalýþýyor.ALýnan malzemelere veri eklenince MalzemeBilgi tablosundaki stok bu kodla güncellenir */
create trigger tr_malzemeGuncellenme on AlinanMalzemeler 
After insert
As
Begin
Declare @Id int 
Declare @Adet int
Select @Id= malzemeId,@Adet=Adet from AlinanMalzemeler 
UPDATE MalzemeBilgi SET malzemeAdet=@Adet+malzemeAdet WHERE malzemeId=@Id;
End


INSERT INTO AlinanMalzemeler VALUES(2001,1200,'05.01.2022',10,1002); /*AlýnanMalzemeler tablosuna veri ekleyip stok güncellenir */

DELETE FROM Personel WHERE Personel_id=107; /* Personel_id si 4 olan kaydý silmek için */

/* Belirtilen sayýda kaydý görüntülemek için kullanýlýr. */
SELECT TOP 5 * FROM MalzemeBilgi

/* Projeler tablosunda þehri i ile baþlayan kayýtlarý listeleyelim. */
SELECT * FROM Projeler WHERE Adres LIKE 'B%';

/*Personel tablosunda maaþý 4000 ile 5000 arasýnda olan kayýtlarý listeleyelim. */
SELECT * FROM Personel WHERE Maas BETWEEN 4000 AND 5000;

/*Personel tablosunda adý “a” ile baþlayan kayýtlarý listelemek için; */

SELECT * FROM Personel WHERE AD LIKE 'a%'

/*Personel_id si 102 olan kaydýn maaþýný 7000 olarak deðiþtirelim.*/
UPDATE Personel SET Maas=7000 WHERE Personel_id=102;

/*Personel tablosunda adresi Zeytinburnu yada Baþakþehir olanlarý listelemek için sorgu.
NOT:Veri tipi text olduðu için çalýþmadý yoksa kod hatasýz.*/
SELECT * FROM Personel WHERE Adres='Zeytinburnu' OR Adres='Baþakþehir';
