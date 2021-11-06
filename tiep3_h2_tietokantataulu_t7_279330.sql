-- Tietokantojen perusteet 2020
-- H2 T7
-- tommi.mehtanen@tuni.fi 

SELECT artwork.artwork_id, artwork_name
FROM artwork LEFT OUTER JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
LEFT OUTER JOIN exhibition ON exhibition.exhibition_id = displayed_at.exhibition_id
where displayed_at.artwork_id IS NULL
ORDER BY artwork.artwork_id;