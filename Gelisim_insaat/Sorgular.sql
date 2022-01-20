/*Al�nan Malzemeleri g�steren sorgu */
SELECT * FROM AlinanMalzemeler; 

/*Projede ProjeMalzemeleri tablosundan MalzemeMiktari'n� �ektim MalzemeBilgi tablosundan da malzemeFiyat �ekilerek hesapland� ve ��kan sonu� 
malzemeId ve projeId ile gruplanarak tekrars�z veri elde edildi*/
SELECT PM.projeId ,PM.malzemeId, SUM(MB.malzemeFiyat*PM.malzemeMiktari) as'PROJEDE KULLANILAN MALZEME TOPLAMI' 
FROM ProjeMalzemeleri PM ,MalzemeBilgi MB  GROUP BY PM.malzemeId,PM.projeId;

/*Projede kullan�lan malzemeler malzemeId'ye g�re toplan�p gruplanarak sonu� g�sterildi*/
SELECT projeId,malzemeId, SUM(malzemeMiktari) AS' KULLANILAN  MALZEME SAYISI ' 
FROM ProjeMalzemeleri GROUP BY projeId,malzemeId ;


 
 /*Hata g�steriyor ama �al���yor.AL�nan malzemelere veri eklenince MalzemeBilgi tablosundaki stok bu kodla g�ncellenir */
create trigger tr_malzemeGuncellenme on AlinanMalzemeler 
After insert
As
Begin
Declare @Id int 
Declare @Adet int
Select @Id= malzemeId,@Adet=Adet from AlinanMalzemeler 
UPDATE MalzemeBilgi SET malzemeAdet=@Adet+malzemeAdet WHERE malzemeId=@Id;
End


INSERT INTO AlinanMalzemeler VALUES(2001,1200,'05.01.2022',10,1002); /*Al�nanMalzemeler tablosuna veri ekleyip stok g�ncellenir */

DELETE FROM Personel WHERE Personel_id=107; /* Personel_id si 4 olan kayd� silmek i�in */

/* Belirtilen say�da kayd� g�r�nt�lemek i�in kullan�l�r. */
SELECT TOP 5 * FROM MalzemeBilgi

/* Projeler tablosunda �ehri i ile ba�layan kay�tlar� listeleyelim. */
SELECT * FROM Projeler WHERE Adres LIKE 'B%';

/*Personel tablosunda maa�� 4000 ile 5000 aras�nda olan kay�tlar� listeleyelim. */
SELECT * FROM Personel WHERE Maas BETWEEN 4000 AND 5000;

/*Personel tablosunda ad� �a� ile ba�layan kay�tlar� listelemek i�in; */

SELECT * FROM Personel WHERE AD LIKE 'a%'

/*Personel_id si 102 olan kayd�n maa��n� 7000 olarak de�i�tirelim.*/
UPDATE Personel SET Maas=7000 WHERE Personel_id=102;

/*Personel tablosunda adresi Zeytinburnu yada Ba�ak�ehir olanlar� listelemek i�in sorgu.
NOT:Veri tipi text oldu�u i�in �al��mad� yoksa kod hatas�z.*/
SELECT * FROM Personel WHERE Adres='Zeytinburnu' OR Adres='Ba�ak�ehir';
