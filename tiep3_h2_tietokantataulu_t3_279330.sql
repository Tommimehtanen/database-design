-- Tietokantojen perusteet 2020
-- H2 T2
-- tommi.mehtanen@tuni.fi 
select distinct artwork_id, artwork_name, first_name, last_name, year_created
from artwork, artist
where artwork.artist_id = artist.artist_id
and artwork.technique = 'painting'
order by artwork_id;
