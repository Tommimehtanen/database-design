--Tietokantojen perusteet 2020
--H4 T4
--tommi.mehtanen@tuni.fi

SELECT technique, artwork_name, last_name
FROM artwork, artist
WHERE (artwork.technique = 'drawing' OR artwork.technique = 'sculpture') AND artist.artist_id = artwork.artist_id
ORDER BY technique, artwork_name;