import folium
import pandas
import psycopg2
import time

while True:

    #conn = psycopg2.connect(host="localhost", port = 5432, database="Demo", user="postgres", password="postgres123")
    #cur = conn.cursor()
    #cur.execute("SELECT * FROM con")
    #query_result = cur.fetchall()
    #conn.commit()

    data = pandas.read_csv("C:/Users/DIPESH/Desktop/Main/Map_Files/map_dataset.csv")
    lat = list(data["Latitude"])
    lon = list(data["Longitude"])
    cases= list(data["Total child labour cases"])

    data1 = pandas.read_csv("C:/Users/DIPESH/Desktop/Main/Map_Files/map_dataset.csv")
    lat1 = list(data["Latitude"])
    lon1 = list(data["Longitude"])
    cases1= list(data["total crime against women"])

    def color_decider(no_of_cases):
        if no_of_cases < 2000:
            return "green"
        elif 2000<= no_of_cases < 10000:
            return "orange"
        else:
            return "red"

    map = folium.Map(location=[22.888378, 79.614675], zoom_start= 6,tiles = "Stamen Terrain" )

    fgc = folium.FeatureGroup(name= "Crime Against Children")
    fgw = folium.FeatureGroup(name= "Crime Against Women")

    for lt,lg,ca in zip(lat , lon,cases):
        fgc.add_child(folium.Marker(location=(lt, lg), popup = str(ca)+" cases", icon = folium.Icon(color= color_decider(ca)) ))

    for lt1,lg1,ca1 in zip(lat1, lon1, cases1):
        fgw.add_child(folium.Marker(location=(lt1, lg1), popup = str(ca1)+" cases", icon = folium.Icon(color= color_decider(ca1))))
    

    fgp = folium.FeatureGroup(name= " World Population")

    fgp.add_child(folium.GeoJson(data=open("world.json","r",encoding= "utf-8-sig").read(),
    style_function = lambda x: {"fillColor":"green" if x["properties"]["POP2005"] < 10000000
    else "orange" if 10000000<= x["properties"]["POP2005"] < 20000000 else "red"}))

    map.add_child(fgc)
    map.add_child(fgp)
    map.add_child(fgw)

    map.add_child(folium.LayerControl())

    map.save("Portal.html")
    time.sleep(15)
