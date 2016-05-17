-- Questions:
-- Find the number of players who have funds greater than 30000.
SELECT COUNT(player_id)
FROM player
WHERE funds>30000;

-- What are the usernames of the players who have the most number of soldiers, tanks, and jets? 
SELECT fname, lname, tanks
FROM player
WHERE tanks = (SELECT MAX(tanks) FROM player);

SELECT fname, lname, soldiers
FROM player
WHERE soldiers = (SELECT MAX(soldiers) FROM player);

SELECT fname, lname, jets
FROM player
WHERE jets = (SELECT MAX(jets) FROM player);

-- Which players won battles in Croatia?
SELECT DISTINCT p.fname, p.lname
FROM player p
INNER JOIN attack a
	ON p.player_id = a.victor_id
INNER JOIN GameLocation gl
	ON a.loc_id=gl.location_id AND loc_name='Croatia';

-- Who are the players with the most wins?
SELECT p.fname, p.lname, COUNT(victor_id) num_wins
FROM Attack a
INNER JOIN Player p
	ON a.victor_id=p.player_id
GROUP BY p.fname, p.lname, a.victor_id
ORDER BY num_wins DESC;

-- Who are the players with the most wins?
SELECT player_id, fname, lname, COUNT(a.victor_id) Wins
FROM Player p
INNER JOIN Attack a
	ON p.player_id=a.victor_id
GROUP BY p.player_id, p.fname, p.lname
ORDER BY Wins Desc;

-- Who are the players with the most losses?
SELECT player_id, fname, lname, COUNT(player_id) Defeats
FROM Player p
INNER JOIN Attack a
	ON (p.player_id=a.attacker_id OR p.player_id=a.defender_id)
		AND p.player_id<>a.victor_id
GROUP BY p.player_id, p.fname, p.lname
ORDER BY Defeats Desc;

-- What country has Liam Neeson most often won?
SELECT p.fname, p.lname, gl.loc_name, COUNT(gl.loc_name) num_wins
FROM Player p
INNER JOIN Attack a
	ON p.player_id=a.victor_id
INNER JOIN GameLocation gl
	ON a.loc_id=gl.location_id
WHERE p.fname='Liam' AND p.lname='Neeson'
GROUP BY p.fname, p.lname, gl.loc_name
ORDER BY num_wins DESC;

-- Which countries have seen the most number of battles?
SELECT loc_name Location, battles.Frequency
FROM (SELECT loc_id, COUNT(loc_id) AS Frequency
	FROM attack
	GROUP BY loc_id) battles
INNER JOIN GameLocation gl
	ON loc_id=gl.location_id
ORDER BY Frequency DESC;

-- Which players have ordered the most smoke grenades?
SELECT p.fname fname, p.lname lname, SUM(sd.quantity) num_smoke_grenades
FROM Player p
INNER JOIN SupplyDrop sd
	ON p.player_id=sd.p_id
INNER JOIN Munition m
	ON sd.m_id=m.munition_id
	WHERE m.m_name='Smoke Grenade'
GROUP BY p.fname, p.lname
ORDER BY num_smoke_grenades DESC;

-- What are the names of the players who have alliances in Australia?
SELECT p.fname, p.lname, a.a_name, gl.loc_name
FROM player p
INNER JOIN alliance a
	ON p.allied_with = a.alliance_id
INNER JOIN GameLocation gl
	ON a.a_location=gl.location_id AND gl.loc_name='Australia';

-- What is the win rate of each every player?
SELECT p.fname, p.lname, win_pid, num_wins/num_battles * 100
FROM
	(
		SELECT victor_id win_pid, COUNT(victor_id) num_wins
		FROM Attack
		GROUP BY victor_id
	)
INNER JOIN
	(
		SELECT attacker_id all_pid, num_a+num_d num_battles
		FROM
		(
			SELECT attacker_id, COUNT(attacker_id) num_a
			FROM Attack
			GROUP BY attacker_id
			ORDER BY attacker_id
		) a
		INNER JOIN
		(
			SELECT defender_id, COUNT(defender_id) num_d
			FROM Attack
			GROUP BY defender_id
			ORDER BY defender_id
		) d
			ON a.attacker_id=d.defender_id
	)
	ON win_pid=all_pid
INNER JOIN Player p
	on win_pid=p.player_id;
