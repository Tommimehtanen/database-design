--Tietokantojen perusteet 2020
--H5 T3
--tommi.mehtanen@tuni.fi

SELECT technique, COUNT(*) as count
FROM artwork
GROUP BY technique
ORDER BY technique;
