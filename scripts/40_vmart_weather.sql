load data
local
infile '/opt/training-src-data/data/ushcn_01/stations.csv'
into table weather.stations
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/ushcn_01/states.csv'
into table weather.states
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/data/ushcn_01/state01.csv'
into table weather.facts
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
