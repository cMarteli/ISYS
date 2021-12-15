/* loadAll.sql: SQL file for table creation and sample data input in Assignment Olympics games */
-- create Country table
#pager less -SFX
DROP DATABASE IF EXISTS Olympics;
CREATE DATABASE Olympics;
USE Olympics;
CREATE TABLE Country(
	countryID VARCHAR(60) NOT NULL,
	ranking SMALLINT,
	gold SMALLINT,
	silver SMALLINT,
	bronze SMALLINT,
	PRIMARY KEY(countryID)
);

-- create Discipline table
CREATE TABLE Discipline(
	disciplineID  VARCHAR(60) NOT NULL,
	maleCount SMALLINT,
	femaleCount SMALLINT,
	genderOrType VARCHAR(20),
	PRIMARY KEY(disciplineID)
);

-- create Athlete table
CREATE TABLE Athlete(
	athleteID CHAR(6) NOT NULL,
	surname VARCHAR(30) NOT NULL,
	givenNames VARCHAR(150),
	discipline VARCHAR(60),
	country VARCHAR(60) NOT NULL,
	PRIMARY KEY(athleteID),
	FOREIGN KEY(discipline) REFERENCES Discipline(disciplineID),
	FOREIGN KEY(country) REFERENCES Country(countryID)
);

-- create Coach table
CREATE TABLE Coach(
	coachID  CHAR(6) NOT NULL,
	surname VARCHAR(30) NOT NULL,
	givenNames VARCHAR(150),
	discipline VARCHAR(60),
	country VARCHAR(60) NOT NULL,
	PRIMARY KEY(coachID),
	FOREIGN KEY(discipline) REFERENCES Discipline(disciplineID),
	FOREIGN KEY(country) REFERENCES Country(countryID)
);

INSERT INTO Discipline VALUES("3x3 Basketball", 32, 32, null);
INSERT INTO Discipline VALUES("Archery", 64, 64, null);
INSERT INTO Discipline VALUES("Artistic Gymnastics", 98, 98, null);
INSERT INTO Discipline VALUES("Artistic Swimming", 105, 0, null);
INSERT INTO Discipline VALUES("Athletics", 969, 1072, null);
INSERT INTO Discipline VALUES("Badminton", 86, 87, null);
INSERT INTO Discipline VALUES("Baseball/Softball", 90, 144, null);
INSERT INTO Discipline VALUES("Basketball", 144, 144, null);
INSERT INTO Discipline VALUES("Beach Volleyball", 48, 48, null);
INSERT INTO Discipline VALUES("Boxing", 102, 187, null);
INSERT INTO Discipline VALUES("Canoe Slalom", 41, 41, null);
INSERT INTO Discipline VALUES("Canoe Sprint", 123, 126, null);
INSERT INTO Discipline VALUES("Cycling BMX Freestyle", 10, 9, null);
INSERT INTO Discipline VALUES("Cycling BMX Racing", 24, 24, null);
INSERT INTO Discipline VALUES("Cycling Mountain Bike", 38, 38, null);
INSERT INTO Discipline VALUES("Cycling Road", 70, 131, null);
INSERT INTO Discipline VALUES("Cycling Track", 90, 99, null);
INSERT INTO Discipline VALUES("Diving", 72, 71, null);
INSERT INTO Discipline VALUES("Equestrian", 73, 125, null);
INSERT INTO Discipline VALUES("Fencing", 107, 108, null);
INSERT INTO Discipline VALUES("Football", 264, 344, null);
INSERT INTO Discipline VALUES("Golf", 60, 60, null);
INSERT INTO Discipline VALUES("Handball", 168, 168, null);
INSERT INTO Discipline VALUES("Hockey", 192, 192, null);
INSERT INTO Discipline VALUES("Judo", 192, 201, null);
INSERT INTO Discipline VALUES("Karate", 40, 42, null);
INSERT INTO Discipline VALUES("Marathon Swimming", 25, 25, null);
INSERT INTO Discipline VALUES("Modern Pentathlon", 36, 36, null);
INSERT INTO Discipline VALUES("Rhythmic Gymnastics", 96, 0, null);
INSERT INTO Discipline VALUES("Rowing", 257, 265, null);
INSERT INTO Discipline VALUES("Rugby Sevens", 146, 151, null);
INSERT INTO Discipline VALUES("Sailing", 175, 175, null);
INSERT INTO Discipline VALUES("Shooting", 178, 178, null);
INSERT INTO Discipline VALUES("Skateboarding", 40, 40, null);
INSERT INTO Discipline VALUES("Sport Climbing", 20, 20, null);
INSERT INTO Discipline VALUES("Surfing", 20, 20, null);
INSERT INTO Discipline VALUES("Swimming", 361, 418, null);
INSERT INTO Discipline VALUES("Table Tennis", 86, 86, null);
INSERT INTO Discipline VALUES("Taekwondo", 65, 65, null);
INSERT INTO Discipline VALUES("Tennis", 94, 97, null);
INSERT INTO Discipline VALUES("Trampoline Gymnastics", 16, 16, null);
INSERT INTO Discipline VALUES("Triathlon", 55, 55, null);
INSERT INTO Discipline VALUES("Volleyball", 144, 144, null);
INSERT INTO Discipline VALUES("Water Polo", 122, 146, null);
INSERT INTO Discipline VALUES("Weightlifting", 98, 99, null);
INSERT INTO Discipline VALUES("Wrestling", 96, 193, null);
INSERT INTO Country VALUES ("United States of America", 1, 39, 41, 33);
INSERT INTO Country VALUES ("People's Republic of China", 2, 38, 32, 18);
INSERT INTO Country VALUES ("Japan", 3, 27, 14, 17);
INSERT INTO Country VALUES ("Great Britain", 4, 22, 21, 22);
INSERT INTO Country VALUES ("ROC", 5, 20, 28, 23);
INSERT INTO Country VALUES ("Australia", 6, 17, 7, 22);
INSERT INTO Country VALUES ("Netherlands", 7, 10, 12, 14);
INSERT INTO Country VALUES ("France", 8, 10, 12, 11);
INSERT INTO Country VALUES ("Germany", 9, 10, 11, 16);
INSERT INTO Country VALUES ("Italy", 10, 10, 10, 20);
INSERT INTO Country VALUES ("Canada", 11, 7, 6, 11);
INSERT INTO Country VALUES ("Brazil", 12, 7, 6, 8);
INSERT INTO Country VALUES ("New Zealand", 13, 7, 6, 7);
INSERT INTO Country VALUES ("Cuba", 14, 7, 3, 5);
INSERT INTO Country VALUES ("Hungary", 15, 6, 7, 7);
INSERT INTO Country VALUES ("Republic of Korea", 16, 6, 4, 10);
INSERT INTO Country VALUES ("Poland", 17, 4, 5, 5);
INSERT INTO Country VALUES ("Czech Republic", 18, 4, 4, 3);
INSERT INTO Country VALUES ("Kenya", 19, 4, 4, 2);
INSERT INTO Country VALUES ("Norway", 20, 4, 2, 2);
INSERT INTO Country VALUES ("Jamaica", 21, 4, 1, 4);
INSERT INTO Country VALUES ("Spain", 22, 3, 8, 6);
INSERT INTO Country VALUES ("Sweden", 23, 3, 6, 0);
INSERT INTO Country VALUES ("Switzerland", 24, 3, 4, 6);
INSERT INTO Country VALUES ("Denmark", 25, 3, 4, 4);
INSERT INTO Country VALUES ("Croatia", 26, 3, 3, 2);
INSERT INTO Country VALUES ("Islamic Republic of Iran", 27, 3, 2, 2);
INSERT INTO Country VALUES ("Serbia", 28, 3, 1, 5);
INSERT INTO Country VALUES ("Belgium", 29, 3, 1, 3);
INSERT INTO Country VALUES ("Bulgaria", 30, 3, 1, 2);
INSERT INTO Country VALUES ("Slovenia", 31, 3, 1, 1);
INSERT INTO Country VALUES ("Uzbekistan", 32, 3, 0, 2);
INSERT INTO Country VALUES ("Georgia", 33, 2, 5, 1);
INSERT INTO Country VALUES ("Chinese Taipei", 34, 2, 4, 6);
INSERT INTO Country VALUES ("Turkey", 35, 2, 2, 9);
INSERT INTO Country VALUES ("Greece", 36, 2, 1, 1);
INSERT INTO Country VALUES ("Uganda", 36, 2, 1, 1);
INSERT INTO Country VALUES ("Ecuador", 38, 2, 1, 0);
INSERT INTO Country VALUES ("Ireland", 39, 2, 0, 2);
INSERT INTO Country VALUES ("Israel", 39, 2, 0, 2);
INSERT INTO Country VALUES ("Qatar", 41, 2, 0, 1);
INSERT INTO Country VALUES ("Bahamas", 42, 2, 0, 0);
INSERT INTO Country VALUES ("Kosovo", 42, 2, 0, 0);
INSERT INTO Country VALUES ("Ukraine", 44, 1, 6, 12);
INSERT INTO Country VALUES ("Belarus", 45, 1, 3, 3);
INSERT INTO Country VALUES ("Romania", 46, 1, 3, 0);
INSERT INTO Country VALUES ("Venezuela", 46, 1, 3, 0);
INSERT INTO Country VALUES ("India", 48, 1, 2, 4);
INSERT INTO Country VALUES ("Hong Kong, China", 49, 1, 2, 3);
INSERT INTO Country VALUES ("Philippines", 50, 1, 2, 1);
INSERT INTO Country VALUES ("Slovakia", 50, 1, 2, 1);
INSERT INTO Country VALUES ("South Africa", 52, 1, 2, 0);
INSERT INTO Country VALUES ("Austria", 53, 1, 1, 5);
INSERT INTO Country VALUES ("Egypt", 54, 1, 1, 4);
INSERT INTO Country VALUES ("Indonesia", 55, 1, 1, 3);
INSERT INTO Country VALUES ("Ethiopia", 56, 1, 1, 2);
INSERT INTO Country VALUES ("Portugal", 56, 1, 1, 2);
INSERT INTO Country VALUES ("Tunisia", 58, 1, 1, 0);
INSERT INTO Country VALUES ("Estonia", 59, 1, 0, 1);
INSERT INTO Country VALUES ("Fiji", 59, 1, 0, 1);
INSERT INTO Country VALUES ("Latvia", 59, 1, 0, 1);
INSERT INTO Country VALUES ("Thailand", 59, 1, 0, 1);
INSERT INTO Country VALUES ("Bermuda", 63, 1, 0, 0);
INSERT INTO Country VALUES ("Morocco", 63, 1, 0, 0);
INSERT INTO Country VALUES ("Puerto Rico", 63, 1, 0, 0);
INSERT INTO Country VALUES ("Colombia", 66, 0, 4, 1);
INSERT INTO Country VALUES ("Azerbaijan", 67, 0, 3, 4);
INSERT INTO Country VALUES ("Dominican Republic", 68, 0, 3, 2);
INSERT INTO Country VALUES ("Armenia", 69, 0, 2, 2);
INSERT INTO Country VALUES ("Kyrgyzstan", 70, 0, 2, 1);
INSERT INTO Country VALUES ("Mongolia", 71, 0, 1, 3);
INSERT INTO Country VALUES ("Argentina", 72, 0, 1, 2);
INSERT INTO Country VALUES ("San Marino", 72, 0, 1, 2);
INSERT INTO Country VALUES ("Jordan", 74, 0, 1, 1);
INSERT INTO Country VALUES ("Malaysia", 74, 0, 1, 1);
INSERT INTO Country VALUES ("Nigeria", 74, 0, 1, 1);
INSERT INTO Country VALUES ("Bahrain", 77, 0, 1, 0);
INSERT INTO Country VALUES ("Saudi Arabia", 77, 0, 1, 0);
INSERT INTO Country VALUES ("Lithuania", 77, 0, 1, 0);
INSERT INTO Country VALUES ("North Macedonia", 77, 0, 1, 0);
INSERT INTO Country VALUES ("Namibia", 77, 0, 1, 0);
INSERT INTO Country VALUES ("Turkmenistan", 77, 0, 1, 0);
INSERT INTO Country VALUES ("Kazakhstan", 83, 0, 0, 8);
INSERT INTO Country VALUES ("Mexico", 84, 0, 0, 4);
INSERT INTO Country VALUES ("Finland", 85, 0, 0, 2);
INSERT INTO Country VALUES ("Botswana", 86, 0, 0, 1);
INSERT INTO Country VALUES ("Burkina Faso", 86, 0, 0, 1);
INSERT INTO Country VALUES ("Cote d'Ivoire", 86, 0, 0, 1);
INSERT INTO Country VALUES ("Ghana", 86, 0, 0, 1);
INSERT INTO Country VALUES ("Grenada", 86, 0, 0, 1);
INSERT INTO Country VALUES ("Kuwait", 86, 0, 0, 1);
INSERT INTO Country VALUES ("Republic of Moldova", 86, 0, 0, 1);
INSERT INTO Country VALUES ("Syrian Arab Republic", 86, 0, 0, 1);
INSERT INTO Athlete VALUES ("001149", "BORGERK", "Karla", "Beach Volleyball", "Germany");
INSERT INTO Athlete VALUES ("001150", "BORGESA", "Alexis", "Handball", "Portugal");
INSERT INTO Athlete VALUES ("001151", "BORGESALMEIDASILVAM", "Mauricio", "Volleyball", "Brazil");
INSERT INTO Athlete VALUES ("001152", "BORGESF", "Felipe", "Handball", "Brazil");
INSERT INTO Athlete VALUES ("001153", "BORGESG", "Gabriel", "Sailing", "Brazil");
INSERT INTO Athlete VALUES ("001154", "BORGLIS", "Stine", "Cycling Road", "Norway");
INSERT INTO Athlete VALUES ("001155", "BORGOHAINL", "Lovlina", "Boxing", "India");
INSERT INTO Athlete VALUES ("001156", "BORKOWSKIM", "Mateusz", "Athletics", "Poland");
INSERT INTO Athlete VALUES ("001157", "BORLEED", "Dylan", "Athletics", "Belgium");
INSERT INTO Athlete VALUES ("001158", "BORLEEJ", "Jonathan", "Athletics", "Belgium");
INSERT INTO Athlete VALUES ("001159", "BORLEEK", "Kevin", "Athletics", "Belgium");
INSERT INTO Athlete VALUES ("001160", "BORODACHEVK", "Kirill", "Fencing", "ROC");
INSERT INTO Athlete VALUES ("001161", "BORODAVKOJ", "Jevgenijs", "Judo", "Latvia");
INSERT INTO Athlete VALUES ("001162", "BORODINI", "Ilia", "Swimming", "ROC");
INSERT INTO Athlete VALUES ("001163", "BOROWSKAD", "Dorota", "Canoe Sprint", "Poland");
INSERT INTO Athlete VALUES ("001164", "BORRASM", "Marion", "Cycling Track", "France");
INSERT INTO Athlete VALUES ("001165", "BORREROMOLINAI", "Ismael", "Wrestling", "Cuba");
INSERT INTO Athlete VALUES ("001166", "BORTHWICKE", "Emily", "Athletics", "Great Britain");
INSERT INTO Athlete VALUES ("001167", "BORUTTAS", "Samantha", "Athletics", "Germany");
INSERT INTO Athlete VALUES ("001168", "BORYKAUM", "Mikita", "Canoe Sprint", "Belarus");
INSERT INTO Athlete VALUES ("001169", "BOSETTICC", "Caterina Chiara", "Volleyball", "Italy");
INSERT INTO Athlete VALUES ("001170", "BOSHNAKA", "Aliya", "Athletics", "Jordan");
INSERT INTO Athlete VALUES ("001171", "BOSKOVICT", "Tijana", "Volleyball", "Serbia");
INSERT INTO Athlete VALUES ("001172", "BOSSEPA", "Pierre Ambroise", "Athletics", "France");
INSERT INTO Athlete VALUES ("001173", "BOSSERHOFFN", "Niklas", "Hockey", "Germany");
INSERT INTO Athlete VALUES ("001174", "BOSSUYTS", "Shari", "Cycling Track", "Belgium");
INSERT INTO Athlete VALUES ("001175", "BOSWORTHS", "Sam", "Rowing", "New Zealand");
INSERT INTO Athlete VALUES ("001176", "BOSWORTHT", "Tom", "Athletics", "Great Britain");
INSERT INTO Athlete VALUES ("001177", "BOTALOVAM", "Maria", "Rowing", "ROC");
INSERT INTO Athlete VALUES ("001178", "BOTEKA", "Adam", "Canoe Sprint", "Slovakia");
INSERT INTO Athlete VALUES ("001179", "BOTINCHEVERD", "Diego", "Sailing", "Spain");
INSERT INTO Athlete VALUES ("001180", "BOTITUV", "Vilimoni", "Rugby Sevens", "Fiji");
INSERT INTO Athlete VALUES ("001181", "BOTLOGETSWEC", "Christine", "Athletics", "Botswana");
INSERT INTO Athlete VALUES ("001182", "BOTTCJ", "", "Football", "New Zealand");
INSERT INTO Athlete VALUES ("001534", "CARUSOD", "Damiano", "Cycling Road", "Italy");
INSERT INTO Athlete VALUES ("001535", "CARVALHOL", "Lucas", "Athletics", "Brazil");
INSERT INTO Athlete VALUES ("001536", "CASASQ", "Queralt", "Basketball", "Spain");
INSERT INTO Athlete VALUES ("001537", "CASAST", "Triston", "Baseball/Softball", "United States of America");
INSERT INTO Athlete VALUES ("001538", "CASELLASCHUTHM", "Maico", "Hockey", "Argentina");
INSERT INTO Athlete VALUES ("001539", "CASETTAB", "Belen", "Athletics", "Argentina");
INSERT INTO Athlete VALUES ("001540", "CASEYP", "Paul", "Golf", "Great Britain");
INSERT INTO Athlete VALUES ("001541", "CASHINA", "Amy", "Athletics", "Australia");
INSERT INTO Athlete VALUES ("001542", "CASILLASGARCIAM", "Miriam", "Triathlon", "Spain");
INSERT INTO Athlete VALUES ("001543", "CASLICKC", "Charlotte", "Rugby Sevens", "Australia");
INSERT INTO Athlete VALUES ("001544", "CASSANDROT", "Tammaro", "Shooting", "Italy");
INSERT INTO Athlete VALUES ("001545", "CASSARAA", "Andrea", "Fencing", "Italy");
INSERT INTO Athlete VALUES ("001546", "CASSEM", "Matthias", "Judo", "Belgium");
INSERT INTO Athlete VALUES ("001547", "CASSIEMAD", "Abdud Dayaan", "Hockey", "South Africa");
INSERT INTO Athlete VALUES ("001548", "CASSIEMM", "Mustaphaa", "Hockey", "South Africa");
INSERT INTO Athlete VALUES ("001549", "CASSINA", "Alexandre", "Table Tennis", "France");
INSERT INTO Athlete VALUES ("001550", "CASSONJ", "Jennifer", "Rowing", "Canada");
INSERT INTO Athlete VALUES ("001551", "CASTALDOM", "Matteo", "Rowing", "Italy");
INSERT INTO Coach VALUES ("202001", "CALDASM", "Max", "Hockey", "Netherlands");
INSERT INTO Coach VALUES ("202002", "CAMPAGNAA", "Alessandro", "Water Polo", "Italy");
INSERT INTO Coach VALUES ("202003", "CAROC", "Carlos", "Baseball/Softball", "Mexico");
INSERT INTO Coach VALUES ("202004", "CASAREZML", "Mary Lucy", "Baseball/Softball", "Japan");
INSERT INTO Coach VALUES ("202006", "CHAMBERSC", "Cheryl", "Basketball", "Australia");
INSERT INTO Coach VALUES ("202007", "CHEPAKA", "Anastasiya", "Artistic Swimming", "Egypt");
INSERT INTO Coach VALUES ("202008", "CHEPAKA", "Anastasiya", "Artistic Swimming", "Egypt");
INSERT INTO Coach VALUES ("202009", "CHERNETSKAN", "Natalia", "Artistic Swimming", "Greece");
INSERT INTO Coach VALUES ("202010", "CHERNETSKAN", "Natalia", "Artistic Swimming", "Greece");
INSERT INTO Coach VALUES ("202011", "CHIARIS", "Simona", "Artistic Swimming", "San Marino");
INSERT INTO Coach VALUES ("202012", "CHOIIE", "Il Eon", "Baseball/Softball", "Republic of Korea");
INSERT INTO Coach VALUES ("202013", "CHUNJ", "Jooweon", "Basketball", "Republic of Korea");
INSERT INTO Coach VALUES ("202014", "CLARKSTEPHENG", "Gregg", "Hockey", "India");
INSERT INTO Coach VALUES ("202015", "COLLETV", "Vincent", "Basketball", "France");
INSERT INTO Coach VALUES ("202016", "COMMENSA", "Adam", "Hockey", "Belgium");
INSERT INTO Coach VALUES ("202017", "COURTEIXD", "David", "Rugby Sevens", "France");
INSERT INTO Coach VALUES ("202018", "CRESPIJAUMEM", "Margalida", "Artistic Swimming", "Colombia");
INSERT INTO Coach VALUES ("202020", "DALZOTTOR", "Renan", "Volleyball", "Brazil");
INSERT INTO Coach VALUES ("202021", "DANCERS", "Sean", "Hockey", "Ireland");
INSERT INTO Coach VALUES ("202022", "DANCHENKOT", "Tatiana", "Artistic Swimming", "ROC");
INSERT INTO Coach VALUES ("202025", "FUENTECASTILLOL", "Luis", "Football", "Spain");
INSERT INTO Coach VALUES ("202026", "MOURAL", "Luizomar", "Volleyball", "Kenya");
INSERT INTO Coach VALUES ("202027", "OLIVEIRAMR", "Marcus Ricardo", "Handball", "Brazil");
INSERT INTO Coach VALUES ("202028", "VOSRJ", "Robbert Jan", "Hockey", "Netherlands");
INSERT INTO Coach VALUES ("202029", "DELANEYM", "Mike", "Hockey", "New Zealand");
INSERT INTO Coach VALUES ("202030", "DEMCHENKOZ", "Zhanna", "Artistic Swimming", "Kazakhstan");
INSERT INTO Coach VALUES ("202031", "DIAZFERNANDEZJM", "Jenaro Manuel", "Basketball", "Spain");
INSERT INTO Coach VALUES ("202032", "DIAZHENRIQUEZN", "Nestor", "Basketball", "Dominican Republic");
INSERT INTO Coach VALUES ("202033", "DIDENKON", "Natalia", "Artistic Swimming", "Spain");
INSERT INTO Coach VALUES ("202034", "DOBSONH", "Howard", "Baseball/Softball", "United States of America");
INSERT INTO Coach VALUES ("202035", "DOREK", "Karine", "Artistic Swimming", "Canada");
INSERT INTO Coach VALUES ("202036", "DROBNJAKD", "Dragisa", "Basketball", "Slovenia");
INSERT INTO Coach VALUES ("202037", "SCARIOLOS", "Sergio", "Basketball", "Spain");
INSERT INTO Coach VALUES ("202038", "SCHILLINGA", "April", "Basketball", "Nigeria");
INSERT INTO Coach VALUES ("202039", "SEKULICA", "Aleksander", "Basketball", "Slovenia");
INSERT INTO Coach VALUES ("202040", "SEOCO", "Chun Oh", "Rugby Sevens", "Republic of Korea");
INSERT INTO Coach VALUES ("202041", "SERMANNIT", "Tom", "Football", "New Zealand");
INSERT INTO Coach VALUES ("202042", "SHAHINTABM", "Mehran", "Basketball", "Islamic Republic of Iran");
INSERT INTO Coach VALUES ("202043", "SHAHNAZIS", "Shahbaz", "Artistic Swimming", "Austria");
INSERT INTO Coach VALUES ("202044", "SHAWG", "Graham", "Hockey", "New Zealand");
INSERT INTO Coach VALUES ("202045", "SHAWKYG", "Gharib", "Football", "Egypt");
INSERT INTO Coach VALUES ("202046", "SIAMZ", "Zaghloul", "Football", "Egypt");
INSERT INTO Coach VALUES ("202047", "SIGURDSSOND", "Dagur", "Handball", "Japan");
INSERT INTO Coach VALUES ("202048", "SIMIYUI", "Innocent", "Rugby Sevens", "Kenya");
INSERT INTO Coach VALUES ("202049", "SINGHS", "Shivendra", "Hockey", "India");
INSERT INTO Coach VALUES ("202050", "SMITHD", "Darren", "Hockey", "New Zealand");
INSERT INTO Coach VALUES ("202051", "SMITHM", "Mark", "Baseball/Softball", "Canada");
INSERT INTO Coach VALUES ("202052", "SOLBERGG", "Glenn", "Handball", "Sweden");
INSERT INTO Coach VALUES ("202053", "SOYEZF", "Frederic", "Hockey", "Spain");
INSERT INTO Coach VALUES ("202054", "SPERAWJ", "John", "Volleyball", "United States of America");
INSERT INTO Coach VALUES ("202055", "SPERONIS", "Stefania", "Artistic Swimming", "Great Britain");
INSERT INTO Coach VALUES ("202056", "STALEYD", "Dawn", "Basketball", "United States of America");
INSERT INTO Coach VALUES ("202057", "STANIFORTHD", "Dave", "Hockey", "Australia");
INSERT INTO Coach VALUES ("202058", "STASJ", "Jacques", "Basketball", "Belgium");