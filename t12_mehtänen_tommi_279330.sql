--T1.2
--Mehtänen Tommi 279330

SELECT asiakas.asiakastunnus AS asiakkaan_tunnus, asiakas.nimi AS asiakkaan_nimi
FROM asiakas, tili_omistaja, tili
WHERE asiakas.asiakastunnus = tili_omistaja.asiakastunnus AND tili_omistaja.tilinumero = tili.tilinumero AND tili.tilityyppi = 'A'
INTERSECT
SELECT asiakas.asiakastunnus AS asiakkaan_tunnus, asiakas.nimi AS asiakkaan_nimi
FROM asiakas, tili_omistaja, tili
WHERE asiakas.asiakastunnus = tili_omistaja.asiakastunnus AND tili_omistaja.tilinumero = tili.tilinumero AND tili.tilityyppi = 'B'
ORDER BY asiakkaan_tunnus;
