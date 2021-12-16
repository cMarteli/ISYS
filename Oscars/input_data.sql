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
INSERT INTO Nominations VALUES(0, 6897570,"Pain and Glory", "ACTOR IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897571, "Once upon a Time...in Hollywood", "ACTOR IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897572, "Marriage Story", "ACTOR IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897573, "Joker", "ACTOR IN A LEADING ROLE", True);
INSERT INTO Nominations VALUES(0, 6897574, "The Two Popes", "ACTOR IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897575, "A Beautiful Day in the Neighborhood", "ACTOR IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897576, "The Two Popes", "ACTOR IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897577, "The Irishman", "ACTOR IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897578, "The Irishman", "ACTOR IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897579, "Once upon a Time...in Hollywood", "ACTOR IN A SUPPORTING ROLE", True);
INSERT INTO Nominations VALUES(0, 6897580, "Harriet", "ACTRESS IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897581, "Marriage Story", "ACTRESS IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897582, "Little Women", "ACTRESS IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897583, "Bombshell", "ACTRESS IN A LEADING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897584, "Judy", "ACTRESS IN A LEADING ROLE", True);
INSERT INTO Nominations VALUES(0, 6897585, "Richard Jewell", "ACTRESS IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897586, "Marriage Story", "ACTRESS IN A SUPPORTING ROLE", True);
INSERT INTO Nominations VALUES(0, 6897581, "Jojo Rabbit", "ACTRESS IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897588, "Little Women", "ACTRESS IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897589, "Bombshell", "ACTRESS IN A SUPPORTING ROLE", False);
INSERT INTO Nominations VALUES(0, 6897590, "The Irishman", "DIRECTING", False);
INSERT INTO Nominations VALUES(0, 6897591, "Joker", "DIRECTING", False);
INSERT INTO Nominations VALUES(0, 6897592, "1917", "DIRECTING", False);
INSERT INTO Nominations VALUES(0, 6897593, "Once upon a Time...in Hollywood", "DIRECTING", False);
INSERT INTO Nominations VALUES(0, 6897594, "Parasite", "DIRECTING", True);
INSERT INTO Nominations VALUES(0, 6897595, "Ford v Ferrari", "FILM EDITING", True);
INSERT INTO Nominations VALUES(0, 6897596, "The Irishman", "FILM EDITING", False);
INSERT INTO Nominations VALUES(0, 6897597, "Jojo Rabbit", "FILM EDITING", False);
INSERT INTO Nominations VALUES(0, 6897598, "Joker", "FILM EDITING", False);
INSERT INTO Nominations VALUES(0, 6897599, "Parasite", "FILM EDITING", False);
INSERT INTO Nominations VALUES(0, 6897600, "Ford v Ferrari", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897590, "The Irishman", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897602, "Jojo Rabbit", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897591, "Joker", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897604, "Little Women", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897605, "Marriage Story", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897592, "1917", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897607, "Once upon a Time...in Hollywood", "BEST PICTURE", False);
INSERT INTO Nominations VALUES(0, 6897594, "Parasite", "BEST PICTURE", True);