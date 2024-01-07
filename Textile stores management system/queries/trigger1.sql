
-- CREATE TABLE deleted_musteri (
--     musteri_ID INT NOT NULL,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     meslek VARCHAR(20),ß
--     daire VARCHAR(50),
--     mahalle VARCHAR(20) NOT NULL,
--     sehir VARCHAR(20) NOT NULL,
--     email VARCHAR(50) NOT NULL,
--     phone VARCHAR(10) NOT NULL,
--     tarih DATE NOT NULL
-- );


-- create or replace function deleted_musteri()
-- returns trigger
-- language plpgsql
-- as $$
-- begin 
-- 	insert into deleted_musteri
-- 	VALUES (OLD.musteri_ID, OLD.first_name, OLD.last_name, OLD.meslek, OLD.daire,
--             OLD.mahalle, OLD.sehir, OLD.email, OLD.phone, current_date);
-- 	return new;
-- end;
-- $$


-- create trigger sil_musteri
-- 	after delete
-- 	on musteri
-- 	for each row 
-- 	execute procedure deleted_musteri();
-- delete from musteri where musteri_id=2006;  
select * from deleted_musteri;
