import csv
import json
import re
#**********************************
#**Python Script to make sql input files from .csv data
#**********************************

#**********************************
#**DISCIPLINE
#**********************************
insert_stmt = (
    "INSERT INTO Discipline VALUES(%s, %s, %s, null);"
)
#need to add gender field

path = "Tables/Entries.csv"
outputPath = "inDisciplines.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')

data = []
#json wraps into sql safe strings
for row in reader: # row = [Name, NOC, Discipline]
    discipline = json.dumps(row[0])
    maleNum = row[1]
    femaleNum = row[2]
    print(insert_stmt % (discipline, maleNum, femaleNum))
    outFile.write(insert_stmt % (discipline, maleNum, femaleNum) + "\n")
#**********************************
#**COUNTRY
#**********************************
insert_stmt = (
    "INSERT INTO Country VALUES (%s, %s, %s, %s, %s);"
)

path = "Tables/Medals.csv"
outputPath = "inCountries.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')

data = []
for row in reader: # row = [country, rank, totalMedals]
    id = json.dumps(row[1])
    rank = row[0]
    gold = row[2]
    silver = row[3]
    bronze = row[4]
    print(insert_stmt % (id, rank, gold, silver, bronze))
    outFile.write(insert_stmt % (id, rank, gold, silver, bronze) + "\n")
#**********************************
#**ATHLETE
#**********************************
insert_stmt = (
    "INSERT INTO Athlete VALUES (%s, %s, %s, %s, %s);"
)

path = "Tables/Athletes2.csv" #trimmed file
outputPath = "inAthletes.sql"

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
#**COACHES
#**********************************
insert_stmt = (
    "INSERT INTO Coach VALUES (%s, %s, %s, %s, %s);"
)

path = "Tables/Coaches2.csv"
outputPath = "inCoaches.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')

data = []
#json wraps into sql safe strings
for row in reader: # row = [Name, NOC, Discipline]
    number = json.dumps(row[0])
    sname = json.dumps("".join(re.findall('([A-Z])', row[1]))) #regex grabs only surname
    fname = json.dumps(" ".join(re.findall('([A-Z][a-z]+)', row[1]))) #regex grabs given Names
    noc = json.dumps(row[2])
    discipline = json.dumps(row[3])
    print(insert_stmt % (number, sname, fname, discipline, noc))
    outFile.write(insert_stmt % (number, sname, fname, discipline, noc) + "\n")