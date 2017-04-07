import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

# Pull in the min and max values

#Connecting to tcount
conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()
cur.execute("SELECT word, count from tweetwordcount  \
			ORDER BY count DESC LIMIT 20;", (min, max))
records = cur.fetchall()

for record in records:
	print str(record[0]) + ": " + str(record[1])

conn.close()
