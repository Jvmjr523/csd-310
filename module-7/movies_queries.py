import mysql.connector


db = mysql.connector.connect(
    user="root",
    password="July2010!",
    host="127.0.0.1",
    database="movies",

)

cursor = db.cursor()
cursor.execute("SELECT studio_id, studio_name FROM studio")
results1 = cursor.fetchall()
print("----Displaying Studio RECORDS----\n")
for row in results1:
    print("Studio Id:", row[0], "\n", "Studio Name:", row[1],"\n")
print()

cursor = db.cursor()
cursor.execute("SELECT genre_id, genre_name FROM genre")
results2 = cursor.fetchall()
print("----Displaying Genre RECORDS----\n")
for row in results2:
    print("Genre ID:", row[0], "\n","Genre Name:", row[1],"\n")
print()

cursor = db.cursor()
cursor.execute("SELECT film_name, film_runtime FROM film WHERE film_runtime < 120")
results3 = cursor.fetchall()
print("----Displaying short Film RECORDS----\n")
for row in results3:
    print("Film Name:", row[0],"\n","Film Runtime:",row[1],"\n")
print()

cursor = db.cursor()
cursor.execute("SELECT Film_name, Film_director FROM film")
results4 = cursor.fetchall()
print("----Displaying Director RECORDS in Order----\n")
for row in results4:
    print("Film Name:", row[0],"\n", "Director:",row[1],"\n")
print()

cursor.close()

db.close()
