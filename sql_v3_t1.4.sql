--Tommi Mehtänen
--tommi.mehtanen@tuni.fi


SELECT rypalelajike.nimi
FROM rypalelajike,sisaltaa
WHERE rypalelajike.rtunnus = sisaltaa.rtunnus
GROUP BY rypalelajike.nimi
HAVING (COUNT (rypalelajike.nimi)>1);