Rob Mulla's Exercise 2 - W205
Below are instructions on how to execute the code:

----------------
% STEP 1
----------------

Make sure postgres is running and you are in the \exercise_2\ directory

----------------
% STEP 2
----------------

Drop the tcount table if it exists

>> psql -U postgres -c "DROP DATABASE tcount"

----------------
% STEP 3
----------------

Run the twitter stream

>> cd extweetwordcount/
>> sparse run

Wait ~5 minutes and type `Control-C` to stop the process

----------------
% STEP 4
----------------

>> cd ..
>>