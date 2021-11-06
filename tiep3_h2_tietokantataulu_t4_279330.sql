-- Tietokantojen perusteet 2020
-- H2 T4
-- tommi.mehtanen@tuni.fi 

SELECT year, exhibition_name, first_name, last_name, artwork_name
FROM exhibition, artwork, artist, displayed_at
WHERE displayed_at.exhibition_id = exhibition.exhibition_id AND artwork.artwork_id = displayed_at.artwork_id
AND artwork.artist_id = artist.artist_id
ORDER BY year, last_name;