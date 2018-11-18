# from http://cdiac.ess-dive.lbl.gov/ftp/ushcn_daily/data_format.txt
# STAID        Character                 6              1           6
# DATTYP       Character                 4              8          11
# UNITS        Character                 2             12          13
# YEAR         Numeric                   4             14          17
# MON          Numeric                   2             18          19
# DAYS         Numeric                   2             21          22
# SF(1)        Alphanumeric              1             24          24
# VALUE(1)     Numeric                   4             25          28
# DMF(1)       Alphanumeric              1             29          29
# DQF(1)       Alphanumeric              1             30          30
# SF(2-31)     Alphanumeric              1              *           *
# VALUE(2-31)  Numeric                   4              *           *
# DMF(2-31)    Alphanumeric              1              *           *
# DQF(2-31)    Alphanumeric              1              *           *

# example
# 18469 TMIN F200112 31 0  39 0 0  35 0 0  35 0 0  39 0 0  41 0 0  42 0 0  43 0 0  51 0 0  46 0 0  40 0 0  44 0 0  45 0 0  49 0 0  56 0 0  31 0 0  32 0 0  50 0 0  45 0 0  29 0 0  26 0 0  22 0 0  23 0 0  26 0 0  23 0 0  16 0 0  11 0 0  11 0 0  15 0 0  23 0 0  18 0 0  18 0

function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s)  { return rtrim(ltrim(s)); }
BEGIN { FIELDWIDTHS = "6 1:4 2 4 2 1:2 2:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4 4:4"; OFS = ","; ORS = "\n"; print "STAID,DATTYP,UNITS,YEAR,MON,DAYS,VALUE1,VALUE2,VALUE3,VALUE4,VALUE5,VALUE6,VALUE7,VALUE8,VALUE9,VALUE10,VALUE11,VALUE12,VALUE13,VALUE14,VALUE15,VALUE16,VALUE17,VALUE18,VALUE19,VALUE20,VALUE21,VALUE22,VALUE23,VALUE24,VALUE25,VALUE26,VALUE27,VALUE28,VALUE29,VALUE30,VALUE31"}
{
	staid = ltrim($1)
	dattyp = ltrim($2)
	units = ltrim($3)
	year = ltrim($4)
	month = ltrim($5)
	days = ltrim($6)
	value1 = ltrim($7)
	value2 = ltrim($8)
	value3 = ltrim($9)
	value4 = ltrim($10)
	value5 = ltrim($11)
	value6 = ltrim($12)
	value7 = ltrim($13)
	value8 = ltrim($14)
	value9 = ltrim($15)
	value10 = ltrim($16)
	value11 = ltrim($17)
	value12 = ltrim($18)
	value13 = ltrim($19)
	value14 = ltrim($20)
	value15 = ltrim($21)
	value16 = ltrim($22)
	value17 = ltrim($23)
	value18 = ltrim($24)
	value19 = ltrim($25)
	value20 = ltrim($26)
	value21 = ltrim($27)
	value22 = ltrim($28)
	value23 = ltrim($29)
	value24 = ltrim($30)
	value25 = ltrim($31)
	value26 = ltrim($32)
	value27 = ltrim($33)
	value28 = ltrim($34)
	value29 = ltrim($35)
	value30 = ltrim($36)
	value31 = ltrim($37)

	print staid,dattyp,units,year,month,days,value1,value2,value3,value4,value5,value6,value7,value8,value9,value10,value11,value12,value13,value14,value15,value16,value17,value18,value19,value20,value21,value22,value23,value24,value25,value26,value27,value28,value29,value30,value31
}