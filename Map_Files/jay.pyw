import folium
import pandas
import psycopg2
import time

while True:

    conn = psycopg2.connect(host="localhost", port = 5432, database="Demo", user="postgres", password="postgres123")
    cur = conn.cursor()
    cur.execute("SELECT * FROM con")
    query_result = cur.fetchall()
    conn.commit()

    data = pandas.read_sql_query("SELECT * FROM con",conn)
    data.to_csv(r'C:\Users\DIPESH\Desktop\BE Project\PROJECT\Map Files\dataframe1.csv',header=True)
    print("Updated")
    time.sleep(10)