import csv

insert_stmt = (
    "INSERT INTO Athlete VALUES (%s, %s, %s, %s);"
)

path = "Athletes.csv"
inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)

outputPath = "InAthletes.sql"
outFile = open(outputPath, 'w')

data = []
for row in reader: # row = [Name, NOC, Discipline]
    number =row[0]
    name = "'"+row[1]+"'"
    noc = "'"+row[2]+"'"
    discipline = "'"+row[3]+"'"
    #print(insert_stmt % (number, name, noc, discipline))
    outFile.write(insert_stmt % (number, name, noc, discipline) + "\n")