--Tietokantojen perusteet 2020
--Kysely 1 osa A
--tommi.mehtanen@tuni.fi

SELECT ljtunti.viikonpaiva AS viikonpaiva, ljtunti.alkamisaika AS alkamisaika, rlnimi, kesto
FROM ljtunti, kategoria, rltunti
WHERE ljtunti.rltunnus = rltunti.rltunnus AND rltunti.ktunnus = kategoria.ktunnus AND kategoria.knimi = 'Kehonhuolto'
ORDER BY ljtunti.viikonpaiva, alkamisaika, rlnimi;