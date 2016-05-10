-- Questions:
-- How many times has player X lost?
SELECT count(victor_id)
FROM Attack
WHERE (defender_id=1001 OR attacker_id=1001) AND victor_id!=1001;
-- What is the win rate of player X?
-- Who is the player with the most wins? Least wins?
-- What country has player X most often won?
-- In what month did the most attacks take place?