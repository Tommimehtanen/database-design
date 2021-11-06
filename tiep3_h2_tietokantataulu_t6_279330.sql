-- Tietokantojen perusteet 2020
-- H2 T6
-- tommi.mehtanen@tuni.fi 

SELECT DISTINCT artwork.artwork_id, artwork_name
FROM artwork, exhibition, artist, displayed_at
WHERE artwork.artwork_id = displayed_at.artwork_id AND exhibition.exhibition_id = displayed_at.exhibition_id
AND artwork.artist_id = artist.artist_id
ORDER BY artwork.artwork_id;