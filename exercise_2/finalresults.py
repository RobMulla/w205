import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

arg = sys.argv[1:]
print "sys.argv"
print sys.argv
print "arg is"
print arg

#Connecting to tcount
conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()
cur.execute("SELECT word, count from tweetwordcount")
records = cur.fetchall()


for rec in records:
	if arg == rec[0]:
		print "word = ", rec[0]
		print "count = ", rec[1], "\n"
conn.commit()