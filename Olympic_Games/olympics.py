import mysql.connector
from getpass import getpass
from sqlite3 import OperationalError
#IMPORT: filename (String)
#EXPORT:
#ASSERTION: Opens a csv file and reads and creates a sql query file.
def loadSqlScript(filename):
    # Open and read the file as a single buffer
    file = open(filename, 'r')
    sqlFile = file.read()
    file.close()
    sqlQueries = sqlFile.split(';') # SQL queries split at ';'
    # Execute every command from the input file
    for command in sqlQueries:
        try:
            cursor.execute(command)
        except OperationalError as msg:
            print("Command skipped: ", msg)
#connection
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
    #     password=getpass("Enter password: ")
    #     )

    if conn.is_connected():
        conn.autocommit = True #turns auto commit on
        cursor = conn.cursor() #cursor instance
        cursor = conn.cursor(buffered=True)

        print("Creating database and tables...")
        loadSqlScript("newFile.sql")

        # print("Loading Countries...")
        # loadSqlScript("inCountries.sql")

        # print("Loading Disciplines...")
        # loadSqlScript("inDisciplines.sql")

        # print("Loading Athletes...")
        # loadSqlScript("small.sql")

        # print("Loading Coaches...")
        # loadSqlScript("inCoaches.sql")

        print("COMPLETE")


except mysql.connector.Error as err: #error handling
    print("Error while connecting to MySQL", err)

finally: #close
    if conn.is_connected():
        cursor.close()
        conn.close()
        print("\n******* Good bye *******")