--Tietokantojen perusteet 2020
--H5 T6
--tommi.mehtanen@tuni.fi

SELECT artwork.artwork_id AS artwork_id, artwork_name, COUNT(exhibition.exhibition_id) AS exhibition_count
FROM artwork LEFT OUTER JOIN displayed_at ON (displayed_at.artwork_id =  artwork.artwork_id)
LEFT OUTER JOIN exhibition ON (exhibition.exhibition_id = displayed_at.exhibition_id)
GROUP BY artwork.artwork_id
ORDER BY artwork_id;
