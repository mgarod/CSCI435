-- Questions:
-- How many times has player X lost?
SELECT COUNT(victor_id)
FROM Attack
WHERE (defender_id=1001 OR attacker_id=1001) AND victor_id!=1001;

-- What is the win rate of player X?
SELECT A.num_wins/B.num_battles
FROM (SELECT COUNT(victor_id) num_wins
	FROM Attack
	WHERE victor_id=1007) A, 
	(SELECT count(*) num_battles 
	FROM Attack
	WHERE defender_id=1007 OR attacker_id=1007) B;

-- Who are the players with the most wins? Least wins?
SELECT victor_id, COUNT(victor_id) num_wins
FROM Attack
GROUP BY victor_id
ORDER BY num_wins DESC;

-- What country has player X most often won?
SELECT location, COUNT(victor_id) num_wins
FROM Attack
WHERE victor_id=1009
GROUP BY location
ORDER BY num_wins DESC;

-- In what month did the most attacks take place?

-- How many times Player X and Player Y have fought?
SELECT COUNT(*)
FROM ATTACK
WHERE (attacker_id=1004 AND defender_id=1006)
	OR (attacker_id=1006 AND defender_id=1004)

-- Where have player X and player Y battle?
SELECT attacker_id, defender_id, loc_id
FROM ATTACK a
INNER JOIN GameLocation gl
	ON a.loc_id=gl.loc_name
WHERE (attacker_id=1004 AND defender_id=1006)
	OR (attacker_id=1006 AND defender_id=1004);	

-- What are the top 5 countries with the most number of battles?
SELECT * 
FROM (SELECT location, COUNT(location) AS Frequency
	FROM attack
	GROUP BY location
	ORDER BY COUNT(location) DESC)
WHERE rownum <= 10;

-- What is the most bloody battle and what is the most used munition used ?
-- What's the name of the Player that orders the most grenades?
SELECT p.fname, p.lname
FROM Player p
INNER JOIN SupplyDrop sd
	ON p.player_id=sd.p_id
INNER JOIN Store s
	ON s.store_id=sd.s_id;

SELECT munition_id
FROM Munition

-- What is the player who ordered more munition than his opponent and yet lost the battle ? 

-- What are the names of the players who have alliances in Australia?
SELECT p.fname, p.lname FROM player p INNER JOIN alliance a ON p.allied_with = a.alliance_id WHERE a.a_location='Australia';

-- List the number of players who have funds greater than 30000.
SELECT COUNT(player_id) FROM player WHERE funds>30000;

-- What are the usernames of the players who have the max number of soldiers, tanks, and jets? 
SELECT username FROM player WHERE tanks = (SELECT MAX(tanks) FROM player);
SELECT username FROM player WHERE soliders = (SELECT MAX(soliders) FROM player);
SELECT username FROM player WHERE jets = (SELECT MAX(jets) FROM player);

-- Which players won battles in Croatia?
SELECT DISTINCT p.fname, p.lname FROM player p INNER JOIN attack a ON p.player_id = a.victor_id WHERE location='Croatia';
