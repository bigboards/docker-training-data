#!/usr/bin/env bash
[[ `uname` == 'Darwin' ]] && {
THIS_DIR=`dirname "$(greadlink -f "$0")"`
} || {
THIS_DIR=`dirname "$(readlink -f "$0")"`
}

TARGET="${THIS_DIR}/../../data/weather"
SRCPATH="ftp.ncdc.noaa.gov/pub/data/ushcn/daily"
SRC="ftp://${SRCPATH}"

echo "FROM=${SRC}"
echo "  TO=${TARGET}"

#wget -x -P $TARGET "${SRC}/README"
#wget -x -P $TARGET "${SRC}/invent.txt"
#wget -x -P $TARGET "${SRC}/ushcn_01.tar"
#wget -x -P $TARGET "${SRC}/ushcn_98.tar"

#mkdir -p "${TARGET}/${SRCPATH}/ushcn_01"
#tar -xvf "${TARGET}/${SRCPATH}/ushcn_01.tar" -C "${TARGET}/${SRCPATH}/ushcn_01"

#FILES="${TARGET}/${SRCPATH}/ushcn_01/*.Z"
#echo -n 'extracting '
#for f in $FILES
#do
#  echo -n '. '
#  gunzip $f
#done
#echo ' '
#
#FILES="${TARGET}/${SRCPATH}/ushcn_01/*"
#echo -n 'converting '
#for f in $FILES
#do
#  echo -n '. '
#  gawk -f to_csv.awk $f > $f.csv
#  rm $f
#done
#echo ' '

tar -cvzf "${TARGET}/${SRCPATH}/weather.tar.gz" -C "${TARGET}/${SRCPATH}" "ushcn_01/"
