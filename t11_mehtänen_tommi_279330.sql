--T1.1
--Mehtänen Tommi 279330

SELECT tili.tilinumero, saldo
FROM tili, tili_omistaja
WHERE tili.tilityyppi = 'A' AND tili.tilinumero = tili_omistaja.tilinumero AND tili_omistaja.asiakastunnus IN ('100', '101')
ORDER BY tili.tilinumero;