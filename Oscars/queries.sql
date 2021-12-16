/* sampleQueries.sql: SQL file for Assignment Oscars */
/*Author: C Marteli 19598552 Created: 15/12/2021*/

-- Show all the winners from Nominations
SELECT * FROM Nominations 
WHERE isWinner = TRUE;

-- Show all the Nominations ordered by film name
SELECT * FROM Nominations 
ORDER BY filmName;

-- Show all the winners from Nominations and ID is less than 30
SELECT * FROM Nominations 
WHERE isWinner = TRUE AND id < 30;

-- name of all nominees in "acting" subcategory only with winners at top
SELECT c.catID AS "Category", n.filmName, n.nomID, n.isWinner
FROM Category AS c
CROSS JOIN Nominations AS n
ON c.catID = n.catID
WHERE c.subtype = "Acting"
ORDER BY isWinner DESC;


-- Creates view of all winners by nominations using inner join
CREATE VIEW oscar_winners AS
SELECT CONCAT(nee.firstName," ",nee.lastName) AS "Name", ion.filmName AS "Movie", 
ion.catID AS "Role", "winner" AS outcome
FROM Nominee AS nee
INNER JOIN Nominations AS ion
ON nee.id = ion.nomID
WHERE ion.isWinner = TRUE;

-- displays view
SELECT * FROM oscar_winners;

-- Creates view of all losers by nominations
CREATE VIEW oscar_losers AS
SELECT CONCAT(nee.firstName," ",nee.lastName) AS "Name", ion.filmName AS "Movie", 
ion.catID AS "Role", "lost" AS outcome
FROM Nominee AS nee
INNER JOIN Nominations AS ion
ON nee.id = ion.nomID
WHERE ion.isWinner = FALSE;

-- displays view
SELECT * FROM oscar_losers;

-- now display both views as union
SELECT * FROM oscar_winners
	UNION
SELECT * FROM oscar_losers;