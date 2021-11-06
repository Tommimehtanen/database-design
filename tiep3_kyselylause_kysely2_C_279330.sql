--Tietokantojen perusteet 2020
--Kysely 2 osa C
--tommi.mehtanen@tuni.fi



SELECT rltunti.rlnimi AS rlnimi, kesto, knimi
FROM rltunti, kategoria
WHERE kesto = (SELECT MIN(kesto) FROM rltunti)  AND kategoria.knimi = 'Kehonhuolto'
ORDER BY rlnimi;
