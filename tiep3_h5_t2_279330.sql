--Tietokantojen perusteet 2020
--H5 T2
--tommi.mehtanen@tuni.fi

SELECT artwork_name, technique
FROM artwork
WHERE technique IN ('painting', 'drawing')
ORDER BY technique, artwork_name;