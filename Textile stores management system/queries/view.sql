-- Her öğenin ve miktarın her biriyle eşlendiği dinamik güncellemeyle FATURA GÖRÜNÜMÜ

-- create or replace view toplam_siparisler AS
-- SELECT talep_etmek.item_id,
-- talep_etmek.musteri_id,
-- kargo.fiyat,
-- talep_etmek.miktar,
-- (talep_etmek.miktar * kargo.fiyat) AS toplam
-- FROM talep_etmek JOIN kargo 
-- on talep_etmek.Item_ID = kargo.Item_ID;

select * from toplam_siparisler;
