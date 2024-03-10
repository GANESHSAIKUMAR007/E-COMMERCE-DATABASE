import mysql.connector
import os

def fetch_data_and_store():

    try:
        conn = mysql.connector.connect(
            host='localhost',
            user='root',  
            password='Password',  
            database='PROJECT_DB'
        )
        
        if conn.is_connected():
            print("Connected to MySQL database")
            
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM orderTable LIMIT 3")  
            data = cursor.fetchall()
            
            file_path = r'C:\connector\optionTablePulled.txt'
            
            with open(file_path, "w") as file:
                for row in data:
                    file.write(str(row) + "\n")
                    
            print("Data stored in optionTablePulled.txt at", file_path)
                    
    except mysql.connector.Error as e:
        print("Error connecting to MySQL:", e)
        
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()
            print("MySQL connection closed")

if __name__ == "__main__":
    fetch_data_and_store()
