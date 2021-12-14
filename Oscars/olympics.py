#**********************************
# Author: Caio Marteli 19598552
# Python Script to load sql database
#**********************************

import mysql.connector
from getpass import getpass
from sqlite3 import OperationalError

INPUT_FILE_NAME = "loadAll.sql" #HARDCODED - This is the name of the input SQL file
#******************************
# IMPORT: filename (String)
# EXPORT: none
# ASSERTION: Opens a csv file and reads it then creates a sql query file.
#******************************
def loadSqlScript(filename):
    # Open and read the file as a single buffer
    file = open(filename, 'r')
    sqlFile = file.read()
    file.close()
    sqlQueries = sqlFile.split(';')
    for command in sqlQueries:
        try:
            cursor.execute(command)
        except OperationalError as msg:
            print("Command skipped: ", msg)
#connection
try:
    #Attempts to connect to mysqld server
    conn = mysql.connector.connect(
        host="localhost",
        user=input("Enter username: "),
        password=getpass("Enter password: ")
        )

    if conn.is_connected():
        conn.autocommit = True #turns auto commit on
        cursor = conn.cursor() #cursor instance
        cursor = conn.cursor(buffered=True)

        print("Creating database and tables...")
        loadSqlScript(INPUT_FILE_NAME)
        print("COMPLETE")


except mysql.connector.Error as err: #error handling
    print("Error while connecting to MySQL", err)

finally: #close
    if conn.is_connected():
        cursor.close()
        conn.close()
        print("\n******* Good bye *******")