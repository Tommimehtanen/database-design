--Tietokantojen perusteet 2020
--H5 T8
--tommi.mehtanen@tuni.fi

SELECT artwork.artwork_id AS artwork_id, artwork_name, technique, first_name, last_name
FROM artwork LEFT OUTER JOIN displayed_at ON displayed_at.artwork_id = artwork.artwork_id
LEFT OUTER JOIN exhibition ON exhibition.exhibition_id = displayed_at.exhibition_id
LEFT OUTER JOIN artist ON artist.artist_id = artwork.artist_id
GROUP BY artwork.artist_id, artwork.artwork_id, artist.first_name, artist.last_name
HAVING COUNT(displayed_at.artwork_id) = 1
ORDER BY artwork_id;
