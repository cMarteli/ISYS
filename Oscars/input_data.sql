/* queries.sql: SQL file for data entry in Assignment Oscars */
/*Author: C Marteli 19598552 Created: 15/12/2021*/

-- Fills ceremony table with data of the past 3 years
-- oscarID, Year, Venue
INSERT INTO Ceremony VALUES(90, 2019, "Dolby Theatre");
INSERT INTO Ceremony VALUES(91, 2020, "Dolby Theatre");
INSERT INTO Ceremony VALUES(92, 2021, "Dolby Theatre/Union Station");

-- Fills Category table with sample data
-- categoryName, subcategory
INSERT INTO Category VALUES("ACTOR IN A LEADING ROLE", "Acting");
INSERT INTO Category VALUES("ACTOR IN A SUPPORTING ROLE", "Acting");
INSERT INTO Category VALUES("ACTRESS IN A LEADING ROLE", "Acting");
INSERT INTO Category VALUES("ACTRESS IN A SUPPORTING ROLE", "Acting");
INSERT INTO Category VALUES("DIRECTING", null);
INSERT INTO Category VALUES("FILM EDITING", null);
INSERT INTO Category VALUES("BEST PICTURE", null);

-- Fills Film table with sample data
-- filmName, filmYear, oscarID
INSERT INTO Film VALUES("Pain and Glory", 2019, 92);
INSERT INTO Film VALUES("Once upon a Time...in Hollywood", 2019, 92);
INSERT INTO Film VALUES("Marriage Story", 2019, 92);
INSERT INTO Film VALUES("Joker", 2019, 92);
INSERT INTO Film VALUES("The Two Popes", 2019, 92);
INSERT INTO Film VALUES("A Beautiful Day in the Neighborhood", 2019, 92);
INSERT INTO Film VALUES("The Irishman", 2019, 92);
INSERT INTO Film VALUES("Harriet", 2019, 92);
INSERT INTO Film VALUES("Little Women", 2019, 92);
INSERT INTO Film VALUES("Bombshell", 2019, 92);
INSERT INTO Film VALUES("Judy", 2019, 92);
INSERT INTO Film VALUES("Richard Jewell", 2019, 92);
INSERT INTO Film VALUES("Jojo Rabbit", 2019, 92);
INSERT INTO Film VALUES("1917", 2019, 92);
INSERT INTO Film VALUES("Parasite", 2019, 92);
INSERT INTO Film VALUES("Ford v Ferrari", 2019, 92);

-- Fills Nominee table with sample data
-- ID, firstName, lastName, dob
INSERT INTO Nominee VALUES(6897570, "Antonio", "Banderas", null);
INSERT INTO Nominee VALUES(6897571, "Leonardo", "DiCaprio", null);
INSERT INTO Nominee VALUES(6897572, "Adam", "Driver", null);
INSERT INTO Nominee VALUES(6897573, "Joaquin", "Phoenix", null);
INSERT INTO Nominee VALUES(6897574, "Jonathan", "Pryce", null);
INSERT INTO Nominee VALUES(6897575, "Tom", "Hanks", null);
INSERT INTO Nominee VALUES(6897576, "Anthony", "Hopkins", null);
INSERT INTO Nominee VALUES(6897577, "Al", "Pacino", null);
INSERT INTO Nominee VALUES(6897578, "Joe", "Pesci", null);
INSERT INTO Nominee VALUES(6897579, "Brad", "Pitt", null);
INSERT INTO Nominee VALUES(6897580, "Cynthia", "Erivo", null);
INSERT INTO Nominee VALUES(6897581, "Scarlett", "Johansson", null);
INSERT INTO Nominee VALUES(6897582, "Saoirse", "Ronan", null);
INSERT INTO Nominee VALUES(6897583, "Charlize", "Theron", null);
INSERT INTO Nominee VALUES(6897584, "Renee", "Zellweger", null);
INSERT INTO Nominee VALUES(6897585, "Kathy", "Bates", null);
INSERT INTO Nominee VALUES(6897586, "Laura", "Dern", null);
INSERT INTO Nominee VALUES(6897588, "Florence", "Pugh", null);
INSERT INTO Nominee VALUES(6897589, "Margot", "Robbie", null);
INSERT INTO Nominee VALUES(6897590, "Martin", "Scorsese", null);
INSERT INTO Nominee VALUES(6897591, "Todd", "Phillips", null);
INSERT INTO Nominee VALUES(6897592, "Sam", "Mendes", null);
INSERT INTO Nominee VALUES(6897593, "Quentin", "Tarantino", null);
INSERT INTO Nominee VALUES(6897594, "Bong", "Joon Ho", null);
INSERT INTO Nominee VALUES(6897595, "Michael", "McCusker", null);
INSERT INTO Nominee VALUES(6897596, "Thelma", "Schoonmaker", null);
INSERT INTO Nominee VALUES(6897597, "Tom", "Eagles", null);
INSERT INTO Nominee VALUES(6897598, "Jeff", "Groth", null);
INSERT INTO Nominee VALUES(6897599, "Yang", "Jinmo", null);
INSERT INTO Nominee VALUES(6897600, "Peter", "Chernin", null);
INSERT INTO Nominee VALUES(6897602, "Carthew", "Neal", null);
INSERT INTO Nominee VALUES(6897604, "Amy", "Pascal", null);
INSERT INTO Nominee VALUES(6897605, "Noah", "Baumbach", null);
INSERT INTO Nominee VALUES(6897607, "David", "Heyman", null);

-- Fills Nominations table with sample data
-- nomID, ID, categoryName, isWinner
INSERT INTO Nominations VALUES(0, 6897570,"Banderas", "ACTOR IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897571, "DiCaprio", "ACTOR IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897572, "Driver", "ACTOR IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897573, "Joker", "ACTOR IN A LEADING ROLE", True);
INSERT INTO Nominations VALUES(0, 6897574, "Pryce", "ACTOR IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897575, "Hanks", "ACTOR IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897576, "Hopkins", "ACTOR IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897577, "Pacino", "ACTOR IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897578, "Pesci", "ACTOR IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897579, "Pitt", "ACTOR IN A SUPPORTING ROLE", True);
INSERT INTO Nominations VALUES(0, 6897580, "Erivo", "ACTRESS IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897581, "Johansson", "ACTRESS IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897582, "Ronan", "ACTRESS IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897583, "Theron", "ACTRESS IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897584, "Zellweger", "ACTRESS IN A LEADING ROLE", True);
INSERT INTO Nominations VALUES(0, 6897585, "Bates", "ACTRESS IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897586, "Dern", "ACTRESS IN A SUPPORTING ROLE", True);
INSERT INTO Nominations VALUES(0, 6897581,"Johansson", "ACTRESS IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897588, "Pugh", "ACTRESS IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897589, "Robbie", "ACTRESS IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897590, "Scorsese", "DIRECTING", False);
INSERT INTO Nominations VALUES(0, 6897591, "Phillips", "DIRECTING", False);
INSERT INTO Nominations VALUES(0, 6897592, "Mendes", "DIRECTING", False);
INSERT INTO Nominations VALUES(0, 6897593, "Tarantino", "DIRECTING", False);
INSERT INTO Nominations VALUES(0, 6897594, "Joon Ho", "DIRECTING", True);
INSERT INTO Nominations VALUES(0, 6897595, "McCusker", "FILM EDITING", True);
INSERT INTO Nominations VALUES(0, 6897596, "Schoonmaker", "FILM EDITING", False);
INSERT INTO Nominations VALUES(0, 6897597, "Eagles", "FILM EDITING", False);
INSERT INTO Nominations VALUES(0, 6897598, "Groth", "FILM EDITING", False);
INSERT INTO Nominations VALUES(0, 6897599, "Jinmo", "FILM EDITING", False);
INSERT INTO Nominations VALUES(0, 6897600, "Chernin", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897590, "Scorsese", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897602, "Neal", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897591, "Phillips", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897604, "Pascal", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897605, "Baumbach", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897592, "Mendes", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897607, "Heyman", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897594, "Joon Ho", "BEST PICTURE", True);