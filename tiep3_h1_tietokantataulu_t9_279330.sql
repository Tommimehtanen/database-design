-- Tietokantojen perusteet 2020
-- H1 T1
-- tommi.mehtanen@tuni.fi (tuni-osoite)
CREATE TABLE piikkari(
	tunnus INT NOT NULL,
	nimi VARCHAR NOT NULL,
	tyyppi VARCHAR,
	hinta DECIMAL(5,2),
	PRIMARY KEY(tunnus)
);

INSERT INTO piikkari
VALUES ('1', 'X 10', 'pikajuoksu', '79.95');

INSERT INTO piikkari
VALUES ('4', 'ABC 101', 'pikajuoksu', '124.95');

INSERT INTO piikkari
VALUES ('6', 'ABC 201', 'hyppy', '159.00');

INSERT INTO piikkari
VALUES ('7', 'X 20', 'keskimatka');