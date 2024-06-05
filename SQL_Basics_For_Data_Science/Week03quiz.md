
### Question 1
Which of the following attributes distinguish a work-in-progress from a “polished” final query? (Select all that apply.)

A. **CORRECT** The query is formatted consistently, or according to a style guide
 - Correct. This is an attribute that distinguishes a work-in-progress from a "polished" final query.
B. **INCORRECT** Every join is an inner join
 - This should not be selected. Please revisit the lesson: Test Queries vs. Final Queries.
C. **CORRECT** Every column has a descriptive name
 - This is an attribute that distinguishes a work-in-progress from a "polished" final query.
D. **INCORRECT** Every column is listed in a GROUP BY clause

---------------------------------------------------------------

### Question 2
In which of the following sections did we perform analysis to directly guide decision making?

A. **INCORRECT** Pulling email addresses and item_ids for a promo email
B. **CORRECT** Answering a question about reordering items
C. **INCORRECT** Creating a view items table


---------------------------------------------------------------

### Question 3
Which of the following are uses of a dates rollup table?


A. **CORRECT** Efficiently computing aggregates over a rolling time period
	- This is a good example of how to use a rollup table.

B. **INCORRECT** For keeping track of your meeting schedule
	- This should not be selected. Please revisit the lesson: Create an Aggregate Table with a Rolling Data Period.

C. **CORRECT** Creating dashboards with a complete set of dates

---------------------------------------------------------
### Question 4
We’ve decided to only use the items and users tables to answer the following questions:

* How many items have been purchased?
* How many items do we have?
* Which join type and order will allow us to correctly compute the columns Item_count, items_ever_purchased_count?

* **INCORRECT** **Option A**
<pre><code>
SELECT *

FROM

  dsv1069.users

JOIN

  dsv1069.orders

ON 

  items.id = orders.item
</code></pre>

* **INCORRECT** **Option B**
<pre><code>
SELECT *

FROM

  dsv1069.orders

LEFT JOIN

  dsv1069.items

ON 

  items.id = orders.item
</code></pre>

* **CORRECT** **Option C**
<pre><code>
SELECT   *

FROM  

  dsv1069.items

LEFT OUTER JOIN

  dsv1069.orders

ON 

  items.id = orders.item
</code></pre>


Please revisit the lesson: Map Out Your Joins.

--------------------------------------------------------------
### Question 5
For this statement, fill in the __ with the appropriate inequality (<, <=, =, >=, >):

In any subset of the orders table:

Number of line items __ Number of distinct items ordered

A. =
B. <=
C. >
D. **CORRECT** >=
E. <

#### Explanation 

An item could be ordered multiple times, so the number of line items is always greater than or equal to the number of distinct items ordered. 
There are cases where these numbers could be equal, for example if we are looking at data set with a single invoice consisting of a single  a single line item.

--------------------------------------------------------------
### Question 6

Select the best definition of a windowing function?

A. **CORRECT** It is a function that computes a value on a certain partition, or window, of the data that is specified in the PARTITION BY statement.
B. It allows you to compute aggregations with a rolling date period.
C. It allows you to make your own windows of data. 


This is the best definition of a windowing function.

--------------------------------------------------------------
### Question 7
Folks at the company wonder if our product catalog is too small. 
What are some related questions that you could directly answer with our dataset? (Select all that apply.)



A. **INCORRECT** How many users have purchased an item?
 - This should not be selected. Please revisit the lesson: Map Out Your Joins.
B. **CORRECT** How many items have been purchased?
 - Counting questions related to the number of items.
C. **INCORRECT** What work would need to be done to remove products from the catalog?
D. **CORRECT** How many items do we have?
E. **INCORRECT** How many products do our competitors carry?
F. **CORRECT** How many items have been viewed but not ordered?
G. **CORRECT** How many items have been viewed?
 - Counting questions related to the number of items.

--------------------------------------------------------------
### Question 8
Which of the following tasks can be accomplished with a windowing function? (Select all that apply.)

A. **INCORRECT** Find the price of each item
 - Please revisit the lesson: Find Each User's Most Recently Viewed Page for an Email Campaign.
B. **INCORRECT** Find the email address of each user
C. **TRY** Find the most expensive item per order
D. **CORRECT** Find the most recently viewed item


--------------------------------------------------------------
### Question 9
Let’s suppose we want to write a query to answer both of these questions:

* How many users have made a purchase?

* How many users do we have?

Please choose the best set of columns for a final query that would answer these questions:

* **Option A**
<pre><code>

Category

item_count
</code></pre>
* **Option B**
<pre><code>
Item_count

user_count

order count
</code></pre>
* **Option C**
<pre><code>
User_count

view_count

order_count
</code></pre>

* **CORRECT** **Option D**
<pre><code>
user_count

users_with_purchases
</code></pre>


& These are the best columns to answer those questions as they pertain specifically to users.

--------------------------------------------------------------
### Question 10
According to the methodology suggested in this module, which step comes first?



A. **CORRECT** Identify the question you are trying to answer
B. Determine what tables you need
C. Start building subqueries

#### Explanation
Plan first, then code.
