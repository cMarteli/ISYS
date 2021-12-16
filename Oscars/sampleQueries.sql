# Prac06Commands
# Author: C Marteli 19598552 Created: 22/09/2021

-- Show all the winners from Nominations
SELECT * FROM Nominations 
WHERE isWinner = TRUE;

-- Show all the winners from Nominations
CREATE VIEW Outcome AS
SELECT lastName, "won" AS outcome FROM Nominations 
WHERE isWinner = TRUE
	UNION
SELECT lastName, "lost" AS outcome FROM Nominations 
WHERE isWinner = FALSE;

SELECT * FROM Outcome;




-- view
CREATE VIEW oscar_public AS
SELECT CONCAT(firstName," ",lastName) AS "Name" 
FROM Nominee;


-- last name of all winners in "acting" subcategory only
SELECT c.catID AS "Category", n.lastName 
FROM Category AS c
CROSS JOIN Nominations AS n
ON c.catID = n.catID
WHERE c.subtype = "Acting" AND n.isWinner = TRUE;