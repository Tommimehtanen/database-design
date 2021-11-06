--Tietokantojen perusteet 2020
--H4 T3
--tommi.mehtanen@tuni.fi

SELECT COUNT (*) AS artwork_count, MIN(value) AS min_value, MAX(value) AS max_value
FROM artwork;