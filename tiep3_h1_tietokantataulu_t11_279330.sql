SELECT DISTINCT year, exhibition_name, first_name, last_name, artwork_name
FROM exhibition, artwork, artist
WHERE artwork.artwork_name = exhibition.exhibition_name
ORDER BY year AND last_name;