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
    lat = list(data["latitude"])
    lon = list(data["longitude"])
    cases= list(data["child_labour"])

    def color_decider(no_of_cases):
        if no_of_cases < 2000:
            return "green"
        elif 2000<= no_of_cases < 10000:
            return "orange"
        else:
            return "red"

    map = folium.Map(location=[22.888378, 79.614675], zoom_start= 6,tiles = "Stamen Terrain" )

    fgc = folium.FeatureGroup(name= "Child Labour in India")

    for lt,lg,ca in zip(lat , lon,cases):
        fgc.add_child(folium.Marker(location=(lt, lg), popup = str(ca)+" cases", icon = folium.Icon(color= color_decider(ca)) ))

    fgp = folium.FeatureGroup(name= " World Population")

    fgp.add_child(folium.GeoJson(data=open("world.json","r",encoding= "utf-8-sig").read(),
    style_function = lambda x: {"fillColor":"green" if x["properties"]["POP2005"] < 10000000
    else "orange" if 10000000<= x["properties"]["POP2005"] < 20000000 else "red"}))

    map.add_child(fgc)
    map.add_child(fgp)

    map.add_child(folium.LayerControl())

    map.save("Portal.html")
    time.sleep(15)
