--Tietokantojen perusteet 2020
--Kysely 2 osa B
--tommi.mehtanen@tuni.fi

SELECT rltunti.rlnimi AS rlnimi, kesto, knimi
FROM rltunti, kategoria
WHERE kesto = (SELECT MIN(kesto) FROM rltunti) AND kategoria.ktunnus = rltunti.ktunnus
ORDER BY rlnimi;
