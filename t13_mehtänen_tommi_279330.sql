--T1.3
--Mehtänen Tommi 279330

SELECT pankkikonttori.nimi as konttorinimi, COUNT(DISTINCT(asiakas)) as asiakas_lkm, COUNT(tili) AS tili_lkm
FROM pankkikonttori, asiakas, tili, tili_omistaja
WHERE asiakas.asiakastunnus = tili_omistaja.asiakastunnus AND tili_omistaja.tilinumero = tili.tilinumero AND tili.myontajakonttori = pankkikonttori. konttoritunnus
GROUP BY pankkikonttori.nimi
ORDER BY pankkikonttori.nimi;
