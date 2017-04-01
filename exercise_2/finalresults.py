import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

arg = sys.argv[1:][0]

#Connecting to tcount
conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()
cur.execute("SELECT word, count from tweetwordcount")
records = cur.fetchall()


for rec in records:
	if arg == rec[0]:
		print "word = ", rec[0]
		print "count = ", rec[1], "\n"
		print 'Total number of occurrences of of "%s": %s', (rec[0], rec[1])
conn.commit()