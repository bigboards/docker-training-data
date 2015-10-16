load data
local
infile '/opt/training-src-data/data/public_inventory_fact.csv'
into table public.inventory_fact
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
