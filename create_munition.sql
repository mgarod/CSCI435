CREATE TABLE Munition(
	munition_id NUMBER NOT NULL PRIMARY KEY,
	m_cost NUMBER,
	m_name VARCHAR(20)
);

INSERT INTO Munition VALUES(1, 7000, 'AK-47');
INSERT INTO Munition VALUES(2, 3500, 'MP5');
INSERT INTO Munition VALUES(3, 2500, 'Mac-10');
INSERT INTO Munition VALUES(4, 6000, 'XM-1108');
INSERT INTO Munition VALUES(5, 5500, 'FAMAS');
INSERT INTO Munition VALUES(6, 200, 'Flashbang');
INSERT INTO Munition VALUES(7, 300, 'EMP Grenades');
INSERT INTO Munition VALUES(8, 325, 'Smoke Grenade');
INSERT INTO Munition VALUES(9, 800, 'Riot Shield');
INSERT INTO Munition VALUES(10, 750, 'Flak Jacket');
