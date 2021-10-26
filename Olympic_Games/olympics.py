import mysql.connector
import csv
from getpass import getpass


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
        #turns auto commit on
        conn.autocommit = True
        #cursor instance
        cursor = conn.cursor()
        # show the database you are connected to
        cursor.execute("SELECT DATABASE()")
        dbName = cursor.fetchone()
        print("Succesfully connected to: ", dbName)

        #init vars

        select_stmt = "SELECT * FROM Athlete"

        insert_stmt = (
            "INSERT INTO Athlete (athleteCode, fullName,country,discipline)"
            "VALUES (%s, %s, %s, %s)"
        )
        create_table = (
        "DROP TABLE IF EXISTS Athlete;"
        "CREATE TABLE Athlete("
        "athleteCode CHAR(8) NOT NULL,"
        "fullName VARCHAR(150) NOT NULL,"
        "country VARCHAR(57),"
        "discipline VARCHAR(30),"
        "PRIMARY KEY(athleteCode) )"
        )

        load_data = (
        "LOAD DATA INFILE 'data.csv' INTO TABLE tbl_name"
        "FIELDS TERMINATED BY ',' "
        "ENCLOSED BY ''"''""
        "LINES TERMINATED BY '\r\n'"
        "IGNORE 1 LINES;"
        )
        #run
        cursor.execute(create_table)

        #path = "InAthletes.sql"

        #cursor.execute("SOURCE " + path + ";")
        #cursor.executemany(insert_stmt, data)
        #print(insert_stmt, data)
        #prints
        # for x in cursor:
        #     print(x)


except mysql.connector.Error as err: #error handling
    print("Error while connecting to MySQL", err)

finally: #close
    if conn.is_connected():
        #commits changes if autocommit is off
        # conn.commit()
        cursor.close()
        conn.close()
        print("\n******* Good bye *******")



# def load_csv():

#     path = "Athletes.csv"
#     file = open(path, newline='')
#     reader = csv.reader(file)

#     header = next(reader) #the first line is the header

#     data = []
#     for row in reader:
#         # row = [Name, NOC, Discipline]
#         name = row[0]
#         noc = row[1]
#         discipline = row[2]

#         data.append([name,noc, discipline])
#     athleteNo = 78
#     print(data[athleteNo-2])

