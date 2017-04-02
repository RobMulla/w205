import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

arg = sys.argv[1:][0]

#Connecting to tcount
conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()
cur.execute("SELECT word, count from tweetwordcount")
records = cur.fetchall()
records.sort(key = lambda tup: tup[1])

for rec in records:
	if arg == rec[0]:
		print('Total number of occurrences of "%s": %s') % (rec[0], rec[1])
conn.commit()