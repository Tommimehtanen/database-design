--Tommi Mehtänen
--tommi.mehtanen@tuni.fi

SELECT viini.nimi,viinitila.nimi AS tila
FROM viini,viinitila
WHERE viini.vttunnus = viinitila.vttunnus
ORDER BY viini.nimi;
