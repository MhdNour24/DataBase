-- verilen müşteri ID'si ve sipariş ID'si için talep_etmek tablosundan ilgili siparişin toplam tutarını hesaplar.
CREATE OR REPLACE FUNCTION hesapla_tutar(musteriID INT, siparisID INT)
RETURNS FLOAT
LANGUAGE plpgsql
AS $$
DECLARE 
    total_amount FLOAT;
BEGIN
    SELECT SUM(fiyat * miktar) INTO total_amount
    FROM talep_etmek
    WHERE musteri_ID = musteriID AND item_ID = siparisID;

    RETURN total_amount;
END;
$$;

SELECT hesapla_tutar(2001, 4002) AS toplam_tutar ;
