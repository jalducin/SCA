import sqlite3
conn = sqlite3.connect('db.sqlite3')
cursor = conn.cursor()
with open('db/base_datos_ejemplo.sql') as f:
 cursor.executescript(f.read())
conn.commit()
conn.close()
print('Base cargada')