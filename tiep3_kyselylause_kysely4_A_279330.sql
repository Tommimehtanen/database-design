--Tietokantojen perusteet 2020
--Kysely 4 A
--tommi.mehtanen@tuni.fi

SELECT kategoria.knimi AS knimi, COUNT(kategoria.ktunnus) AS lkm, MIN(kesto) AS minkesto, MAX(kesto) AS maxkesto
FROM kategoria, rltunti
WHERE kategoria.ktunnus = rltunti.ktunnus
GROUP BY kategoria.knimi
ORDER BY knimi;