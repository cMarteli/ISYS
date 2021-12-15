#**********************************
# Author: Caio Marteli 19598552
#**Python Script to make sql input files from .csv data
#**********************************

import csv
import json
import re


#**********************************
#**FILM
# Formats and outputs to a .sql file
#**********************************
insert_stmt = (
    "INSERT INTO Film VALUES(%s, %s);"
)

path = "Tables/oscar_data.csv"
outputPath = "inFilms.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')

data = []
#json wraps into sql safe strings
for row in reader: # row = [filmName,filmYear]
    fName = json.dumps(row[5])
    fYear = row[0]
    print(insert_stmt % (fName, fYear))
    outFile.write(insert_stmt % (fName, fYear) + "\n")
#**********************************
#**NOMINEE
# Formats and outputs to a .sql file
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
# Formats and outputs to a .sql file
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
# Formats and outputs to a .sql file
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