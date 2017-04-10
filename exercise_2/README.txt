# Rob Mulla's Exercise 2 - W205
## Below are instructions on how to execute the code:

----------------
STEP 0
----------------

Clone the repo to your local EC instance

`$ git clone https://github.com/RobMulla/w205`

----------------
STEP 1
----------------

Make sure postgres is running and you are in the \exercise_2\ directory

Also install python packages

`$ pip install matplotlib`

`$ pip install psycopg2==2.6.2`

Log into w205 account
`$ su - w205`


----------------
STEP 2
----------------

Add twitter credentials

Go to the following folder, vi into the tweets.py file and add your twitter API credentials. You can also add to the Twittercredentials.py file

`$ cd exercise_2\extweetwordcount\src\spouts\`
`$ vi tweets.py`


You will add your credentials in the section that says this:

```
twitter_credentials = {
    "consumer_key"        :  "",
    "consumer_secret"     :  "",
    "access_token"        :  "",
    "access_token_secret" :  "",
}
```

----------------
STEP 3
----------------

Drop the tcount table if it exists

`$ psql -U postgres -c "DROP DATABASE tcount"`

----------------
STEP 4
----------------

Run the twitter stream

`$ cd extweetwordcount/`

`$ sparse run`

Wait ~5 minutes and type `Control-C` to stop the process

----------------
STEP 5
----------------

Run python code to test results

`$ cd ..`

`$ python finalresults.py`

Find the number of times trump was mentioned

`$ python finalresults.py trump`


----------------
STEP 6
----------------

run the histogram python script

`$ python histogram.py 20,500`