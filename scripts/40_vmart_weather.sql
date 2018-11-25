load data
local
infile '/opt/training-src-data/ushcn_01/stations.csv'
into table weather.stations
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data
local
infile '/opt/training-src-data/ushcn_01/states.csv'
into table weather.states
character set 'UTF8'
columns terminated by ',' enclosed by '"'
lines terminated by '\n'
;
load data local infile '/opt/training-src-data/ushcn_01/state01.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state02.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state03.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state04.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state05.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state06.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state07.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state08.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state09.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state10.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state11.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state12.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state13.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state14.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state15.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state16.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state17.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state18.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state19.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state20.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state21.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state22.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state23.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state24.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state25.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state26.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state27.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state28.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state29.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state30.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state31.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state32.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state33.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state34.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state35.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state36.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state37.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state38.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state39.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state40.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state41.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state42.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state43.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state44.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state45.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state46.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state47.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';
load data local infile '/opt/training-src-data/ushcn_01/state48.csv' into table weather.facts character set 'UTF8' columns terminated by ',' enclosed by '"' lines terminated by '\n';

insert into weather.facts_2006
select * from weather.facts
where year = '2006'
;