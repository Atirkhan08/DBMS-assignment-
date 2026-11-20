-- Assignment 11: Other Kinds of Joins
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS player;
DROP TABLE IF EXISTS team;
CREATE TABLE team (team_id INT, team_name VARCHAR(20));
INSERT INTO team (team_id, team_name) VALUES
(1, 'Eagles'), (2, 'Tigers'), (3, 'Lions');
CREATE TABLE player (player_name VARCHAR(30), team_id INT, age INT);
INSERT INTO player (player_name, team_id, age) VALUES
('Asha', 1, 24), ('Meera', 1, 22), ('Arjun', 2, 27);

-- Task 1: Include teams even when they have no players.
SELECT t.team_name, p.player_name
FROM team t
LEFT JOIN player p ON t.team_id = p.team_id
ORDER BY t.team_name, p.player_name;

-- Task 2: Every possible team/player pair.
SELECT t.team_name, p.player_name
FROM team t
CROSS JOIN player p
ORDER BY t.team_name, p.player_name;

-- Task 3: Match rows using the common team_id column.
SELECT player_name, team_name
FROM player
NATURAL JOIN team
ORDER BY player_name;

-- Expected output (reference)
-- Task 1:
-- team_name | player_name
-- ----------+------------
-- Eagles    | Asha
-- Eagles    | Meera
-- Lions     | NULL
-- Tigers    | Arjun
-- 
-- Task 2:
-- team_name | player_name
-- ----------+------------
-- Eagles    | Arjun
-- Eagles    | Asha
-- Eagles    | Meera
-- Lions     | Arjun
-- Lions     | Asha
-- Lions     | Meera
-- Tigers    | Arjun
-- Tigers    | Asha
-- Tigers    | Meera
-- 
-- Task 3:
-- player_name | team_name
-- ------------+----------
-- Arjun       | Tigers
-- Asha        | Eagles
-- Meera       | Eagles
