--Tietokantojen perusteet 2020
--Kysely 1 osa B
--tommi.mehtanen@tuni.fi


SELECT ljtunti.viikonpaiva AS viikonpaiva, ljtunti.alkamisaika AS alkamisaika, rlnimi, kesto, snimi
FROM ljtunti, kategoria, rltunti, sali
WHERE ljtunti.rltunnus = rltunti.rltunnus AND rltunti.ktunnus = kategoria.ktunnus AND kategoria.knimi = 'Kehonhuolto' 
AND sali.stunnus = ljtunti.stunnus AND (ljtunti.paattymisaika < '10:00' OR ljtunti.alkamisaika > '18:00')
ORDER BY ljtunti.viikonpaiva, alkamisaika, rlnimi;