--Tietokantojen perusteet 2020
--Kysely 2 osa A
--tommi.mehtanen@tuni.fi

SELECT rltunti.rlnimi AS rlnimi, kesto
FROM rltunti
WHERE kesto = (SELECT MIN(kesto) FROM rltunti)
ORDER BY rlnimi;
