# pip3 install mysql-connector-python
import mysql.connector

brothers_db = mysql.connector.connect (
    host = "localhost",
    database = "brothers_db",
    user = "root",
    passwd = "admin",
    auth_plugin = 'mysql_native_password'
)

mycursor = brothers_db.cursor()
mycursor.execute("select * from tbl_profiles")

for x in mycursor:
    print("My name is " + x[1])