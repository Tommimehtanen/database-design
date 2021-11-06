--Tietokantojen perusteet 2020
--H6 T4
--tommi.mehtanen@tuni.fi

SELECT artwork.artwork_id AS artwork_id, artwork_name
FROM artwork
WHERE NOT EXISTS
(SELECT* FROM displayed_at
WHERE artwork.artwork_id = displayed_at.artwork_id)
ORDER BY artwork_id;