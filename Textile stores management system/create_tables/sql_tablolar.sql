CREATE TABLE Tedarikci (
  tedarikci_ID int not null primary key,
  name varchar(50) not null,
  adres varchar(50) not null
);
INSERT INTO Tedarikci (tedarikci_ID, name, adres) VALUES
(7001, 'Sukeerthan', 'Haritasa Apartments'),
(7002, 'Monisha', 'Mahaveer Marvel'),
(7003, 'Kavana', 'Tvs Emarold jordin'),
(7004, 'Roshan', 'Thayappa Garden'),
(7005, 'Satvik', 'Bhavani Apartments');

CREATE TABLE kargo (
  item_ID int not null primary key,
  item_name varchar(30) ,
  fiyat float
);

INSERT INTO kargo (item_ID, item_name, fiyat) VALUES
(4000, 'Shirt', 900),
(4001, 'Shirt', 1499),
(4002, 'Shirt', 999),
(4010, 'Pant', 2999),
(4011, 'Pant', 4000),
(4030, 'Coat', 15000),
(4041, 'Gown', 7999),
(4042, 'Gown', 4999),
(4050, 'Cap/Hat', 499),
(4060, 'Sweater', 999),
(4061, 'Sweater', 1799),
(4070, 'Jacket', 900),
(4071, 'Jacket', 600),
(4080, 'Legging', 400),
(4081, 'Legging', 349),
(4082, 'Legging', 499),
(4083, 'Legging', 550),
(4090, 'Jeggings', 700),
(4091, 'Jeggings', 599),
(4092, 'Jeggings', 445),
(4100, 'Tops', 250),
(4101, 'Tops', 399),
(4102, 'Tops', 549),
(4110, 'Saree', 1749),
(4111, 'Saree', 2499),
(4112, 'Saree', 3999),
(4120, 'Chudidhar', 799),
(4121, 'Chudidhar', 999),
(4122, 'Chudidhar', 1599),
(4130, 'Frock', 1199),
(4131, 'Frock', 1499),
(4140, 'Lehenga', 3000),
(4150, 'Dhoti', 400),
(4151, 'Dhoti', 500),
(4160, 'Tshirt', 799),
(4161, 'Tshirt', 699),
(4162, 'Tshirt', 1000),
(4163, 'Tshirt', 900),
(4170, 'Shorts', 500),
(4171, 'Shorts', 599),
(4180, 'Skirt', 699),
(4181, 'Skirt', 700),
(4190, 'Pyjama', 650),
(4200, 'Kurta', 999),
(4201, 'Kurta', 799),
(4300, 'Palazzo', 749),
(4400, 'Cigar Pant', 1999);


CREATE TABLE Kategori (
  item_ID int not null,
  item_name varchar(30) not null,
  cinsiyet varchar(1) NOT NULL,
  marka varchar(20) not null,
  renk varchar(20) not null,
  boyut varchar(10) not null,
  FOREIGN KEY (item_ID) REFERENCES kargo(item_ID)
);
INSERT INTO Kategori (item_ID, item_name, cinsiyet, marka, renk, boyut) VALUES
(4000, 'Shirt', 'M', 'Ramraj', 'Red', '38'),
(4001, 'Shirt', 'M', 'Allen Solly', 'Blue', '40'),
(4002, 'Shirt', 'M', 'Peterson', 'Green', '42'),
(4010, 'Pant', 'M', 'Buffallo', 'Black', '38'),
(4011, 'Pant', 'M', 'Polo', 'Brown', '40'),
(4030, 'Coat', 'F', 'Raymond', 'Grey', 'XXL'),
(4041, 'Gown', 'F', 'Chennai Silks', 'Pink', 'XXL'),
(4042, 'Gown', 'M', 'ARRS Silks', 'Green', 'XL'),
(4050, 'Cap/Hat', 'M', 'MAX', 'Cyan', ''),
(4060, 'Sweater', 'F', 'Deccathlon', 'Navyblue', 'XL'),
(4061, 'Sweater', 'M', 'Deccathlon', 'Light_Brown', 'L'),
(4070, 'Jacket', 'M', 'Kumaran Tex', 'Red', 'L'),
(4071, 'Jacket', 'M', 'Vittal Dresses', 'Brown', 'XXL'),
(4080, 'Legging', 'F', 'Chennai Silks', 'Maroon', 'XL'),
(4081, 'Legging', 'F', 'ARRS Silks', 'White', 'M');

CREATE TABLE Calisan (
  calisan_ID int not null primary key,
  first_name varchar(30) ,
  last_name varchar(30),
  cinsiyet varchar(1) not null,
  yonetici_ID int not null,
  maas float NOT NULL,
  dogum_tarihi date not null,
  adres varchar(50) not null,
  telefon_no varchar(10) not null
);


INSERT INTO Calisan (calisan_ID, first_name, last_name, yonetici_ID, cinsiyet, maas, dogum_tarihi, adres, telefon_no) VALUES
(1001, 'Akshay', 'Kumar', 1010, 'M', 69709, '1980-01-23', 'MG Road', '8596092928'),
(1002, 'Akarsh', 'Poojari', 0, 'M', 112526, '1970-06-12', 'Basavangudi', '7152011668'),
(1003, 'Bhanu', 'Preetham', 1002, 'M', 77901, '1990-03-15', 'Banashankari', '7479776634'),
(1004, 'Bhavya ', 'Shree', 1007, 'F', 67891, '1984-10-17', 'RR Nagar', '3391172715'),
(1005, 'Milan', '', 1002, 'M', 79103, '1987-09-27', 'Basavangudi', '5605646750'),
(1006, 'Meenakshi', 'Saravanan', 1007, 'F', 59795, '1986-10-08', 'Banashankari', '2015362539'),
(1007, 'Ramya', 'Pandian', 0, 'F', 115297, '1971-02-19', 'Banashankari', '9525847821'),
(1008, 'Nisha ', 'Advani', 1007, 'F', 55859, '1989-02-28', 'Basavangudi', '5884750721'),
(1009, 'Surendra', 'Jain', 1013, 'M', 63712, '1992-03-14', 'RR Nagar', '5002946135'),
(1010, 'Shina', 'Sudhir', 0, 'F', 109979, '1974-11-23', 'RR Nagar', '8954874497'),
(1011, 'Tissa', 'Varghese', 1013, 'F', 75312, '1988-12-04', 'MG Road', '7654873190'),
(1012, 'Navaneeth', 'Purohit', 1010, 'M', 60593, '1993-12-07', 'MG Road', '1480171904'),
(1013, 'Yuvraj', 'Singh', 0, 'M', 118701, '1975-05-23', 'Banashankari', '3791768076'),
(1014, 'Meow', 'Jenny', 1013, 'F', 200000, '2000-03-31', 'Meow Enclave', '9876543210'),
(1015, 'Lithik', 'Raj', 1010, 'M', 80000, '1990-06-12', 'Netaji street', '7689045321');

CREATE TABLE sube (
  sube_ID int NOT NULL,
  name varchar(50),
  adres varchar(50),
  yonetici_ID int NOT NULL
);

ALTER TABLE sube
  ADD PRIMARY KEY (sube_ID);
  
 ALTER TABLE sube
  ADD CONSTRAINT yonetici_ID FOREIGN KEY (yonetici_ID) REFERENCES Calisan(calisan_ID) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO sube (sube_ID, name, adres, yonetici_ID) VALUES
(6001, 'Bannerghatta', 'BG Road', 1002),
(6002, 'Jayanagar', 'Near Cool Joint', 1007),
(6003, 'Rajajinagar', 'Opposite to Rajarajeshwari Medical College', 1013),
(6004, 'Malleshwaram', 'Near Railway Station', 1010);

CREATE TABLE gonderi (
  gonderi_ID int NOT NULL primary key,
  sube_ID int NOT NULL,
  tarih date ,
  FOREIGN KEY (sube_ID) REFERENCES sube(sube_ID)
);
INSERT INTO gonderi (gonderi_ID, tarih, sube_ID) VALUES
(8001, '2022-05-22', 6001),
(8002, '2022-06-30', 6001),
(8003, '2022-09-05', 6001),
(8004, '2022-12-05', 6002),
(8005, '2022-04-21', 6004),
(8006, '2022-06-06', 6003),
(8007, '2022-06-25', 6004),
(8008, '2022-06-16', 6002),
(8009, '2022-05-31', 6003),
(8010, '2022-04-27', 6004);

CREATE TABLE musteri (
  musteri_ID int NOT NULL primary key,
  first_name varchar(50),
  last_name varchar(50),
  meslek varchar(20) DEFAULT NULL,
  daire varchar(50) DEFAULT NULL,
  mahalle varchar(20) not null,
  sehir varchar(20) not null,
  email varchar(50) not null,
  phone varchar(10) not null,
  tarih date NOT NULL,
  calisan_ID int NOT NULL,
  FOREIGN KEY (calisan_ID) REFERENCES Calisan(calisan_ID)
);

INSERT INTO musteri (musteri_ID, first_name, last_name, meslek, daire, mahalle, sehir, email, phone, tarih, calisan_ID) VALUES
(2001, 'Sujatha', 'Mohan', 'Doctor', 'Vijay Apartment', 'Bilekahalli', 'Bangalore', 'Sujatha2022  @gmail.com', '1234567890', '2022-09-12', 1002),
(2002, 'Jhanavhi', '', 'Teacher', 'Jahnavi Enclave', 'Begur', 'Bangalore', 'Jhanavhi2022  @gmail.com', '9876543210', '2022-10-16', 1013),
(2003, 'Mohan ', 'Raj', 'Engineer', 'Vishwas Apartments', 'Hongasandra', 'Bangalore', 'Mohan 2022  @gmail.com', '8654432318', '2022-10-25', 1001),
(2004, 'Adarsh', 'Liju', 'Software Engineer', 'Vashist Apartments', 'Gottigere', 'Bangalore', 'Adarsh2022  @gmail.com', '8763313499', '2022-08-22', 1003),
(2005, 'Vignesh', 'Sheshadri', 'Teacher', 'Shuddha Shelters', 'Arikere', 'Bangalore', 'Vignesh2022  @gmail.com', '2454676898', '2022-10-09', 1005),
(2006, 'Harsh ', 'Chowdhary', 'Doctor', 'Vishwas Apartments', 'Hulimavu', 'Bangalore', 'Harsh 2022  @gmail.com', '7364837638', '2022-10-07', 1006),
(2007, 'Rohith', 'Jain', 'Software Engineer', 'Hareetas', 'Hongasandra', 'Bangalore', 'Rohith2022  @gmail.com', '5365384899', '2022-08-21', 1007),
(2008, 'Himanshu', '', 'Engineer', 'Nandana Greens', 'Bilekahalli', 'Bangalore', 'Himanshu2022  @gmail.com', '7259966769', '2022-07-19', 1013),
(2009, 'Sutharsan', 'Raj', 'Student', 'Vijay apartment', 'Begur', 'Bangalore', 'Sutharsan2022  @gmail.com', '8396364290', '2022-08-31', 1004),
(2010, 'Kavi', 'Priya', 'Teacher', 'Vishwas Apartments', 'Hongasandra', 'Bangalore', 'Kavi2022  @gmail.com', '7678347343', '2022-08-02', 1013),
(2011, 'Varuna', 'Shree', 'Student', 'Hasmitha Nandana', 'Gottigere', 'Bangalore', 'Varuna2022  @gmail.com', '2646747346', '2022-10-07', 1013),
(2012, 'Gopinath', 'Gokul', 'Doctor', 'Prestige Song of South', 'Arekere', 'Bangalore', 'Gopinath2022  @gmail.com', '8464987736', '2022-10-17', 1009),
(2013, 'Krishna', 'Kumar', 'Student', 'Uday Apartments', 'Arekere', 'Bangalore', 'Krishna2022  @gmail.com', '4567893210', '2022-09-18', 1011),
(2014, 'Divya', 'Shree', 'Doctor', 'Prestige Song of South', 'Hulimavu', 'Bangalore', 'Divya2022  @gmail.com', '8664313546', '2022-08-29', 1012),
(2015, 'Siddharth', 'Seetharaman', 'Engineer', 'Pride Apartments', 'Hulimavu', 'Bangalore', 'Siddharth2022  @gmail.com', '8765432345', '2022-10-30', 1005),
(2016, 'Gokul', 'Sreenath', 'Student', 'Hasmitha Nandana', 'Begur', 'Bangalore', 'Gokul2022  @gmail.com', '6432469890', '2022-08-07', 1013),
(2017, 'Ramesh', 'Agarwal', 'Activist', 'Anugraha', 'Hongasandra', 'Bangalore', 'Ramesh2022  @gmail.com', '8632145805', '2022-09-23', 1004),
(2018, 'Suresh', 'Sathish', 'Teacher', 'Phoenix One', 'Bilekahalli', 'Bangalore', 'Suresh2022  @gmail.com', '7332668789', '2022-10-27', 1001),
(2019, 'Om', 'Katkam', 'Driver', 'Brigade Millenium', 'Gottigere', 'Bangalore', 'Om2022  @gmail.com', '1298765235', '2022-09-26', 1003),
(2020, 'Shashank', 'Singh', 'Driver', 'Pride Apartments', 'Arekere', 'Bangalore', 'Shashank2022  @gmail.com', '9876542345', '2022-08-14', 1006),
(2021, 'Rama', 'Krishna', 'Musician', 'Dwaraka Nilaya', 'Girinagar', 'Bangalore', 'ramakrishna2002@gmail.com', '8907564321', '2022-11-23', 1004),
(2022, 'Jenny', 'Meow', 'Pilot', 'Jenny Enclave', 'Buckingham Palace', 'Paris', 'jenny2022@gmail.com', '7259907510', '2022-11-19', 1007);

CREATE TABLE fatura (
  fatura_ID int NOT NULL primary key,
  banka varchar(20) ,
  fatura_tarihi date ,
  tutar float NOT NULL,
  musteri_ID int NOT NULL,
  FOREIGN KEY (musteri_ID) REFERENCES musteri(musteri_ID)
);

INSERT INTO fatura (fatura_ID, banka, fatura_tarihi, tutar, musteri_ID) VALUES
(9002, 'HDFC', '2022-10-16', 8348, 2002),
(9003, 'SBI', '2022-10-25', 20800, 2003),
(9004, 'HDFC', '2022-08-22',  9500, 2004),
(9005, 'SBI', '2022-10-09', 4250, 2005),
(9006, 'HDFC', '2022-10-07',  22592, 2006),
(9007, 'ICICI', '2022-08-21', 30797, 2007),
(9008, 'HDFC', '2022-07-19',  28200, 2008),
(9009, 'SBI', '2022-08-31', 6500, 2009),
(9010, 'ICICI', '2022-08-02' , 7350, 2010),
(9011, 'SBI', '2022-10-07',  15588, 2011),
(9012, 'HDFC', '2022-10-17', 14995, 2012),
(9013, 'ICICI', '2022-09-18',  10250, 2013),
(9014, 'ICICI', '2022-08-29', 11200, 2014),
(9015, 'SBI', '2022-10-30', 20500, 2015);

CREATE TABLE gonderiyor(
  nakliye_malliyeti float DEFAULT NULL,
  seyahat_sekli varchar(255) DEFAULT NULL,
  tedarikci_ID int NOT NULL,
  gonderi_id int NOT NULL 
);	

ALTER TABLE gonderiyor
  ADD PRIMARY KEY (tedarikci_ID,gonderi_id);

INSERT INTO gonderiyor (nakliye_malliyeti, seyahat_sekli, tedarikci_ID, gonderi_id) VALUES
(5489, 'Roadways', 7001, 8005),
(4000, 'Airways', 7001, 8006),
(6597, 'Railways', 7002, 8001),
(870, 'Railways', 7002, 8009),
(5500, 'Railways', 7003, 8004),
(5500, 'Railways', 7003, 8008),
(7000, 'Airways', 7004, 8003),
(3500, 'Roadways', 7004, 8007),
(6290, 'Roadways', 7005, 8002),
(6290, 'Waterways', 7005, 8010);

CREATE TABLE icerir (
  sube_ID int NOT NULL,
  item_ID int NOT NULL,
  miktar int NOT NULL
);

INSERT INTO icerir (sube_ID, item_ID, miktar) VALUES
(6001, 4002, 32),
(6001, 4011, 32),
(6001, 4041, 30),
(6001, 4050, 29),
(6001, 4081, 29),
(6001, 4082, 34),
(6001, 4090, 26),
(6001, 4100, 37),
(6001, 4101, 32),
(6001, 4111, 33),
(6001, 4130, 22),
(6001, 4161, 25),
(6001, 4162, 26),
(6001, 4170, 27),
(6001, 4181, 36),
(6001, 4201, 24),
(6001, 4300, 30),
(6002, 4010, 46),
(6002, 4030, 43),
(6002, 4042, 43),
(6002, 4061, 44);

ALTER TABLE icerir
  ADD PRIMARY KEY (sube_ID,item_ID);

CREATE TABLE talep_etmek (
   musteri_ID int NOT NULL,
  item_ID int NOT NULL,
  fiyat float,
  miktar int NOT NULL,
  tarih date ,
  tutar float DEFAULT NULL
);


INSERT INTO talep_etmek (musteri_ID, item_ID, fiyat, miktar, tarih, tutar) VALUES
(2001, 4002, 999, 3, '2022-12-09', 2997),
(2001, 4011, 4000, 4, '2022-12-09', 16000),
(2001, 4090, 700, 10, '2022-12-09', 7000),
(2002, 4002, 999, 2, '2022-10-16', 2000),
(2002, 4080, 400, 4, '2022-08-16', 1600),
(2002, 4102, 549, 5, '2022-10-16', 2750),
(2002, 4121, 999, 2, '2022-10-16', 1998),
(2003, 4000, 900, 10, '2022-10-25', 8000),
(2003, 4090, 700, 7, '2022-10-25', 4900),
(2003, 4151, 500, 5, '2022-10-25', 2500),
(2003, 4171, 599, 9, '2022-10-25', 5400),
(2004, 4082, 499, 12, '2022-08-22', 6000),
(2004, 4170, 500, 7, '2022-08-22', 3500),
(2005, 4002, 999, 1, '2022-09-10', 1000),
(2005, 4081, 349, 5, '2022-09-10', 1750),
(2005, 4082, 499, 3, '2022-09-10', 1500),
(2006, 4120, 799, 7, '2022-07-10', 5600);

ALTER TABLE talep_etmek
  ADD PRIMARY KEY (musteri_ID,item_ID);
