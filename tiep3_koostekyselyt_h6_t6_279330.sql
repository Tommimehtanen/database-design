--Tietokantojen perusteet 2020
--H6 T5
--tommi.mehtanen@tuni.fi

SELECT artist.artist_id AS artist_id, first_name, last_name
FROM artist
WHERE artist_id IN (
SELECT artwork.artist_id FROM artwork WHERE technique = 'painting')
EXCEPT
SELECT artist.artist_id AS artist_id, first_name, last_name
FROM artist
WHERE artist_id IN (
SELECT artwork.artist_id FROM artwork WHERE technique = 'drawing')

ORDER BY artist_id;