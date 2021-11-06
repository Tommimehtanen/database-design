--Tietokantojen perusteet 2020
--H4 T3
--tommi.mehtanen@tuni.fi

SELECT  book.title, sequel.title AS sequel_title
FROM book LEFT OUTER JOIN book AS sequel ON sequel.id = book.id +1
ORDER BY book.id; 