CREATE TABLE Store(
	store_id NUMBER NOT NULL PRIMARY KEY,
	store_name VARCHAR2(30) NOT NULL,
	store_loc NUMBER NOT NULL,
	CONSTRAINT fk_sloc
		FOREIGN KEY (store_loc)
		REFERENCES GameLocation (location_id)
		ON DELETE CASCADE
);

INSERT INTO Store VALUES(11, 'Walmart', 522);
INSERT INTO Store VALUES(12, 'K-Mart', 527);
INSERT INTO Store VALUES(13, 'BestBuy', 531);
INSERT INTO Store VALUES(14, 'Newegg', 534);
INSERT INTO Store VALUES(15, 'PC Richards', 537);
INSERT INTO Store VALUES(16, 'Target', 539);
INSERT INTO Store VALUES(17, 'Macy''s', 524);
INSERT INTO Store VALUES(18, 'Target', 528);
INSERT INTO Store VALUES(19, 'JCPenny', 502);
INSERT INTO Store VALUES(20, 'Amazon', 513);
