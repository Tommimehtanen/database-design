--Tietokantojen perusteet 2020
--H5 T4
--tommi.mehtanen@tuni.fi

SELECT artist.artist_id as artist_id, first_name, last_name, COUNT(*) AS artwork_count, 
MIN(value) AS min_value, MAX(value) AS max_value
FROM artist INNER JOIN artwork ON artist.artist_id = artwork.artist_id
GROUP BY artist.artist_id
ORDER BY artist_id;
