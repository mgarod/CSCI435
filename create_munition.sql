CREATE TABLE Munition(
	munition_id NUMBER NOT NULL PRIMARY KEY,
	m_cost NUMBER,
	m_name VARCHAR(20)
);

INSERT INTO Munition VALUES(101, 7000, 'AK-47');
INSERT INTO Munition VALUES(102, 3500, 'MP5');
INSERT INTO Munition VALUES(103, 2500, 'Mac-10');
INSERT INTO Munition VALUES(104, 6000, 'XM-1108');
INSERT INTO Munition VALUES(105, 5500, 'FAMAS');
INSERT INTO Munition VALUES(106, 200, 'Flashbang');
INSERT INTO Munition VALUES(107, 300, 'EMP Grenades');
INSERT INTO Munition VALUES(108, 325, 'Smoke Grenade');
INSERT INTO Munition VALUES(109, 800, 'Riot Shield');
INSERT INTO Munition VALUES(110, 750, 'Flak Jacket');
