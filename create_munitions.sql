CREATE TABLE Munitions(
	munition_id NUMBER NOT NULL PRIMARY KEY,
	m_cost NUMBER,
	m_name VARCHAR(20)
);

INSERT INTO Munitions VALUES(
	1,
	7000,
	'AK-47'
);

INSERT INTO Munitions VALUES(
	2,
	3500,
	'MP5'
);

INSERT INTO Munitions VALUES(
	3,
	2500,
	'Mac-10'
);

INSERT INTO Munitions VALUES(
	4,
	6000,
	'XM-1108'
);

INSERT INTO Munitions VALUES(
	5,
	5500,
	'FAMAS'
);

INSERT INTO Munitions VALUES(
	6,
	200,
	'Flashbang'
);

INSERT INTO Munitions VALUES(
	7,
	300,
	'EMP Grenades'
);

INSERT INTO Munitions VALUES(
	8,
	325,
	'Smoke Grenade'
);

INSERT INTO Munitions VALUES(
	9,
	800,
	'Riot Shield'
);

INSERT INTO Munitions VALUES(
	10,
	750,
	'Flak Jackets'
);

SELECT count(munition_id)
FROM Munitions;