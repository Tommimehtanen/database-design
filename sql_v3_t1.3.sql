--Tommi Mehtänen
--tommi.mehtanen@tuni.fi

SELECT viinitila.nimi AS vtnimi,viinitila.maa AS maa,o.nimi AS vnimi
FROM viinitila LEFT OUTER JOIN viini o ON 
viinitila.vttunnus = o.vttunnus WHERE (viinitila.maa = 'Saksa' OR viinitila.maa = 'Ranska')
ORDER BY vtnimi,vnimi;