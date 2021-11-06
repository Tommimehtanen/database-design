--Tietokantojen perusteet 2020
--H6 T7
--tommi.mehtanen@tuni.fi

SELECT artwork_name, value, year_created
FROM artwork
WHERE value = (SELECT MAX(value)FROM artwork);
