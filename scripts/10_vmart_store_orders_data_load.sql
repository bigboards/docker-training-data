load data
local
infile '/opt/training-src-data/data/store_store_orders_fact.csv'
into table store.store_orders_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
