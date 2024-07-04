-- Part 1
select * from expenses; -- to retrieve al data point 
select amount from expenses; -- to select only  specific column (amount)
SELECT * FROM expenses
WHERE date BETWEEN '2022-01-01' AND '2024-12-15'; -- to select data from the range of a particular date
 
 -- Part 2
SELECT *
FROM expenses
WHERE category = 'Other'; -- to find all expenses belonging to a specific category ("Other").
select *
from expenses
where Amount > 60; -- to find a expenses with amount greater than 60
select *
from expenses
where category = 'Entertainment' And Amount > 40; --  to find date meating a multiple condition/criteria
select *
from expenses
where category = "Entertainment" or category="Other" and Amount >50; -- to select expenses belonging to one category or another
select *
from expenses
where category != "other"; -- to display expenses unrelated to a particular category

-- Part 3
select *
from expenses
order by Amount DESC; -- displaying the query (Amount) in descending order
select *
from expenses
order by amount desc, category asc; -- sorting out expenses based on amount(descending) and category(ascending)

-- Part 4
CREATE TABLE Income (
income_id INT AUTO_INCREMENT PRIMARY KEY,
amount DECIMAL(10, 2) NOT NULL,
date DATE NOT NULL,
source VARCHAR(50) NOT NULL
);  -- creating a table named income with column for INcome_id (PK), amount, date_created, source and adding the NN attribute through the settings

alter table Income
add column category VARCHAR(50); -- adding a column of "category" using the alter table
alter table Income
drop column source; -- removing the column "source" using the alter table

drop table income; -- dropping a table using command "DROP TABLE table_name (income);
-- to use the "drop table", navigate and select the particular table to be deleted, 
-- then right click and select the DROP TABLE opiton from the drop down options.
