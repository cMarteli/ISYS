import csv
import json
import re
#**********************************
#**Python Script to make sql input files from .csv data
#**********************************
#**********************************
#**ATHLETE
#**********************************
insert_stmt = (
    "INSERT INTO Athlete VALUES (%s, %s, %s, %s, %s);"
)

path = "athTrim.csv"
outputPath = "InAthletes.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')

data = []
#json wraps into sql safe strings
for row in reader: # row = [Name, NOC, Discipline]
    number = json.dumps(row[0].zfill(6))
    sname = json.dumps("".join(re.findall('([A-Z])', row[1]))) #regex grabs only surname
    fname = json.dumps(" ".join(re.findall('([A-Z][a-z]+)', row[1]))) #regex grabs given Names
    noc = json.dumps(row[2])
    discipline = json.dumps(row[3])
    print(insert_stmt % (number, sname, fname, discipline, noc))
    outFile.write(insert_stmt % (number, sname, fname, discipline, noc) + "\n")

#**********************************
#**COUNTRY
#**********************************
insert_stmt = (
    "INSERT INTO Country VALUES (%s, %s, %s);"
)

path = "Medals.csv"
outputPath = "InMedals.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')

data = []
for row in reader: # row = [country, rank, totalMedals]
    id = json.dumps(row[1])
    rank = json.dumps(row[0])
    total = json.dumps(row[5])
    print(insert_stmt % (id, rank, total))
    outFile.write(insert_stmt % (id, rank, total) + "\n")

#**********************************
#**COUNTRY
#**********************************
insert_stmt = (
    "INSERT INTO Country VALUES (%s, %s, %s);"
)

path = "Medals.csv"
outputPath = "InMedals.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')

data = []
for row in reader: # row = [country, rank, totalMedals]
    id = json.dumps(row[1])
    rank = json.dumps(row[0])
    total = json.dumps(row[5])
    print(insert_stmt % (id, rank, total))
    outFile.write(insert_stmt % (id, rank, total) + "\n")