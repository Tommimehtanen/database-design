-- Tietokantojen perusteet 2020
-- H2 T8
-- tommi.mehtanen@tuni.fi 

SELECT artwork.artwork_id, artwork_name, exhibition.exhibition_id, exhibition_name, year
FROM artwork LEFT OUTER JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
LEFT OUTER JOIN exhibition ON exhibition.exhibition_id = displayed_at.exhibition_id
ORDER BY artwork.artwork_id, exhibition.exhibition_id;