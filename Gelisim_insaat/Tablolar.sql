 CREATE TABLE Departmanlar(
 departmanId INT  NOT NULL PRIMARY KEY,
 departmanAdi NVARCHAR(50) NOT NULL
);

CREATE TABLE Personel(
	Personel_id INT PRIMARY KEY ,
	KimlikNo char(11) NOT NULL,
	Ad NVARCHAR(50) NOT NULL,
	Soyad NVARCHAR(50) NOT NULL,
	dTarih NVARCHAR(20) NOT NULL,
	eposta NVARCHAR(100) NULL,
	Telefon char(11) NOT NULL,
	MedeniDurum NVARCHAR(100) NOT NULL,
	Adres TEXT NOT NULL,
	Maas MONEY NOT NULL,
	Departman INT NOT NULL,
	FOREIGN KEY(Departman) REFERENCES Departmanlar(departmanId)
);

CREATE TABLE Projeler(
 binaId INT PRIMARY KEY ,
 binaAdi NVARCHAR(50) NOT NULL,
 katSayisi INT NOT NULL,
 binaTuru NVARCHAR(20) NOT NULL,
 istmaSistemi NVARCHAR(20) NOT NULL,
 Maliyet MONEY NOT NULL,
 Adres TEXT NOT NULL
);

CREATE TABLE MalzemeBilgi(
  malzemeId INT PRIMARY KEY ,
  malzemeAdi NVARCHAR(50) NOT NULL,
  malzemeFiyat MONEY NOT NULL,
  malzemeAdet INT NOT NULL 

);

CREATE TABLE ProjeMalzemeleri(
  projeId INT NOT NULL ,
  malzemeId INT NOT NULL ,
  malzemeMiktari INT NOT NULL,
  FOREIGN KEY(projeId) REFERENCES Projeler(binaId),
  FOREIGN KEY(malzemeId) REFERENCES MalzemeBilgi(malzemeId)

);

CREATE TABLE ProjedeCalisanlar(
  projeId INT NOT NULL ,
  gorevliId INT NOT NULL ,
  FOREIGN KEY(projeId) REFERENCES Projeler(binaId),
  FOREIGN KEY(gorevliId) REFERENCES Personel(Personel_id)
);

CREATE TABLE AlinanMalzemeler(
  islemId INT  IDENTITY(1,1) PRIMARY KEY ,
  malzemeId  INT NOT NULL,
  Adet INT NOT NULL,
  Tarih NVARCHAR(20) NOT NULL,
  Fiyat MONEY NOT NULL,
  gorevliId INT NOT NULL,
  FOREIGN KEY(malzemeId) REFERENCES MalzemeBilgi(malzemeId)
);