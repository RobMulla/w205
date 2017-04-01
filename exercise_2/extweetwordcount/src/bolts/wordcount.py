from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt

import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT





class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()
        
        conn = psycopg2.connect(database="postgres", user="postgres", password="pass", host="localhost", port="5432")


        try:
            # CREATE DATABASE can't run inside a transaction
            conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
            cur = conn.cursor()
            cur.execute("CREATE DATABASE tcount")
            cur.close()
            conn.close()
        except:
            print("Could not create tcount")

        # Connect to tcount

        conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
        conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)

        #Create a Table
        #The first step is to create a cursor. 

        cur = conn.cursor()

        try:
            conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
            cur = conn.cursor()
            cur.execute("DROP TABLE IF EXISTS tweetwordcount; \
                CREATE TABLE tweetwordcount \
                (word TEXT PRIMARY KEY     NOT NULL, \
                count INT     NOT NULL);")
            conn.commit()
            conn.close()
        except:
            print("Could not create table")

    def process(self, tup):
        tword = tup.values[0]

        print(tword)

        # Increment the local count
        self.counts[tword] += 1
        self.emit([tword, self.counts[tword]])

        # Log the count - just to see the topology running
        self.log('%s: %d' % (tword, self.counts[tword]))


        conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
        conn.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
        cur = conn.cursor()

        cur.execute("UPDATE tweetwordcount set count=count+1 where word = %s",(tword,))
        cur.execute("INSERT INTO tweetwordcount (word,count) \
                        Select %s,1 WHERE NOT EXISTS (SELECT * FROM tweetwordcount WHERE word = %s)", (tword, tword))
        conn.commit()

        conn.close()

        # Write codes to increment the word count in Postgres
        # Use psycopg to interact with Postgres
        # Database name: Tcount 
        # Table name: Tweetwordcount 
        # you need to create both the database and the table in advance.
        



