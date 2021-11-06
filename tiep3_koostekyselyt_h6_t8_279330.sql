--Tietokantojen perusteet 2020
--H6 T7
--tommi.mehtanen@tuni.fi

SELECT artwork_name, value, year_created, first_name, last_name
FROM artwork INNER JOIN artist ON artist.artist_id = artwork.artist_id
WHERE value = (SELECT MAX(value)FROM artwork);
