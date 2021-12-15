#**********************************
# Author: Caio Marteli 19598552
#**Python Script to make sql input files from .csv data
#**********************************

import csv
import json


# #**********************************
# #**FILM
# # Formats and outputs to a .sql file
# #**********************************
# insert_film = (
#     "INSERT INTO Film VALUES(%s, %s, %s);"
# )

# path = "Tables/oscar_data.csv"
# outputPath = "inData1.sql"

# inFile = open(path, newline='')
# reader = csv.reader(inFile)
# header = next(reader)
# outFile = open(outputPath, 'w')
# #[filmYear[0],oscarYear[1],oscarID[2],category/role[3],names[4],filmName[5],winner[6]]
# data = []
# #json wraps into sql safe strings
# for row in reader:
#     fYear = row[0]
#    # oscarYear = row[1]
#     oscarID = row[2]
#    # role = json.dumps(row[3])
#    # names = json.dumps(row[4])
#     fName = json.dumps(row[5])
#    # winner = row[6]
#     #film row = [filmName,filmYear,oscarID]
#     print(insert_film % (fName, fYear, oscarID))
#     outFile.write(insert_film % (fName, fYear, oscarID) + "\n")

#**********************************
#**Nominee
# Formats and outputs to a .sql file
#**********************************

insert_actor = (
    "INSERT INTO Nominee VALUES(%s, %s, null);"
)

path = "Tables/oscar_data.csv"
outputPath = "inData2.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')
#[filmYear[0],oscarYear[1],oscarID[2],category/role[3],names[4],filmName[5],winner[6]]
data = []
#json wraps into sql safe strings
nID = 6897569
for row in reader:
    nID += 1
    ns = str(nID)
   # fYear = row[0]
   # oscarYear = row[1]
   # oscarID = row[2]
    #role = json.dumps(row[3])
    names = json.dumps(row[4])
    #fName = json.dumps(row[5])
   # winner = row[6]
    #Nominee row = [names, role]
    print(insert_actor % (ns, names))
    outFile.write(insert_actor % (ns, names) + "\n")


#**********************************
#**Nominations
# Formats and outputs to a .sql file
#**********************************
insert_nom = (
    "INSERT INTO Nominations VALUES(0, %s, %s, %s, %s);"
)

path = "Tables/oscar_data.csv"
outputPath = "inData3.sql"

inFile = open(path, newline='')
reader = csv.reader(inFile)
header = next(reader)
outFile = open(outputPath, 'w')
#[filmYear[0],oscarYear[1],oscarID[2],category/role[3],names[4],filmName[5],winner[6]]
data = []
#json wraps into sql safe strings
for row in reader:
   # fYear = row[0]
   # oscarYear = row[1]
    oscarID = row[2]
    role = json.dumps(row[3])
    names = json.dumps(row[4])
   # fName = json.dumps(row[5])
    winner = row[6]
    #Nominations row = [oscarid, names, role, winner]
    print(insert_nom % (oscarID, names, role, winner))
    outFile.write(insert_nom % (oscarID, names, role, winner) + "\n")