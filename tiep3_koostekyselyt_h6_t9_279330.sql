--Tietokantojen perusteet 2020
--H6 T9
--tommi.mehtanen@tuni.fi

SELECT DISTINCT artwork.artwork_id AS artwork_id, artwork_name
FROM artwork, displayed_at
WHERE artwork.artwork_id =  displayed_at.artwork_id
GROUP BY artwork.artwork_id
HAVING COUNT(*) >= ALL (SELECT COUNT(*) FROM artwork)
ORDER BY artwork.artwork_id;