import sqlite3

def get_connection_to_sql_database():
    try:
        return sqlite3.connect('my_database.db')
    except:
        return False
    
with get_connection_to_sql_database() as conn:
    cursor = conn.cursor()
    cursor.execute("SELECT *, day FROM users")
    users = cursor.fetchall()