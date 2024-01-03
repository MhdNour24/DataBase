-- CREATE TABLE fatura (
--   fatura_ID int NOT NULL primary key,
--   banka varchar(20) ,
--   fatura_tarihi date ,
--   tutar float NOT NULL,
--   musteri_ID int NOT NULL,
--   FOREIGN KEY (musteri_ID) REFERENCES musteri(musteri_ID) on delete cascade
-- );

-- INSERT INTO fatura (fatura_ID, banka, fatura_tarihi, tutar, musteri_ID) VALUES
-- (9002, 'HDFC', '2022-10-16', 8348, 2002),
-- (9003, 'SBI', '2022-10-25', 20800, 2003),
-- (9004, 'HDFC', '2022-08-22',  9500, 2004),
-- (9005, 'SBI', '2022-10-09', 4250, 2005),
-- (9006, 'HDFC', '2022-10-07',  22592, 2006),
-- (9007, 'ICICI', '2022-08-21', 30797, 2007),
-- (9008, 'HDFC', '2022-07-19',  28200, 2008),
-- (9009, 'SBI', '2022-08-31', 6500, 2009),
-- (9010, 'ICICI', '2022-08-02' , 7350, 2010),
-- (9011, 'SBI', '2022-10-07',  15588, 2011),
-- (9012, 'HDFC', '2022-10-17', 14995, 2012),
-- (9013, 'ICICI', '2022-09-18',  10250, 2013),
-- (9014, 'ICICI', '2022-08-29', 11200, 2014),
-- (9015, 'SBI', '2022-10-30', 20500, 2015);
delete from musteri where musteri_id=2003; 
select * from fatura;
