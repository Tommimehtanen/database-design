--Tietokantojen perusteet 2020
--H5 T8
--tommi.mehtanen@tuni.fi

SELECT artwork.artwork_id AS artwork_id, artwork_name
FROM artwork
WHERE artwork_id IN 
(SELECT artwork_id FROM displayed_at)
ORDER BY artwork_id;