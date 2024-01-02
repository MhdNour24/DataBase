--1 Tedarikçilerin isimleri ve verdikleri kargo türlerinin sayısı:
-- SELECT T.name, COUNT(G.gonderi_id) AS kargo_sayisi
-- FROM Tedarikci T
-- LEFT JOIN gonderiyor G ON T.tedarikci_ID = G.tedarikci_ID
-- GROUP BY T.name;
-- 2 Hangi şubenin hangi ürünleri ne kadar stokladığı:
-- SELECT s.name AS sube_adi, k.item_name, i.miktar
-- FROM icerir i
-- INNER JOIN sube s ON i.sube_ID = s.sube_ID
-- INNER JOIN kargo k ON i.item_ID = k.item_ID;
--3 Müşterilerin yaptığı taleplerin toplam tutarı:
-- SELECT t.musteri_ID, SUM(t.tutar) AS toplam_tutar
-- FROM talep_etmek t
-- GROUP BY t.musteri_ID;
-- 4 Kargoların hangi taşıma yöntemleriyle gönderildiği ve ortalama nakliye maliyeti:
-- SELECT gy.seyahat_sekli, AVG(gy.nakliye_malliyeti) AS ortalama_maliyet
-- FROM gonderiyor gy
-- GROUP BY gy.seyahat_sekli;
-- 5 musteri tablosundaki meslek sütununu, Calisan tablosundaki Teacher olarak belirtilen mesleğe sahip olan çalışanların müşteri tablosundaki aynı calisan_ID'lere sahip olan kayıtlarını 'Öğretmen' olarak günceller.
-- UPDATE musteri
-- SET meslek = 'Öğretmen'
-- WHERE meslek = 'Teacher';
-- 6 , Calisan tablosuna yeni_sutun adında bir VARCHAR türünde sütun ekler, ardından mevcut first_name ve last_name sütunlarındaki verileri birleştirerek yeni sütuna aktarır. Son olarak da bu yeni sütunu kaldırır.
 -- Yeni sütun ekleme
-- ALTER TABLE Calisan
-- ADD COLUMN yeni_sutun VARCHAR(50);

-- -- Veri doldurma
-- UPDATE Calisan
-- SET yeni_sutun = CONCAT(first_name, ' ', last_name);

-- -- Yeni sütunu kaldırma
-- ALTER TABLE Calisan
-- DROP COLUMN yeni_sutun;






