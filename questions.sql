-- Questions:
-- How many times has player X lost?
SELECT count(victor_id)
FROM Attack
WHERE (defender_id=1001 OR attacker_id=1001) AND victor_id!=1001;
-- What is the win rate of player X?
-- Who is the player with the most wins? Least wins?
-- What country has player X most often won?
-- In what month did the most attacks take place?
-- How many times Player X and Player Y have fought if so Where was the battle?
-- What are the top 5 countries with the most number of battles?
SELECT location , COUNT(location) AS Frequency FROM attack GROUP BY location ORDER BY COUNT(location) DESC; 

-- What is the most bloody battle and what is the most used munition used ?
-- What's the name of the Player that orders the most grenades and when ?
-- What is the player who ordered more munition than his opponent and yet lost the battle ? 
-- 
