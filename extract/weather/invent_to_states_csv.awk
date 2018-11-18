# from http://cdiac.ess-dive.lbl.gov/ftp/ushcn_daily/data_format.txt
#                        Variable    Variable       Starting      Ending
#     Variable             type        width          column      column
#
#
#     STATE             Character        2               1           2
#     STCODE            Numeric          2               4           5
#     CNI               Numeric          4               6           9
#     STNAME            Character       30              11          40
#     LAT               Numeric          5              42          46
#     LON               Numeric          7              48          54
#     ELEV              Numeric          4              57          60
#     MOTMAX            Numeric          2              62          63
#     YRTMAX            Numeric          4              65          68
#     MOTMIN            Numeric          2              70          71
#     YRTMIN            Numeric          4              73          76
#     MOPRCP            Numeric          2              78          79
#     YRPRCP            Numeric          4              81          84
#     MOSNOW            Numeric          2              86          87
#     YRSNOW            Numeric          4              89          92
#     MOSNWD            Numeric          2              94          95
#     YRSNWD            Numeric          4              97         100

# example
# AL 011084 BREWTON 3SSE                   31.07  -87.05    85 01/1928 01/1928 01/1928 01/1928 01/1928

function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s)  { return rtrim(ltrim(s)); }
# BEGIN { FIELDWIDTHS = "2 1:2 4 1:30 1:5 1:7 2:4 *"; OFS = ","; ORS = "\n"; print "STATE,STCODE"}
BEGIN { FIELDWIDTHS = "2 1:2 4 1:30 1:5 1:7 2:4 *"; OFS = ","; ORS = "\n";}
{
    state = ltrim($1)
	stcode = ltrim($2)
	cni = ltrim($3)
	name = ltrim($4)
	lat = ltrim($5)
	long = ltrim($6)
	elev = ltrim($7)


	print state,stcode
}