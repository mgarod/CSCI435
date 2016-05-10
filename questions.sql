-- Questions:
-- How many times has player X lost?
SELECT count(victor_id)
FROM Attack
WHERE (defender_id=1001 OR attacker_id=1001) AND victor_id!=1001;
-- What is the win rate of player X?
-- Who is the player with the most wins? Least wins?
-- What country has player X most often won?
-- In what month did the most attacks take place?
-- How many times Player X and Player Y have fought?
SELECT COUNT(*)
FROM ATTACK
WHERE (attacker_id=1004 AND defender_id=1006)
	OR (attacker_id=1006 AND defender_id=1004)

-- Where have player X and player Y battle?
SELECT attacker_id, defender_id, location
FROM ATTACK
WHERE (attacker_id=1004 AND defender_id=1006)
	OR (attacker_id=1006 AND defender_id=1004)	

-- What are the top 5 countries with the most number of battles?
-- What is the most bloody battle and what is the most used munition used ?
-- What's the name of the Player that orders the most grenades and when ?
-- What is the player who ordered more munition than his opponent and yet lost the battle ? 
