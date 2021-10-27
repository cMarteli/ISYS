import mysql.connector
from getpass import getpass
from sqlite3 import OperationalError

def executeScriptsFromFile(filename):
    # Open and read the file as a single buffer
    fd = open(filename, 'r')
    sqlFile = fd.read()
    fd.close()

    # all SQL commands (split on ';')
    sqlCommands = sqlFile.split(';')

    # Execute every command from the input file
    for command in sqlCommands:
        # This will skip and report errors
        # For example, if the tables do not yet exist, this will skip over
        # the DROP TABLE commands
        try:
            cursor.execute(command)
        except OperationalError as msg:
            print("Command skipped: ", msg)

try:
    #connection string DEBUG
    conn = mysql.connector.connect(
        host="localhost",
        user="caio",
        password='Bolony@1',
        database='Olympics'
        )
    #connection string
    # conn = mysql.connector.connect(
    #     host="localhost",
    #     user=input("Enter username: "),
    #     password=getpass("Enter password: "),
    #     database='dswork'
    #     )
    if conn.is_connected():
        conn.autocommit = True #turns auto commit on

        cursor = conn.cursor() #cursor instance

        #cursor.execute("SELECT DATABASE()") # show the database you are connected to
        #dbName = cursor.fetchone()
        #print("Succesfully connected to: ", dbName)

        #executeScriptsFromFile("queries.sql")
        #executeScriptsFromFile("InMedals.sql")
        executeScriptsFromFile("InAthletes.sql")


except mysql.connector.Error as err: #error handling
    print("Error while connecting to MySQL", err)

finally: #close
    if conn.is_connected():
        #commits changes if autocommit is off
        # conn.commit()
        cursor.close()
        conn.close()
        print("\n******* Good bye *******")


