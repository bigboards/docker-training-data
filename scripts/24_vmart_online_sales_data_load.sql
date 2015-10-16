load data
local
infile '/opt/training-src-data/data/online_sales_online_sales_fact.4.csv'
into table online_sales.online_sales_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;

