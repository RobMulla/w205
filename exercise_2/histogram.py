import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

# Pull in the min and max values
try:
	minmax = sys.argv[1:][0]
	#print minmax
	min, max = minmax.split(',')

	#Connecting to tcount
	conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
	cur = conn.cursor()
	cur.execute("SELECT word, count from tweetwordcount where count >= %s and count <= %s \
				ORDER BY count DESC;", (min, max))
	records = cur.fetchall()

	for record in records:
		print str(record[0]) + ": " + str(record[1])

except:
	print "bad format. This program requires two numbers 1,2"

# Close the connection
conn.close()
