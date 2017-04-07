import sys
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

#import matplotlib.pyplot as plt
import pandas as pd

# Pull in the min and max values

#Connecting to tcount
conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()
cur.execute("SELECT word, count from tweetwordcount  \
			ORDER BY count DESC LIMIT 20;", (min, max))
records = cur.fetchall()

words_list = []
counts_list = []

for record in records:
	print str(record[0]) + ": " + str(record[1])
	words_list.append(record[0])
	counts_list.append(record[1])

print words_list
print counts_list

df = pd.DataFrame(counts_list, words_list)
print df

#df.plot()

df.to_csv('bar.csv', header=False)
# y_pos = np.arange(len(objects))

# plt.bar(records[1], performance, align='center', alpha=0.5)
# plt.xticks(y_pos, objects)
# plt.ylabel('Usage')
# plt.title('Programming language usage')
 
# plt.show()


conn.close()
