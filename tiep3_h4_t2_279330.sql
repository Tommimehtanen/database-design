--Tietokantojen perusteet 2020
--H4 T1
--tommi.mehtanen@tuni.fi

SELECT artwork_id, value, year_created
FROM artwork
WHERE value < 50000 and year_created > 1510
ORDER BY artwork_id;