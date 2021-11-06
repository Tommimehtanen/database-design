--Tietokantojen perusteet 2020
--H5 T4
--tommi.mehtanen@tuni.fi

SELECT artist.artist_id as artist_id, artist.first_name, artist.last_name
FROM artist, artwork
WHERE artist.artist_id = artwork.artist_id AND technique = 'painting'
EXCEPT
SELECT artist.artist_id as artist_id, artist.first_name, artist.last_name
FROM artist, artwork
WHERE artist.artist_id = artwork.artist_id AND technique <> 'painting'
ORDER BY artist_id;
