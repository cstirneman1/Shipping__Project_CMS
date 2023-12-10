
USE shipping;
-- Query 1: Select details of all ports
SELECT name, city, country 
FROM Port;

-- Query 2: Select ship names and their build years for ships built after 2015
SELECT name, buildYear 
FROM Ship 
WHERE buildYear > 2015;

-- Query 3: Aggregate query - Count the number of ships in each home port
SELECT homePort, COUNT(*) AS shipCount 
FROM Ship 
GROUP BY homePort
ORDER BY homePort;

-- Query 4: Sub-query - Select containers with a weight greater than the average weight
SELECT containerID, weight
FROM Container
WHERE weight > 
	(SELECT AVG (weight) 
	FROM Container);

-- Query 5: Calculate the volume of a container
SELECT containerID, height * width * length AS volume
FROM Container
WHERE containerID = 'C1';

-- Query 6: JOIN - Select details of containers and their associated ships
SELECT c.containerID, c.height, c.width, c.length, c.weight, s.name AS shipName
FROM Container c
JOIN Ship s ON c.shipID = s.name;

-- Query 7: JOIN with multiple tables - Select details of containers, their associated ships, and home ports
SELECT c.containerID, c.height, c.width, c.length, c.weight, s.name AS shipName, p.name AS homePort
FROM Container c
JOIN Ship s ON c.shipID = s.name
JOIN Port p ON s.homePort = p.name;

-- Query 8: LEFT JOIN - Select all ports and the ships associated with them
SELECT p.name AS portName, s.name AS shipName
FROM Port p
LEFT JOIN Ship s ON p.name = s.homePort;

-- Query 9: INNER JOIN - Select containers and their associated ships with a specific weight
SELECT c.containerID, c.weight, s.name AS shipName
FROM Container c
INNER JOIN Ship s ON c.shipID = s.name
WHERE c.weight > 600;

-- Query 10: JOIN - Select ships associated with Port A that have more than 2 containers 
SELECT Ship.*
FROM Ship
JOIN Container ON Ship.name = Container.shipID
WHERE Ship.homePort = 'Port A'
GROUP BY Ship.name
HAVING COUNT(Container.containerID) > 2;



