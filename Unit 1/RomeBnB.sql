-- To see which listing id's are most popular by neighborhood:

select
	neighbourhood,
	count(neighbourhood) zone_count
from 
	listings
group by neighbourhood
order by zone_count desc

-- Looking at price:

select
	name,
	neighbourhood,
	price
from
	listings
order by price desc

-- I was having trouble with the CSV file for the Date/Price file, (tried Slack and doing some research, as well as a couple
-- different versions of making a new database, etc).  I decided to remove that specific CSV file when I tried to edit it 
-- in a text editor, but the text editor shut down since it was too big.  Instead, I decided to group the neighborhoods and
-- find their average price, to figure out which neighborhoods were more cheap and which were more expensive:


select
	neighbourhood,
	avg(price)
from
	listings
group by neighbourhood

