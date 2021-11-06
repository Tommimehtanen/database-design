--Tietokantojen perusteet 2020
--Kysely 3
--tommi.mehtanen@tuni.fi

SELECT ohjaaja.otunnus AS ohjtunnus, ohjaaja.onimi AS ohjnimi
FROM ohjaaja, voi_ohjata, rltunti, kategoria
WHERE ohjaaja.otunnus = voi_ohjata.otunnus AND voi_ohjata.rltunnus = rltunti.rltunnus AND kategoria.ktunnus = rltunti.ktunnus AND kategoria.knimi = 'Spinning' 
EXCEPT
SELECT ohjaaja.otunnus AS ohjtunnus, ohjaaja.onimi AS ohjnimi
FROM ohjaaja, voi_ohjata, rltunti, kategoria
WHERE ohjaaja.otunnus = voi_ohjata.otunnus AND voi_ohjata.rltunnus = rltunti.rltunnus AND kategoria.ktunnus = rltunti.ktunnus AND kategoria.knimi <> 'Spinning'
ORDER BY ohjtunnus;
