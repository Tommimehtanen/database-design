--Tietokantojen perusteet 2020
--H4 T2
--tommi.mehtanen@tuni.fi

SELECT  book.title, predecessor.title AS predecessor_title
FROM book LEFT OUTER JOIN book AS predecessor ON book.predecessor_id = predecessor.id
ORDER BY book.id; 