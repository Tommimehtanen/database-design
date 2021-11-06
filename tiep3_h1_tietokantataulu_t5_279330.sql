-- Tietokantojen perusteet 2020
-- H1 T1
-- tommi.mehtanen@tuni.fi (tuni-osoite)

SELECT title, release_date
FROM movie
WHERE release_date > '1980-01-01'
ORDER BY release_date ASC;

