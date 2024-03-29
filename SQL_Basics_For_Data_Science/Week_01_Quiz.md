### Question 1
Based on the dataset for this course, what does this query count?

<IMAGE>

A. Counts the number of rows in the orders table
B. **INCORRECT** Counts the number of users who have ordered an item
C. **INCORRECT** Counts the number of invoices
D. **INCORRECT** Counts the numbers of users


----------------------------------------------------------
###  Question 2
Assume you have no information about the data in the example table.

When I run the query below,  no rows are returned, but there are no error messages. What are possible reasons for this? (Select all that apply.)

<image>

A. **CORRECT** There are no rows in the example_table - it's empty
B. There is no column called id
C. **CORRECT** There are no rows with a null id

Select all the correct answers
----------------------------------------------------------
### Question 3
In the events table, (dsv1069.events) for this class, how many rows exist per event_id?

A. **INCORRECT** Always more than one
B. **INCORRECT** Exactly one
C. **CORRECT** One per parameter_name

Incorrect
Please revisit the lesson: Introduction to the Course Dataset.

----------------------------------------------------------
### Question 4
When you encounter a new dataset, which of the following can you assume? (Select all that apply.)

A. Test usage is unfiltered
B. The table is empty
C. **CORRECT** The data is out-of-date
D. **INCORRECT** The table has a primary key
E. **CORRECT** There are duplicate rows

----------------------------------------------------------
###   Question 5
TROUBLESHOOT THIS ERROR: 
Based on your exploration of the tables in the course dataset. Why are the results to this specific query empty?

<IMAGE>

A. **CORRECT** There are no parent_user_ids that satisfy the WHERE clause
B. There are no events with this event_name
C. **INCORRECT** The users table is empty

Correct
You've got this!

----------------------------------------------------------
###  Question 6
TROUBLESHOOT THIS ERROR: 
Why are the results for this specific query empty? 

<IMAGE>

A. No items have ever been viewed
B. The table is empty
C. **Correct** There are no events with this event_name



----------------------------------------------------------
###  Question 7
What does this query do? Select all true statements.


<IMAGE>

0.6 / 1 point

A. **INCORRECT** The query counts the number of events.
B. **INCORRECT** The query counts the number of view_item events.
C. **CORRECT** The query counts the number of rows corresponding to view_item events.
D. The query returns all of the rows in the events table.
E. **INCORRECT** The query counts the number of rows in the events table.

* Count(*) counts rows not unique events, and because of this where clause it counts the number of view_item event rows.

----------------------------------------------------------
###  Question 8
Consider the following query:

undefined

What happens when some rows have a NULL value in the column table_alpha.key?

A. **INCORRECT** Each row with a null value will be joined to every row in table_beta.
B. Each row with a null value is joined to every row in table_beta where table_beta.column is null.
C. **INCORRECT** It is not possible for a join key to be null, the query will return an error.
D. **INCORRECT** Those values aren't included in the result.

----------------------------------------------------------
### Question 9
Which of the following are problems with the query below?

<IMAGE>

A. **CORRECT** Count(*) counts rows not unique users
B. The join should be on users.user_id
C. **INCORRECT** The join should be on users.parent_user_id
D. We need a GROUP BY clause
E. **INCORRECT** We are missing a comma
F. There are no error messages, so it must be right

Incorrect
Please revisit the video: Users Table (Solution).

----------------------------------------------------------
### Question 10
In the users table, the column parent_user_id is __________________.


A. **INCORRECT** Never NULL
B. Always NULL
C. **CORRECT** Sometimes NULL

Incorrect
Please revisit the lesson: Introduction to the Course Dataset.